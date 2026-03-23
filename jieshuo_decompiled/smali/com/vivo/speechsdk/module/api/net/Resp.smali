.class public Lcom/vivo/speechsdk/module/api/net/Resp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    }
.end annotation


# instance fields
.field final a:Lcom/vivo/speechsdk/module/api/net/Req;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/vivo/speechsdk/module/api/net/RespBody;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/api/net/Resp$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    iget v0, p1, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->b:I

    iput v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->b:I

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->d:Ljava/util/Map;

    iget-object p1, p1, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->e:Lcom/vivo/speechsdk/module/api/net/RespBody;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->e:Lcom/vivo/speechsdk/module/api/net/RespBody;

    return-void
.end method


# virtual methods
.method public body()Lcom/vivo/speechsdk/module/api/net/RespBody;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->e:Lcom/vivo/speechsdk/module/api/net/RespBody;

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->e:Lcom/vivo/speechsdk/module/api/net/RespBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/net/RespBody;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public code()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->b:I

    return v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/module/api/net/Resp;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->d:Ljava/util/Map;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/vivo/speechsdk/module/api/net/Resp$Builder;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;-><init>(Lcom/vivo/speechsdk/module/api/net/Resp;)V

    return-object v0
.end method

.method public request()Lcom/vivo/speechsdk/module/api/net/Req;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/Resp;->a:Lcom/vivo/speechsdk/module/api/net/Req;

    return-object v0
.end method
