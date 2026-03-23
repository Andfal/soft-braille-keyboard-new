.class public Lcom/iflytek/sparkchain/core/AiVideo$Holder;
.super Lcom/iflytek/sparkchain/core/AiDataHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/sparkchain/core/AiDataHolder<",
        "Lcom/iflytek/sparkchain/core/AiVideo$Holder;",
        "Lcom/iflytek/sparkchain/core/AiVideo;",
        ">;"
    }
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;

.field private frameRate:I

.field private height:I

.field private width:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiVideo;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/AiVideo;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;-><init>(Lcom/iflytek/sparkchain/core/a;Ljava/lang/String;)V

    sget-object p1, Lcom/iflytek/sparkchain/core/AiVideo;->ENCODING_DEFAULT:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->encoding:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->frameRate:I

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->width:I

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->height:I

    return-void
.end method


# virtual methods
.method public encoding(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiVideo$Holder;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->encoding:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public frameRate(I)Lcom/iflytek/sparkchain/core/AiVideo$Holder;
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->frameRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->frameRate:I

    return-object p0
.end method

.method public height(I)Lcom/iflytek/sparkchain/core/AiVideo$Holder;
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->height:I

    return-object p0
.end method

.method protected paramSync(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "encoding"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;[B)V

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->frameRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "frame_rate"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p0, p1, v1, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected type()Lcom/iflytek/sparkchain/core/c;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->e:Lcom/iflytek/sparkchain/core/c;

    return-object v0
.end method

.method public valid()Lcom/iflytek/sparkchain/core/AiVideo;
    .locals 2

    invoke-super {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->valid()Lcom/iflytek/sparkchain/core/a;

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->frameRate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->width:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->height:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->object:Lcom/iflytek/sparkchain/core/a;

    check-cast v0, Lcom/iflytek/sparkchain/core/AiVideo;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method public bridge synthetic valid()Lcom/iflytek/sparkchain/core/a;
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->valid()Lcom/iflytek/sparkchain/core/AiVideo;

    move-result-object v0

    return-object v0
.end method

.method public width(I)Lcom/iflytek/sparkchain/core/AiVideo$Holder;
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->width:I

    return-object p0
.end method
