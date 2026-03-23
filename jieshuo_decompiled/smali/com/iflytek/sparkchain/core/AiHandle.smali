.class public Lcom/iflytek/sparkchain/core/AiHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private i:I

.field private id:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiHandle;->code:I

    iput p2, p0, Lcom/iflytek/sparkchain/core/AiHandle;->id:I

    iput p3, p0, Lcom/iflytek/sparkchain/core/AiHandle;->i:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiHandle;->code:I

    return v0
.end method

.method public getI()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiHandle;->i:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiHandle;->id:I

    return v0
.end method

.method public isFail()Z
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/AiHandle;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiHandle;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
