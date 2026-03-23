.class public Lcom/vivo/speechsdk/module/net/http/HttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/IHttp;


# static fields
.field private static final d:Ljava/lang/String; = "HttpClient"


# instance fields
.field private a:Ly2/OkHttpClient;

.field private b:Ly2/Call;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/vivo/speechsdk/module/api/net/Req;",
            "Ly2/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly2/OkHttpClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->b:Ly2/Call;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->a:Ly2/OkHttpClient;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/http/HttpClient;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->c:Ljava/util/Map;

    return-object p0
.end method

.method private a(Ly2/Call;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ly2/Call;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HttpClient"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ly2/Call;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->b:Ly2/Call;

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/net/http/HttpClient;->a(Ly2/Call;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->b:Ly2/Call;

    return-void
.end method

.method public cancel(Lcom/vivo/speechsdk/module/api/net/Req;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly2/Call;

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/http/HttpClient;->a(Ly2/Call;)V

    return-void
.end method

.method public request(Lcom/vivo/speechsdk/module/api/net/Req;)Lcom/vivo/speechsdk/module/api/net/Resp;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->a:Ly2/OkHttpClient;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/utils/b;->a(Lcom/vivo/speechsdk/module/api/net/Req;)Ly2/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly2/OkHttpClient;->z(Ly2/Request;)Ly2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->b:Ly2/Call;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->b:Ly2/Call;

    invoke-interface {v0}, Ly2/Call;->execute()Ly2/Response;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/module/net/utils/b;->a(Lcom/vivo/speechsdk/module/api/net/Req;Ly2/Response;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request failed | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpClient"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public request(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->a:Ly2/OkHttpClient;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/utils/b;->a(Lcom/vivo/speechsdk/module/api/net/Req;)Ly2/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly2/OkHttpClient;->z(Ly2/Request;)Ly2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->b:Ly2/Call;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient;->b:Ly2/Call;

    new-instance v1, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;-><init>(Lcom/vivo/speechsdk/module/net/http/HttpClient;Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Callback;)V

    invoke-interface {v0, v1}, Ly2/Call;->b(Ly2/e;)V

    :cond_0
    return-void
.end method
