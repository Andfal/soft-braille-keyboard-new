.class Lcom/vivo/speechsdk/module/net/http/HttpClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/net/http/HttpClient;->request(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/api/net/Req;

.field final synthetic b:Lcom/vivo/speechsdk/module/api/net/Callback;

.field final synthetic c:Lcom/vivo/speechsdk/module/net/http/HttpClient;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/http/HttpClient;Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->c:Lcom/vivo/speechsdk/module/net/http/HttpClient;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->b:Lcom/vivo/speechsdk/module/api/net/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ly2/Call;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->c:Lcom/vivo/speechsdk/module/net/http/HttpClient;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/http/HttpClient;->a(Lcom/vivo/speechsdk/module/net/http/HttpClient;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->b:Lcom/vivo/speechsdk/module/api/net/Callback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/vivo/speechsdk/module/api/net/Callback;->onFailure(Lcom/vivo/speechsdk/module/api/net/Req;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Ly2/Call;Ly2/Response;)V
    .locals 1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->c:Lcom/vivo/speechsdk/module/net/http/HttpClient;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/http/HttpClient;->a(Lcom/vivo/speechsdk/module/net/http/HttpClient;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->b:Lcom/vivo/speechsdk/module/api/net/Callback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/HttpClient$1;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    invoke-static {v0, p2}, Lcom/vivo/speechsdk/module/net/utils/b;->a(Lcom/vivo/speechsdk/module/api/net/Req;Ly2/Response;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/module/api/net/Callback;->onResponse(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Resp;)V

    :cond_0
    return-void
.end method
