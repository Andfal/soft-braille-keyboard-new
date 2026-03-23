.class public Lcom/iflytek/sparkchain/core/Embedding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/Embedding$b;,
        Lcom/iflytek/sparkchain/core/Embedding$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/Embedding$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/Embedding;-><init>()V

    return-void
.end method

.method public static getInst()Lcom/iflytek/sparkchain/core/Embedding;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/Embedding$c;->a()Lcom/iflytek/sparkchain/core/Embedding;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public embeddingP(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/Embedding;->embeddingP(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;

    move-result-object p1

    return-object p1
.end method

.method public embeddingP(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/iflytek/sparkchain/core/Embedding$b;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Embedding$b;-><init>(Lcom/iflytek/sparkchain/core/Embedding;)V

    const/16 v1, 0x4845

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Embedding$b;->a(I)V

    const-string v1, "input is null object"

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Embedding$b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/Embedding;->runEmbeddingP(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;

    move-result-object p1

    return-object p1
.end method

.method public embeddingQ(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/Embedding;->embeddingQ(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;

    move-result-object p1

    return-object p1
.end method

.method public embeddingQ(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/iflytek/sparkchain/core/Embedding$b;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Embedding$b;-><init>(Lcom/iflytek/sparkchain/core/Embedding;)V

    const/16 v1, 0x4845

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Embedding$b;->a(I)V

    const-string v1, "input is null object"

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Embedding$b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/Embedding;->runEmbeddingQ(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;

    move-result-object p1

    return-object p1
.end method

.method native runEmbeddingP(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;
.end method

.method native runEmbeddingQ(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/EmbeddingOutput;
.end method
