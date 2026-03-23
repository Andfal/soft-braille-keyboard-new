.class public abstract Lcom/iflytek/sparkchain/core/AiDataHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Lcom/iflytek/sparkchain/core/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected buffer:Ljava/nio/ByteBuffer;

.field protected from:Lcom/iflytek/sparkchain/core/b;

.field protected handle:I

.field protected isData:Z

.field private final key:Ljava/lang/String;

.field protected object:Lcom/iflytek/sparkchain/core/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private status:Lcom/iflytek/sparkchain/core/AiStatus;

.field private updated:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->b:Lcom/iflytek/sparkchain/core/b;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->from:Lcom/iflytek/sparkchain/core/b;

    sget-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->BEGIN:Lcom/iflytek/sparkchain/core/AiStatus;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->updated:Z

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->isData:Z

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->object:Lcom/iflytek/sparkchain/core/a;

    invoke-virtual {p1, p0}, Lcom/iflytek/sparkchain/core/a;->ref(Lcom/iflytek/sparkchain/core/AiDataHolder;)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiBuilder;->getAtomicHandle()I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->handle:I

    return-void
.end method

.method private response()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private sync(I)V
    .locals 10

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->isData:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->handle:I

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/core/AiStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p0, v0, v2, v1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(ILjava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->handle:I

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->paramSync(I)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->type()Lcom/iflytek/sparkchain/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/c;->getValue()I

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    int-to-long v2, p1

    iget-object v4, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->from:Lcom/iflytek/sparkchain/core/b;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/b;->getValue()I

    move-result v6

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AiStatus;->getValue()I

    move-result v8

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/iflytek/sparkchain/core/AiHelper;->newDirectBuffer(JLjava/lang/String;Ljava/nio/ByteBuffer;IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public begin()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    sget-object v1, Lcom/iflytek/sparkchain/core/AiStatus;->BEGIN:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/core/AiStatus;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->response()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cont()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    sget-object v1, Lcom/iflytek/sparkchain/core/AiStatus;->CONTINUE:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/core/AiStatus;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->response()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public data(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->data([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public data(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->buffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->isData:Z

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public data([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->data(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public end()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    sget-object v1, Lcom/iflytek/sparkchain/core/AiStatus;->END:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/core/AiStatus;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->response()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public file(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->from:Lcom/iflytek/sparkchain/core/b;

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->data(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public file(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->from:Lcom/iflytek/sparkchain/core/b;

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->data(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public file([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->from:Lcom/iflytek/sparkchain/core/b;

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->data([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->handle:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sparkchain/core/AiHelper;->delBuilder(J)V

    return-void
.end method

.method public once()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    sget-object v1, Lcom/iflytek/sparkchain/core/AiStatus;->ONCE:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/core/AiStatus;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->response()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract paramSync(I)V
.end method

.method public status(Lcom/iflytek/sparkchain/core/AiStatus;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/sparkchain/core/AiStatus;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiStatus;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected sync(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->newBoolean(JLjava/lang/String;Z)V

    return-void
.end method

.method protected sync(ILjava/lang/String;Ljava/lang/Double;)V
    .locals 6

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper;->newDouble(JLjava/lang/String;D)V

    return-void
.end method

.method protected sync(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->newInteger(JLjava/lang/String;I)V

    return-void
.end method

.method protected sync(ILjava/lang/String;[B)V
    .locals 8

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Lcom/iflytek/sparkchain/core/b;->b:Lcom/iflytek/sparkchain/core/b;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/b;->getValue()I

    move-result v5

    sget-object p1, Lcom/iflytek/sparkchain/core/c;->g:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/c;->getValue()I

    move-result v6

    sget-object p1, Lcom/iflytek/sparkchain/core/AiStatus;->ONCE:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AiStatus;->getValue()I

    move-result v7

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/sparkchain/core/AiHelper;->newBuffer(JLjava/lang/String;[BIII)V

    return-void
.end method

.method protected syncCtrl(I)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(I)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    int-to-long v1, p1

    iget-object v3, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->key:Ljava/lang/String;

    iget p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->handle:I

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper;->newBuilder(JLjava/lang/String;J)V

    return-void
.end method

.method protected syncDesc(I)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->sync(I)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    int-to-long v1, p1

    iget-object v3, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->key:Ljava/lang/String;

    iget p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->handle:I

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper;->newDesc(JLjava/lang/String;J)V

    return-void
.end method

.method protected abstract type()Lcom/iflytek/sparkchain/core/c;
.end method

.method protected update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(TP;TP;)TP;"
        }
    .end annotation

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->updated:Z

    :cond_0
    return-object p2
.end method

.method public valid()Lcom/iflytek/sparkchain/core/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->isData:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiDataHolder;->object:Lcom/iflytek/sparkchain/core/a;

    return-object v0
.end method
