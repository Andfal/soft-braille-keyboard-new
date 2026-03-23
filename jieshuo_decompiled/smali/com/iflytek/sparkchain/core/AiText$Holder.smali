.class public Lcom/iflytek/sparkchain/core/AiText$Holder;
.super Lcom/iflytek/sparkchain/core/AiDataHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/sparkchain/core/AiDataHolder<",
        "Lcom/iflytek/sparkchain/core/AiText$Holder;",
        "Lcom/iflytek/sparkchain/core/AiText;",
        ">;"
    }
.end annotation


# instance fields
.field private compress:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private format:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiText;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/AiText;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;-><init>(Lcom/iflytek/sparkchain/core/a;Ljava/lang/String;)V

    sget-object p1, Lcom/iflytek/sparkchain/core/AiText;->ENCODING_DEFAULT:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->encoding:Ljava/lang/String;

    sget-object p1, Lcom/iflytek/sparkchain/core/AiText;->COMPRESS_DEFAULT:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->compress:Ljava/lang/String;

    sget-object p1, Lcom/iflytek/sparkchain/core/AiText;->FORMAT_DEFAULT:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->format:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiText$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/AiText$Holder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compress(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiText$Holder;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->compress:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->compress:Ljava/lang/String;

    return-object p0
.end method

.method public encoding(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiText$Holder;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->encoding:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public format(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiText$Holder;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->format:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->format:Ljava/lang/String;

    return-object p0
.end method

.method protected paramSync(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "encoding"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->compress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "compress"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiText$Holder;->format:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "format"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;[B)V

    return-void
.end method

.method protected type()Lcom/iflytek/sparkchain/core/c;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    return-object v0
.end method
