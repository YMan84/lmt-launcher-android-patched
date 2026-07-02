.class public Lcom/noname81/lmt/RootContext;
.super Ljava/lang/Object;
.source "RootContext.java"


# static fields
.field private static DEBUG:Z = false

.field private static final PREFIX:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "LMT::RootContext"

.field private static instance:Lcom/noname81/lmt/RootContext; = null

.field private static returnBuffer:[B = null

.field private static returnBufferSize:I = 0x200


# instance fields
.field private mAbsolutePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mRemoteInputStream:Ljava/io/DataInputStream;

.field private mRemoteOutputStream:Ljava/io/DataOutputStream;

.field private mRemoteProcess:Ljava/lang/Process;

.field private mRootInputStream:Ljava/io/DataInputStream;

.field private mRootOutputStream:Ljava/io/DataOutputStream;

.field private mRootProcess:Ljava/lang/Process;

.field private mShell:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 39
    sput-object v0, Lcom/noname81/lmt/RootContext;->returnBuffer:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/noname81/lmt/RootContext;->mInitialized:Z

    .line 54
    :try_start_0
    iput-object p1, p0, Lcom/noname81/lmt/RootContext;->mContext:Landroid/content/Context;

    const-string v1, "su"

    .line 55
    iput-object v1, p0, Lcom/noname81/lmt/RootContext;->mShell:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/noname81/lmt/RootContext;->mAbsolutePath:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRemote()V

    .line 58
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRoot()V

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/noname81/lmt/RootContext;->mInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :goto_0
    iget-boolean v1, p0, Lcom/noname81/lmt/RootContext;->mInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "Failed to get root permissions!"

    .line 64
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "LMT::RootContext"

    .line 65
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private copyRemote()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::RootContext"

    const-string v1, "copyRemote()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1

    const-string v0, "InputContext34.jar"

    goto :goto_0

    .line 112
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    const-string v0, "InputContext29.jar"

    goto :goto_0

    .line 114
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    const-string v0, "InputContext28.jar"

    goto :goto_0

    .line 116
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    const-string v0, "InputContext24.jar"

    goto :goto_0

    .line 118
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_5

    const-string v0, "InputContext21.jar"

    goto :goto_0

    :cond_5
    const-string v0, "InputContext20.jar"

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/noname81/lmt/RootContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/noname81/lmt/RootContext;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/InputContext.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 134
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x0

    .line 135
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 137
    :cond_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 138
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;
    .locals 2

    .line 70
    sget-object v0, Lcom/noname81/lmt/RootContext;->instance:Lcom/noname81/lmt/RootContext;

    if-nez v0, :cond_1

    .line 71
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::RootContext"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    new-instance v0, Lcom/noname81/lmt/RootContext;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/RootContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noname81/lmt/RootContext;->instance:Lcom/noname81/lmt/RootContext;

    .line 74
    :cond_1
    sget-object p0, Lcom/noname81/lmt/RootContext;->instance:Lcom/noname81/lmt/RootContext;

    return-object p0
.end method

.method private getReturnString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 6

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 279
    sget-object v2, Lcom/noname81/lmt/RootContext;->returnBuffer:[B

    sget v3, Lcom/noname81/lmt/RootContext;->returnBufferSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/noname81/lmt/RootContext;->returnBuffer:[B

    invoke-direct {v3, v5, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command returned: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::RootContext"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p1
.end method

.method private initRemote()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::RootContext"

    const-string v1, "initRemote()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRemoteStreams()V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRemoteProcess23()V

    goto :goto_0

    .line 98
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRemoteProcess21()V

    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRemoteProcess20()V

    :goto_0
    return-void
.end method

.method private initRemoteProcess20()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::RootContext"

    const-string v1, "initRemoteProcess20()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "ASCII"

    if-lt v0, v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    const-string v1, "sh\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "export CLASSPATH="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/noname81/lmt/RootContext;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/InputContext.jar\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 173
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "exec app_process "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/noname81/lmt/RootContext;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " com.noname81.lmt.InputContext \"$@\"\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method private initRemoteProcess21()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::RootContext"

    const-string v1, "initRemoteProcess21()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "export CLASSPATH="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/noname81/lmt/RootContext;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/InputContext.jar\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 198
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "exec app_process "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/noname81/lmt/RootContext;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " com.noname81.lmt.InputContext\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 199
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method private initRemoteProcess23()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::RootContext"

    const-string v1, "initRemoteProcess23()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    const-string v1, "supolicy --live \'allow qti_init_shell zygote_exec file execute\'\n"

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 207
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "export CLASSPATH="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/noname81/lmt/RootContext;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/InputContext.jar\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 208
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "exec app_process "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/noname81/lmt/RootContext;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " com.noname81.lmt.InputContext\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 209
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method private initRemoteStreams()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::RootContext"

    const-string v1, "initRemoteStreams()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteInputStream:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteProcess:Ljava/lang/Process;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    .line 151
    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteInputStream:Ljava/io/DataInputStream;

    .line 152
    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteProcess:Ljava/lang/Process;

    .line 156
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->copyRemote()V

    .line 159
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/noname81/lmt/RootContext;->mShell:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteProcess:Ljava/lang/Process;

    .line 160
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/noname81/lmt/RootContext;->mRemoteProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    .line 161
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/noname81/lmt/RootContext;->mRemoteProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRemoteInputStream:Ljava/io/DataInputStream;

    return-void
.end method

.method private initRoot()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::RootContext"

    const-string v1, "initRoot()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRootOutputStream:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRootInputStream:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/RootContext;->mRootProcess:Ljava/lang/Process;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/noname81/lmt/RootContext;->mShell:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRootProcess:Ljava/lang/Process;

    .line 222
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/noname81/lmt/RootContext;->mRootProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRootOutputStream:Ljava/io/DataOutputStream;

    .line 223
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/noname81/lmt/RootContext;->mRootProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/noname81/lmt/RootContext;->mRootInputStream:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method isRootAvailable(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 78
    iget-boolean p1, p0, Lcom/noname81/lmt/RootContext;->mInitialized:Z

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/noname81/lmt/RootContext;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "This feature needs root permissions!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "LMT::RootContext"

    .line 80
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-boolean p1, p0, Lcom/noname81/lmt/RootContext;->mInitialized:Z

    return p1
.end method

.method runCommandRemote(Ljava/lang/String;Z)Z
    .locals 3

    .line 227
    sget-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    const-string v1, "LMT::RootContext"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "runCommandRemote("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    invoke-virtual {p0, p2}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 231
    :cond_1
    iget-object p2, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    if-nez p2, :cond_2

    return v0

    .line 234
    :cond_2
    iget-object p2, p0, Lcom/noname81/lmt/RootContext;->mRemoteInputStream:Ljava/io/DataInputStream;

    invoke-direct {p0, p2}, Lcom/noname81/lmt/RootContext;->getReturnString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "quit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRemote()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 238
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    :cond_3
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 245
    iget-object p1, p0, Lcom/noname81/lmt/RootContext;->mRemoteOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 248
    :catch_1
    :try_start_2
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRemote()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Failed to write remote command!"

    .line 251
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method runCommandRemoteResult(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "LMT::RootContext"

    const-string v1, "Command returned: "

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    :try_start_0
    iget-object p1, p0, Lcom/noname81/lmt/RootContext;->mRemoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 262
    sget-boolean p2, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Failed to read  from remote!"

    .line 266
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method runCommandResult(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const-string v0, "Command returned: "

    .line 314
    sget-boolean v1, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    const-string v2, "LMT::RootContext"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "runCommandResult("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/noname81/lmt/RootContext;->mShell:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p2, "sh"

    :goto_0
    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-direct {v1, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p2

    .line 318
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 319
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ASCII"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 323
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 324
    invoke-virtual {p2}, Ljava/lang/Process;->waitFor()I

    .line 326
    invoke-direct {p0, v3}, Lcom/noname81/lmt/RootContext;->getReturnString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p1

    .line 327
    sget-boolean v1, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 330
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Failed to write command!"

    .line 335
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method runCommandRoot(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, ""

    .line 296
    sget-boolean v1, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    const-string v2, "LMT::RootContext"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "runCommandRoot("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    invoke-virtual {p0, p2}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 299
    :cond_1
    iget-object p2, p0, Lcom/noname81/lmt/RootContext;->mRootOutputStream:Ljava/io/DataOutputStream;

    if-nez p2, :cond_2

    return-void

    .line 301
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 302
    iget-object p1, p0, Lcom/noname81/lmt/RootContext;->mRootOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lcom/noname81/lmt/RootContext;->initRoot()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Failed to write root command!"

    .line 308
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setDebug(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    sput-boolean v0, Lcom/noname81/lmt/RootContext;->DEBUG:Z

    return-void
.end method

.method setInitialized(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/noname81/lmt/RootContext;->mInitialized:Z

    return-void
.end method
