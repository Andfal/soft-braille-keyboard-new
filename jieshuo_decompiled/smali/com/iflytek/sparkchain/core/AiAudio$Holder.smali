.class public Lcom/iflytek/sparkchain/core/AiAudio$Holder;
.super Lcom/iflytek/sparkchain/core/AiDataHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/sparkchain/core/AiDataHolder<",
        "Lcom/iflytek/sparkchain/core/AiAudio$Holder;",
        "Lcom/iflytek/sparkchain/core/AiAudio;",
        ">;"
    }
.end annotation


# instance fields
.field private bitDepth:I

.field private channels:I

.field private encoding:Ljava/lang/String;

.field private sampleRate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiAudio;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/AiAudio;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;-><init>(Lcom/iflytek/sparkchain/core/a;Ljava/lang/String;)V

    sget-object p1, Lcom/iflytek/sparkchain/core/AiAudio;->ENCODING_DEFAULT:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->encoding:Ljava/lang/String;

    const/16 p1, 0x3e80

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->sampleRate:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->channels:I

    const/16 p1, 0x10

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->bitDepth:I

    return-void
.end method


# virtual methods
.method public bitDepth(I)Lcom/iflytek/sparkchain/core/AiAudio$Holder;
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->bitDepth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->bitDepth:I

    return-object p0
.end method

.method public channels(I)Lcom/iflytek/sparkchain/core/AiAudio$Holder;
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->channels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->channels:I

    return-object p0
.end method

.method public encoding(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiAudio$Holder;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->encoding:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method protected paramSync(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "encoding"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;[B)V

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->sampleRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sample_rate"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->channels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "channels"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->bitDepth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bit_depth"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "frame_size"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public sampleRate(I)Lcom/iflytek/sparkchain/core/AiAudio$Holder;
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->sampleRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->sampleRate:I

    return-object p0
.end method

.method protected type()Lcom/iflytek/sparkchain/core/c;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->c:Lcom/iflytek/sparkchain/core/c;

    return-object v0
.end method
