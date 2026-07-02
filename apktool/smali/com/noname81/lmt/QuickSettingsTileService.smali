.class public Lcom/noname81/lmt/QuickSettingsTileService;
.super Landroid/service/quicksettings/TileService;
.source "QuickSettingsTileService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private updateTileState(I)V
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Lcom/noname81/lmt/QuickSettingsTileService;)Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0, p1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;I)V

    .line 59
    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 44
    invoke-static {p0}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->getServiceState()I

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->startService()V

    const/4 v0, 0x2

    .line 47
    invoke-direct {p0, v0}, Lcom/noname81/lmt/QuickSettingsTileService;->updateTileState(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->stopService()V

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v0}, Lcom/noname81/lmt/QuickSettingsTileService;->updateTileState(I)V

    :goto_0
    return-void
.end method

.method public onStartListening()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 31
    invoke-static {p0}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->getServiceState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, v0}, Lcom/noname81/lmt/QuickSettingsTileService;->updateTileState(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 36
    invoke-direct {p0, v0}, Lcom/noname81/lmt/QuickSettingsTileService;->updateTileState(I)V

    :goto_0
    return-void
.end method
