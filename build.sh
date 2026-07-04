#!/usr/bin/env bash
#
# Rebuild + sign the patched LMT APK.
#
# Reads keystore credentials from key.properties (Android Gradle format):
#   storeFile=...
#   storePassword=...
#   keyAlias=...
#   keyPassword=...
#
# Usage:
#   ./build.sh                 # build + sign with current VERSION
#   ./build.sh bump            # increment VERSION, then build + sign
#   ./build.sh install         # build, then `adb install -r` the result
#   ./build.sh logcat          # build, install, then tail logcat for the package
#   ./build.sh bump install    # bump version, build, install
#
set -euo pipefail

# Parse args: "bump" is a flag, "install"/"logcat" selects post-build action.
BUMP=false
ACTION=""
for arg in "$@"; do
  case "${arg}" in
    bump)   BUMP=true ;;
    install|logcat) ACTION="${arg}" ;;
    *) echo "error: unknown argument '${arg}'" >&2; exit 1 ;;
  esac
done

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APKTOOL_DIR="${REPO_ROOT}/apktool"
KEYSTORE_DIR="${REPO_ROOT}/keystore"
KEYSTORE="${KEYSTORE_DIR}/release-keystore.jks"
KEY_PROPS="${KEYSTORE_DIR}/key.properties"

BUILD_TOOLS="$HOME/Android/Sdk/build-tools/37.0.0"
ZIPALIGN="${BUILD_TOOLS}/zipalign"
APKSIGNER="${BUILD_TOOLS}/apksigner"

DIST_DIR="$HOME/Syncthing/APKs"
VERSION_FILE="${REPO_ROOT}/VERSION"

# --- version handling ------------------------------------------------------
# Reads VERSION (e.g. "3.8"). On bump, increments the minor component
# (3.8 -> 3.9), writes it back to VERSION, and patches apktool.yml +
# SettingsValues.smali. Without bump, uses the current VERSION as-is.
if [[ ! -f "${VERSION_FILE}" ]]; then
  echo "error: VERSION file not found at ${VERSION_FILE}" >&2
  exit 1
fi
VERSION="$(tr -d '[:space:]' < "${VERSION_FILE}")"
MAJOR="${VERSION%%.*}"
MINOR="${VERSION##*.}"
if [[ ! "${MAJOR}" =~ ^[0-9]+$ || ! "${MINOR}" =~ ^[0-9]+$ ]]; then
  echo "error: VERSION file contains '${VERSION}', expected 'MAJOR.MINOR' (integers)" >&2
  exit 1
fi
NEW_VERSION="${VERSION}"
if $BUMP; then
  NEW_MINOR=$((MINOR + 1))
  NEW_VERSION="${MAJOR}.${NEW_MINOR}"
  echo "${NEW_VERSION}" > "${VERSION_FILE}"
  echo "==> version: ${VERSION} -> ${NEW_VERSION}"
else
  echo "==> version: ${NEW_VERSION} (no bump)"
fi

# --- sync versionInfo into apktool.yml -------------------------------------
# versionCode = major*1000 + minor*100  (3.4 -> 3400, 3.5 -> 3500, …)
NEW_VCODE=$((MAJOR * 1000 + MINOR * 100))
if $BUMP; then
  NEW_VCODE=$((MAJOR * 1000 + NEW_MINOR * 100))
fi
APKTOOL_YML="${APKTOOL_DIR}/apktool.yml"
sed -i \
  -e "s/^  versionCode: .*/  versionCode: ${NEW_VCODE}/" \
  -e "s/^  versionName: .*/  versionName: ${NEW_VERSION}/" \
  "${APKTOOL_YML}"
echo "==> apktool.yml versionInfo -> versionCode: ${NEW_VCODE}, versionName: ${NEW_VERSION}"

# --- sync in-app version string in SettingsValues.smali --------------------
# The Info tab displays "LMT " + getVersion() + " by noname81…".
# getVersion() returns a hardcoded "v3.4" string; patch it to match.
SETTINGSVALUES_SMALI="${APKTOOL_DIR}/smali/com/noname81/lmt/SettingsValues.smali"
sed -i \
  "s|const-string v0, \"v[0-9.]*\"|const-string v0, \"v${NEW_VERSION}\"|" \
  "${SETTINGSVALUES_SMALI}"
