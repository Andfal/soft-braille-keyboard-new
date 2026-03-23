.class public Lcom/iflytek/sparkchain/core/AiUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/AiUrl$Builder;
    }
.end annotation


# instance fields
.field ssl:Z

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/iflytek/sparkchain/core/AiUrl$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiUrl;->url:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->ssl:Z

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/core/AiUrl;->ssl:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/AiUrl$Builder;Lcom/iflytek/sparkchain/core/AiUrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/AiUrl;-><init>(Lcom/iflytek/sparkchain/core/AiUrl$Builder;)V

    return-void
.end method

.method public static builder()Lcom/iflytek/sparkchain/core/AiUrl$Builder;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiUrl$Builder;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/AiUrl$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSsl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/core/AiUrl;->ssl:Z

    return v0
.end method

.method public toJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiUrl;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    goto :goto_0

    :cond_0
    const-string v3, "false"

    :goto_0
    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v0, "{\"host\":\"%s\",\"path\":\"%s\",\"ssl\":%s,\"port\":%d}"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
