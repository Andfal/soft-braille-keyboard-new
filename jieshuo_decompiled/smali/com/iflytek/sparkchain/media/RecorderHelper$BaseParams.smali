.class public Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/RecorderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseParams"
.end annotation


# instance fields
.field protected channel:S

.field protected format:I

.field protected listener:Lcom/iflytek/sparkchain/media/listener/DecibelListener;

.field protected rate:I

.field protected size:I

.field protected source:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->source:I

    const/16 v1, 0x3e80

    iput v1, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->rate:I

    iput-short v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->channel:S

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->format:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;->size:I

    return-void
.end method
