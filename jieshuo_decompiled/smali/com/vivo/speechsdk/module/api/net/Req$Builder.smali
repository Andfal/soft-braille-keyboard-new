.class public Lcom/vivo/speechsdk/module/api/net/Req$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/api/net/Req;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/vivo/speechsdk/module/api/net/ReqBody;

.field e:I

.field f:Z

.field g:Z

.field h:Z

.field i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->c:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/vivo/speechsdk/module/api/net/Req;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Req;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Req;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Req;->d:Lcom/vivo/speechsdk/module/api/net/ReqBody;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->d:Lcom/vivo/speechsdk/module/api/net/ReqBody;

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Req;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->c:Ljava/util/Map;

    iget v0, p1, Lcom/vivo/speechsdk/module/api/net/Req;->e:I

    iput v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->e:I

    iget-boolean p1, p1, Lcom/vivo/speechsdk/module/api/net/Req;->h:Z

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->h:Z

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/vivo/speechsdk/module/api/net/Req;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/api/net/Req;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/api/net/Req;-><init>(Lcom/vivo/speechsdk/module/api/net/Req$Builder;)V

    return-object v0
.end method

.method public cacheEnable(Z)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->f:Z

    return-object p0
.end method

.method public delete(Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 1

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->method(Ljava/lang/String;Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    return-object p1
.end method

.method public get()Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->method(Ljava/lang/String;Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->method(Ljava/lang/String;Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->d:Lcom/vivo/speechsdk/module/api/net/ReqBody;

    return-object p0
.end method

.method public patch(Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->method(Ljava/lang/String;Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    return-object p1
.end method

.method public pingInterval(I)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->i:I

    return-object p0
.end method

.method public post(Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->method(Ljava/lang/String;Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    return-object p1
.end method

.method public preload(Z)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->h:Z

    return-object p0
.end method

.method public put(Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 1

    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->method(Ljava/lang/String;Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public respType(I)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->e:I

    return-object p0
.end method

.method public retryEnable(Z)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->g:Z

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
