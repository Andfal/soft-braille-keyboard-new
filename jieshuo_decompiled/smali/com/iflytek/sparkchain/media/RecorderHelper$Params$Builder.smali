.class public Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
.super Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/RecorderHelper$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/iflytek/sparkchain/media/RecorderHelper$Params;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;-><init>(Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;Lcom/iflytek/sparkchain/media/RecorderHelper$1;)V

    return-object v0
.end method

.method public channel(S)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
    .locals 0

    iput-short p1, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->channel:S

    return-object p0
.end method

.method public format(I)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->format:I

    return-object p0
.end method

.method public listener(Lcom/iflytek/sparkchain/media/listener/DecibelListener;)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->listener:Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    return-object p0
.end method

.method public rate(I)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->rate:I

    return-object p0
.end method

.method public size(I)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->size:I

    return-object p0
.end method

.method public source(I)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->source:I

    return-object p0
.end method
