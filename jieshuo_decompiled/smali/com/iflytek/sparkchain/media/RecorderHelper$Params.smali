.class public Lcom/iflytek/sparkchain/media/RecorderHelper$Params;
.super Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/RecorderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;-><init>()V

    iget v0, p1, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->source:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->source:I

    iget v0, p1, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->rate:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->rate:I

    iget-short v0, p1, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->channel:S

    iput-short v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->channel:S

    iget v0, p1, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->format:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->format:I

    iget v0, p1, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->size:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->size:I

    iget-object p1, p1, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->listener:Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->listener:Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;Lcom/iflytek/sparkchain/media/RecorderHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;-><init>(Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;)V

    return-void
.end method

.method public static builder()Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getChannel()S
    .locals 1

    iget-short v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->channel:S

    return v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->format:I

    return v0
.end method

.method public getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->listener:Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->rate:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->size:I

    return v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->source:I

    return v0
.end method
