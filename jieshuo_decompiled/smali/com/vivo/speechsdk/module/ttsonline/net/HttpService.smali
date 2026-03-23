.class public Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$IDownloadListener;,
        Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_SIZE:I = 0x1000

.field private static final STATE_DOWNLOAD:I = 0x1

.field private static final STATE_INITED:I = 0x4

.field private static final STATE_STOPPED:I = 0x2

.field private static final STATE_UNSTART:I = 0x0

.field private static final STATUS_DESTORY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HttpService"


# instance fields
.field private mHttpClient:Lcom/vivo/speechsdk/module/api/net/IHttp;

.field private final mNetFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

.field private mOutListener:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

.field private mResponse:Lcom/vivo/speechsdk/module/api/net/Resp;

.field private volatile mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vivo/speechsdk/module/api/net/INetFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mNetFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mResponse:Lcom/vivo/speechsdk/module/api/net/Resp;

    return-object p0
.end method

.method static synthetic access$002(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Lcom/vivo/speechsdk/module/api/net/Resp;)Lcom/vivo/speechsdk/module/api/net/Resp;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mResponse:Lcom/vivo/speechsdk/module/api/net/Resp;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/net/Resp;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->request(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->handleCode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->handleError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mOutListener:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;JJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->getProgress(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Ljava/lang/String;Ljava/io/InputStream;Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$IDownloadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->downloadAudioFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$IDownloadListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->isStopped()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->setState(I)V

    return-void
.end method

.method private downloadAudioFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$IDownloadListener;)V
    .locals 5

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_2
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->isStopped()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p1, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v3, v4

    if-eqz p3, :cond_2

    invoke-interface {p3, v3}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$IDownloadListener;->onDownload(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_5

    invoke-static {v2}, Lcom/vivo/speechsdk/common/utils/FileUtils;->setFolderPermission(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p2, p1

    goto :goto_4

    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->isStopped()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "HttpService"

    const-string p3, "error "

    invoke-static {p2, p3, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mOutListener:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    if-eqz p1, :cond_4

    const-string p2, "download failed"

    const p3, 0x9d0a

    invoke-interface {p1, p3, p2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    move-object p1, v1

    :cond_5
    :goto_3
    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p2

    :goto_4
    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method private getProgress(JJ)I
    .locals 2

    long-to-double p3, p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p3, p3, v0

    long-to-double p1, p1

    div-double/2addr p3, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double p3, p3, p1

    double-to-int p1, p3

    return p1
.end method

.method private handleCode(I)V
    .locals 3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mOutListener:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http request failed code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x9d08

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "HttpService"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request audio error | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errorResult"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errorMsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mOutListener:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2, v1}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read response json failed | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mOutListener:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    if-eqz p1, :cond_1

    const v0, 0x9d0b

    const-string v1, "read response fail"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mOutListener:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    if-eqz p1, :cond_1

    const v0, 0x9d09

    const-string v1, "response json is null"

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private isStopped()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private request(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/net/Resp;
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mNetFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createHttpClient()Lcom/vivo/speechsdk/module/api/net/IHttp;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mHttpClient:Lcom/vivo/speechsdk/module/api/net/IHttp;

    new-instance v0, Lcom/vivo/speechsdk/module/api/net/ReqBody;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/net/Protocol;->getHttpParams(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/json; charset=utf-8"

    invoke-direct {v0, v3, v2}, Lcom/vivo/speechsdk/module/api/net/ReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_server_url"

    const-string v3, "https://vivotrans.vivo.com.cn/fy/tts"

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    invoke-direct {v2}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->url(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    const/16 v2, 0x3ed

    invoke-virtual {p1, v2}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->respType(I)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->post(Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->build()Lcom/vivo/speechsdk/module/api/net/Req;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mHttpClient:Lcom/vivo/speechsdk/module/api/net/IHttp;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/net/IHttp;->request(Lcom/vivo/speechsdk/module/api/net/Req;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized setState(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "HttpService"

    const-string v1, "user destory "

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->setState(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mHttpClient:Lcom/vivo/speechsdk/module/api/net/IHttp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/IHttp;->cancel()V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mHttpClient:Lcom/vivo/speechsdk/module/api/net/IHttp;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mResponse:Lcom/vivo/speechsdk/module/api/net/Resp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/net/Resp;->close()V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mResponse:Lcom/vivo/speechsdk/module/api/net/Resp;

    :cond_1
    return-void
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDestroy()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInit()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mOutListener:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->setState(I)V

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/a;->a()Lcom/vivo/speechsdk/common/thread/a;

    move-result-object p2

    new-instance v0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;

    invoke-direct {v0, p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;-><init>(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/common/thread/a;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "HttpService"

    const-string v1, "user stoped "

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->setState(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mHttpClient:Lcom/vivo/speechsdk/module/api/net/IHttp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/IHttp;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->mResponse:Lcom/vivo/speechsdk/module/api/net/Resp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/net/Resp;->close()V

    :cond_1
    return-void
.end method
