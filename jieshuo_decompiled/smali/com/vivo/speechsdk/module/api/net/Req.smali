.class public Lcom/vivo/speechsdk/module/api/net/Req;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/api/net/Req$Builder;
    }
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
.method constructor <init>(Lcom/vivo/speechsdk/module/api/net/Req$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->c:Ljava/util/Map;

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->d:Lcom/vivo/speechsdk/module/api/net/ReqBody;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->d:Lcom/vivo/speechsdk/module/api/net/ReqBody;

    iget-boolean v0, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->f:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->f:Z

    iget-boolean v0, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->g:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->g:Z

    iget v0, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->e:I

    iput v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->e:I

    iget v1, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->i:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/net/Req;->i:I

    iget-boolean p1, p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->h:Z

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/net/Req;->h:Z

    if-nez v0, :cond_0

    const/16 p1, 0x3ec

    iput p1, p0, Lcom/vivo/speechsdk/module/api/net/Req;->e:I

    :cond_0
    return-void
.end method


# virtual methods
.method public body()Lcom/vivo/speechsdk/module/api/net/ReqBody;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->d:Lcom/vivo/speechsdk/module/api/net/ReqBody;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->c:Ljava/util/Map;

    return-object v0
.end method

.method public isCacheEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->f:Z

    return v0
.end method

.method public isRetryEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->g:Z

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->b:Ljava/lang/String;

    return-object v0
.end method

.method public pingInterval()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->i:I

    return v0
.end method

.method public preload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->h:Z

    return v0
.end method

.method public respType()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->e:I

    return v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Req;->a:Ljava/lang/String;

    return-object v0
.end method
