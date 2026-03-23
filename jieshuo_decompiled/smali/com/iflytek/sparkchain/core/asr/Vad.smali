.class public Lcom/iflytek/sparkchain/core/asr/Vad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private begin:I

.field private end:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBegin()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/Vad;->begin:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/Vad;->end:I

    return v0
.end method

.method public setBegin(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/Vad;->begin:I

    return-void
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/Vad;->end:I

    return-void
.end method
