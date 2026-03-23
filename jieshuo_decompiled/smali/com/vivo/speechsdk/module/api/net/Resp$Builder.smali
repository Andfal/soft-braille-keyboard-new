.class public Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/api/net/Resp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field a:Lcom/vivo/speechsdk/module/api/net/Req;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/vivo/speechsdk/module/api/net/RespBody;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->d:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/vivo/speechsdk/module/api/net/Resp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->b:I

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Resp;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    iget v0, p1, Lcom/vivo/speechsdk/module/api/net/Resp;->b:I

    iput v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->b:I

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Resp;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Resp;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->d:Ljava/util/Map;

    iget-object p1, p1, Lcom/vivo/speechsdk/module/api/net/Resp;->e:Lcom/vivo/speechsdk/module/api/net/RespBody;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->e:Lcom/vivo/speechsdk/module/api/net/RespBody;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public body(Lcom/vivo/speechsdk/module/api/net/RespBody;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->e:Lcom/vivo/speechsdk/module/api/net/RespBody;

    return-object p0
.end method

.method public build()Lcom/vivo/speechsdk/module/api/net/Resp;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/api/net/Resp;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/api/net/Resp;-><init>(Lcom/vivo/speechsdk/module/api/net/Resp$Builder;)V

    return-object v0
.end method

.method public code(I)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->b:I

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vivo/speechsdk/module/api/net/Resp$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->d:Ljava/util/Map;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public request(Lcom/vivo/speechsdk/module/api/net/Req;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    return-object p0
.end method
