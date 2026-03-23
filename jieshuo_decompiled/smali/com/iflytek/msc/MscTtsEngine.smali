.class public final Lcom/iflytek/msc/MscTtsEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/msc/imsc/IMscTtsEngine;


# static fields
.field private static final TAG:Ljava/lang/String; = "MscTtsEngine"

.field private static final TIMEOUT:I = 0x7d0


# instance fields
.field private volatile mAbortTTS:Z

.field private mAppid:Ljava/lang/String;

.field private mErrorCode:I

.field private volatile mInitOK:Z

.field private mMscConfig:Lcom/iflytek/msc/TtsMscConfig;

.field private final mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

.field private mServerUrl:Ljava/lang/String;

.field private mSessionId:[C

.field private volatile mStopTTS:Z

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mStopTTS:Z

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/msc/TtsMscConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x7d0

    invoke-virtual {p1}, Lcom/iflytek/msc/TtsMscConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/msc/MscTtsEngine;-><init>(Ljava/lang/String;ILcom/iflytek/msc/TtsMscConfig;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/iflytek/msc/TtsMscConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mStopTTS:Z

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    iput-object p1, p0, Lcom/iflytek/msc/MscTtsEngine;->mAppid:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/msc/MscTtsEngine;->mTimeout:I

    iput-object p3, p0, Lcom/iflytek/msc/MscTtsEngine;->mMscConfig:Lcom/iflytek/msc/TtsMscConfig;

    iput-object p4, p0, Lcom/iflytek/msc/MscTtsEngine;->mServerUrl:Ljava/lang/String;

    invoke-virtual {p3, p5}, Lcom/iflytek/msc/MscConfig;->setDownloadFromID(Ljava/lang/String;)V

    return-void
.end method

.method private getAudioParamAsInt(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MscTtsEngine"

    const-string v0, "tag is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/msc/MscTtsEngine;->getAudioParamImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private getAudioParamImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mSessionId:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, v1}, Lcom/iflytek/msc/MSC;->QTTSGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getTrafficFlow(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/iflytek/msc/MscTtsEngine;->getAudioParamAsInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " getTrafficFlow ==="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "MscTtsEngine"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private logout()V
    .locals 3

    iget-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/msc/MSC;->logout()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logout result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "MscTtsEngine"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    :cond_0
    return-void
.end method

.method private qttsAudioGet(Lcom/iflytek/msc/imsc/IMscTtsListener;)Z
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mStopTTS:Z

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1, v0}, Lcom/iflytek/msc/MSCSessionInfo;->setQttsSynthStatus(I)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mStopTTS:Z

    const/4 v2, 0x2

    const-string v3, "MscTtsEngine"

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsSynthStatus()I

    move-result v1

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mSessionId:[C

    iget-object v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2}, Lcom/iflytek/msc/MSC;->QTTSAudioGet([CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mStopTTS:Z

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Lcom/iflytek/msc/imsc/IMscTtsListener;->onAudioGet([B)Z

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qttsAudioGet: QttsSynthStatus:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v4}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsSynthStatus()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", QttsErrCode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v4}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p1, v0, v0}, Lcom/iflytek/msc/imsc/IMscTtsListener;->onLastTrafficFlow(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qttsAudioGet: status="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsSynthStatus()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", err="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {p1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsSynthStatus()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {p1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result p1

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private qttsSessEnd()Z
    .locals 5

    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mSessionId:[C

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "QTTSSessionEnd into"

    const-string v1, "MscTtsEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mSessionId:[C

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/msc/MSC;->QTTSSessionEnd([C[B)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QTTSSessionEnd Error Code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "QTTSSessionEnd end"

    :goto_0
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mSessionId:[C

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private qttsTextPut(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GB2312"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mSessionId:[C

    invoke-static {v0, p1}, Lcom/iflytek/msc/MSC;->QTTSTextPut([C[B)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QTTSTextPut Ret Code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MscTtsEngine"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0, p1}, Lcom/iflytek/msc/MSCSessionInfo;->setErrorCode(I)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 5

    const-string v0, "destroy..."

    const-string v1, "MscTtsEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mStopTTS:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    invoke-direct {p0}, Lcom/iflytek/msc/MscTtsEngine;->logout()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/iflytek/msc/MscTtsEngine;->mSessionId:[C

    if-eqz v3, :cond_0

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    const-string v3, "destroy wait ok."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    const-string v0, "QTTSFini begin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/msc/MSC;->QTTSFini()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QTTSFini Error Code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "QTTSFini end"

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getAudioCed()I
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "ced\u0000"

    invoke-direct {p0, v0}, Lcom/iflytek/msc/MscTtsEngine;->getAudioParamAsInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudioSid()Ljava/lang/String;
    .locals 1

    const-string v0, "sid\u0000"

    invoke-direct {p0, v0}, Lcom/iflytek/msc/MscTtsEngine;->getAudioParamImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mMscConfig:Lcom/iflytek/msc/TtsMscConfig;

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mAppid:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mTimeout:I

    iget-object v3, p0, Lcom/iflytek/msc/MscTtsEngine;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/msc/MscConfig;->getInitParam(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MscTtsEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->login([BZ)I

    move-result v0

    iput v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mErrorCode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSClogin Err = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/iflytek/msc/MscTtsEngine;->mErrorCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mErrorCode:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    :cond_0
    return-void
.end method

.method public reInit()V
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/MscTtsEngine;->destroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    invoke-direct {p0}, Lcom/iflytek/msc/MscTtsEngine;->logout()V

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/msc/MscTtsEngine;->init()V

    return-void
.end method

.method public setParam(Lcom/iflytek/msc/TtsMscConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x7d0

    invoke-virtual {p1}, Lcom/iflytek/msc/TtsMscConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/msc/MscTtsEngine;->setParam(Ljava/lang/String;ILcom/iflytek/msc/TtsMscConfig;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;ILcom/iflytek/msc/TtsMscConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscTtsEngine;->mAppid:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/msc/MscTtsEngine;->mTimeout:I

    iput-object p3, p0, Lcom/iflytek/msc/MscTtsEngine;->mMscConfig:Lcom/iflytek/msc/TtsMscConfig;

    iput-object p4, p0, Lcom/iflytek/msc/MscTtsEngine;->mServerUrl:Ljava/lang/String;

    invoke-virtual {p3, p5}, Lcom/iflytek/msc/MscConfig;->setDownloadFromID(Ljava/lang/String;)V

    return-void
.end method

.method public speak(Ljava/lang/String;Lcom/iflytek/msc/imsc/IMscTtsListener;I)I
    .locals 7

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x0

    :try_start_1
    iput-boolean p3, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    iget-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mMscConfig:Lcom/iflytek/msc/TtsMscConfig;

    if-nez v0, :cond_0

    const-string v0, "MscTtsEngine"

    const-string v2, "QTTSInit config null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mAppid:Ljava/lang/String;

    iget v3, p0, Lcom/iflytek/msc/MscTtsEngine;->mTimeout:I

    iget-object v4, p0, Lcom/iflytek/msc/MscTtsEngine;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/iflytek/msc/MscConfig;->getInitParam(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QTTSInit params = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MscTtsEngine"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QTTSInit([B)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MscTtsEngine"

    const-string v2, "QTTSInit end "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QTTSInit error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "MscTtsEngine"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mInitOK:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mMscConfig:Lcom/iflytek/msc/TtsMscConfig;

    iget-object v3, p0, Lcom/iflytek/msc/MscTtsEngine;->mAppid:Ljava/lang/String;

    iget v4, p0, Lcom/iflytek/msc/MscTtsEngine;->mTimeout:I

    const/16 v5, 0xfa0

    const/16 v6, 0x3e80

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/iflytek/msc/TtsMscConfig;->getSessionParam(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",ssm=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QTTSSessionBegin params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MscTtsEngine"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v2}, Lcom/iflytek/msc/MSC;->QTTSSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mSessionId:[C

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "MscTtsEngine"

    const-string v2, "QTTSSessionBegin end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QTTSSessionBegin Error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MscTtsEngine"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/16 v0, -0x400

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    if-eqz v1, :cond_6

    goto :goto_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/iflytek/msc/MscTtsEngine;->qttsTextPut(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-direct {p0, p2}, Lcom/iflytek/msc/MscTtsEngine;->qttsAudioGet(Lcom/iflytek/msc/imsc/IMscTtsListener;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {p1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result p1

    iget-boolean p3, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    if-eqz p3, :cond_9

    const/16 p3, -0x400

    goto :goto_3

    :cond_9
    move p3, p1

    :goto_3
    const-string p1, "get audio from engine failed."

    invoke-interface {p2, p1}, Lcom/iflytek/msc/imsc/IMscTtsListener;->onError(Ljava/lang/String;)V

    :goto_4
    const-string p1, "downflow\u0000"

    invoke-direct {p0, p1}, Lcom/iflytek/msc/MscTtsEngine;->getTrafficFlow(Ljava/lang/String;)I

    const-string p1, "upflow\u0000"

    invoke-direct {p0, p1}, Lcom/iflytek/msc/MscTtsEngine;->getTrafficFlow(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iflytek/msc/MscTtsEngine;->qttsSessEnd()Z

    goto :goto_a

    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {p1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result p1

    iget-boolean p3, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    if-eqz p3, :cond_b

    goto :goto_6

    :cond_b
    move v0, p1

    :goto_6
    invoke-direct {p0}, Lcom/iflytek/msc/MscTtsEngine;->qttsSessEnd()Z

    const-string p1, "put text into engine failed."

    goto :goto_9

    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/iflytek/msc/MscTtsEngine;->mQttsQisrOut:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {p1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result p1

    iget-boolean p3, p0, Lcom/iflytek/msc/MscTtsEngine;->mAbortTTS:Z

    if-eqz p3, :cond_d

    goto :goto_8

    :cond_d
    move v0, p1

    :goto_8
    invoke-direct {p0}, Lcom/iflytek/msc/MscTtsEngine;->qttsSessEnd()Z

    const-string p1, "initialize engine failed."

    :goto_9
    invoke-interface {p2, p1}, Lcom/iflytek/msc/imsc/IMscTtsListener;->onError(Ljava/lang/String;)V

    move p3, v0

    :goto_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .locals 2

    const-string v0, "MscTtsEngine"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/MscTtsEngine;->mStopTTS:Z

    return-void
.end method
