.class abstract Lcom/iflytek/sparkchain/core/AiBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/AiBuilder$InputData;
    }
.end annotation


# static fields
.field private static final atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected handle:I

.field private inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

.field protected paramCount:I

.field protected status:Lcom/iflytek/sparkchain/core/AiStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/iflytek/sparkchain/core/AiBuilder;->atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->BEGIN:Lcom/iflytek/sparkchain/core/AiStatus;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiBuilder;->getAtomicHandle()I

    move-result v0

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    return-void
.end method

.method private clearInputData()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->setBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->getLastData()Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getAtomicHandle()I
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiBuilder;->atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/sparkchain/core/c;->g:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/b;->getValue()I

    move-result v6

    invoke-virtual {p4}, Lcom/iflytek/sparkchain/core/c;->getValue()I

    move-result v7

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiStatus;->getValue()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Lcom/iflytek/sparkchain/core/AiHelper;->newBuffer(JLjava/lang/String;[BIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lcom/iflytek/sparkchain/core/c;->getValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/sparkchain/core/AiBuilder;->addDirectBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;I)V

    :goto_0
    return-void
.end method

.method protected add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/c;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/sparkchain/core/b;->b:Lcom/iflytek/sparkchain/core/b;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-void
.end method

.method protected add(Ljava/lang/String;[B)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/sparkchain/core/c;->g:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/c;)V

    return-void
.end method

.method protected add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/sparkchain/core/c;->g:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v2, v0

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/b;->getValue()I

    move-result v6

    invoke-virtual {p4}, Lcom/iflytek/sparkchain/core/c;->getValue()I

    move-result v7

    iget-object p3, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/AiStatus;->getValue()I

    move-result v8

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/iflytek/sparkchain/core/AiHelper;->newBuffer(JLjava/lang/String;[BIII)V

    goto :goto_2

    :cond_1
    array-length v0, p2

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    const/4 v2, 0x0

    if-ne p4, v1, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-ne p4, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_3
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    const/4 v1, 0x0

    if-nez p2, :cond_4

    new-instance p2, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    invoke-direct {p2, v1}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;-><init>(Lcom/iflytek/sparkchain/core/AiBuilder$1;)V

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    invoke-static {p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->access$102(Lcom/iflytek/sparkchain/core/AiBuilder$InputData;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    invoke-direct {p2, v1}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;-><init>(Lcom/iflytek/sparkchain/core/AiBuilder$1;)V

    invoke-virtual {p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->setBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    invoke-virtual {p2, v1}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->setLastData(Lcom/iflytek/sparkchain/core/AiBuilder$InputData;)V

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->inputData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    :goto_1
    invoke-virtual {p4}, Lcom/iflytek/sparkchain/core/c;->getValue()I

    move-result p2

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/iflytek/sparkchain/core/AiBuilder;->addDirectBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;I)V

    :goto_2
    return-void
.end method

.method protected add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/c;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/sparkchain/core/b;->b:Lcom/iflytek/sparkchain/core/b;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-void
.end method

.method protected addDirectBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;I)V
    .locals 9

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/b;->getValue()I

    move-result v5

    iget-object p3, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/AiStatus;->getValue()I

    move-result v7

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/iflytek/sparkchain/core/AiHelper;->newDirectBuffer(JLjava/lang/String;Ljava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method public clean()V
    .locals 3

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sparkchain/core/AiHelper;->paramClear(J)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sparkchain/core/AiHelper;->inputClear(J)V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiBuilder;->clearInputData()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    return-void
.end method

.method protected custom(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;II)V
    .locals 8

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/b;->getValue()I

    move-result v5

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/sparkchain/core/AiHelper;->newCustom(JLjava/lang/String;[BIII)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiBuilder;->clearInputData()V

    return-void
.end method