echo "==> SettingsValues.getVersion() -> v${NEW_VERSION}"

OUT_APK="${DIST_DIR}/LMT-Launcher-v${NEW_VERSION}.apk"
TMP_DIR=$(mktemp -d)
trap 'rm -rf "${TMP_DIR}"' EXIT

# --- locate key.properties ---------------------------------------------------
if [[ ! -f "${KEY_PROPS}" ]]; then
  echo "error: key.properties not found at ${KEY_PROPS}" >&2
  exit 1
fi

# Parse key.properties (shell-safe: only KEY=VALUE lines, no spaces in values
# expected; trim CR).
declare -a PROP_ARGS=()
while IFS='=' read -r key value; do
  # skip blank / comment lines
  [[ -z "${key}" || "${key}" =~ ^[[:space:]]*# ]] && continue
  value="${value%$'\r'}"
  case "${key}" in
    storeFile)      PROP_STOREFILE="${value}" ;;
    storePassword)  PROP_STOREPASS="${value}" ;;
    keyAlias)       PROP_KEYALIAS="${value}" ;;
    keyPassword)    PROP_KEYPASS="${value}" ;;
  esac
done < "${KEY_PROPS}"

# storeFile in key.properties is relative to the keystore dir; resolve it.
if [[ ! -f "${KEYSTORE}" && -n "${PROP_STOREFILE}" ]]; then
  if [[ "${PROP_STOREFILE}" != /* ]]; then
    KEYSTORE="${KEYSTORE_DIR}/${PROP_STOREFILE}"
  else
    KEYSTORE="${PROP_STOREFILE}"
  fi
fi
if [[ ! -f "${KEYSTORE}" ]]; then
  echo "error: keystore not found: ${KEYSTORE}" >&2
  exit 1
fi
: "${PROP_STOREPASS:?storePassword missing in ${KEY_PROPS}}"
: "${PROP_KEYALIAS:?keyAlias missing in ${KEY_PROPS}}"
: "${PROP_KEYPASS:?keyPassword missing in ${KEY_PROPS}}"

mkdir -p "${DIST_DIR}"

# --- 1. apktool build --------------------------------------------------------
echo "==> apktool b ${APKTOOL_DIR}"
apktool b "${APKTOOL_DIR}" -o "${TMP_DIR}/LMT_unsigned.apk" -f

# --- 2. zipalign -------------------------------------------------------------
echo "==> zipalign"
"${ZIPALIGN}" -p -f 4 "${TMP_DIR}/LMT_unsigned.apk" "${TMP_DIR}/LMT_aligned.apk"

# --- 3. apksigner sign -------------------------------------------------------
echo "==> apksigner sign (keystore: ${KEYSTORE}, alias: ${PROP_KEYALIAS})"
"${APKSIGNER}" sign \
  --ks "${KEYSTORE}" \
  --ks-pass "pass:${PROP_STOREPASS}" \
  --ks-key-alias "${PROP_KEYALIAS}" \
  --key-pass "pass:${PROP_KEYPASS}" \
  --out "${OUT_APK}" \
  "${TMP_DIR}/LMT_aligned.apk"

# --- 4. verify ---------------------------------------------------------------
echo "==> apksigner verify"
"${APKSIGNER}" verify --print-certs "${OUT_APK}" | head -5

echo
echo "Done: ${OUT_APK}"
ls -lh "${OUT_APK}"

# --- optional: install + logcat ---------------------------------------------
if [[ "${ACTION}" == "install" || "${ACTION}" == "logcat" ]]; then
  echo
  echo "==> adb install -r ${OUT_APK}"
  adb install -r "${OUT_APK}"
fi

if [[ "${ACTION}" == "logcat" ]]; then
  echo
  echo "==> adb logcat (Ctrl-C to stop)"
  adb logcat -c
  timeout 30 adb logcat '*:E' 'System.err:V' 'com.noname81.lmt:V' || true
fi
