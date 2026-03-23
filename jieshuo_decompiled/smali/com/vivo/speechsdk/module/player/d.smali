.class public Lcom/vivo/speechsdk/module/player/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/player/IBuffer;


# static fields
.field private static final f:Ljava/lang/String; = "SampleBuffer"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile d:Z

.field private final e:Lcom/vivo/speechsdk/b/h/d;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vivo/speechsdk/module/player/d;-><init>(IIILcom/vivo/speechsdk/b/h/d;)V

    return-void
.end method

.method public constructor <init>(IIILcom/vivo/speechsdk/b/h/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/d;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iput-object p4, p0, Lcom/vivo/speechsdk/module/player/d;->e:Lcom/vivo/speechsdk/b/h/d;

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/player/d;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read([B)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vivo/speechsdk/module/player/d;->read([BII)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public read([BII)I
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    move p3, v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_8

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    array-length v2, v0

    if-le v2, p3, :cond_2

    invoke-static {v0, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v0

    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    array-length v2, v0

    if-ge v2, p3, :cond_6

    array-length v2, v0

    sub-int v2, p3, v2

    array-length v3, v0

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lez v2, :cond_7

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7

    array-length v4, v0

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    array-length v4, v0

    if-le v4, v2, :cond_4

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v0

    invoke-static {v0, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    array-length v4, v0

    if-ge v4, v2, :cond_5

    array-length v4, v0

    invoke-static {v0, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_5
    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return p3

    :cond_8
    :goto_2
    return v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-boolean v1, p0, Lcom/vivo/speechsdk/module/player/d;->d:Z

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public save(Lcom/vivo/speechsdk/b/h/d;)V
    .locals 0

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public write([BIZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_0
    iput-boolean p3, p0, Lcom/vivo/speechsdk/module/player/d;->d:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/d;->e:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v0, Lcom/vivo/speechsdk/b/h/b;->a:[B

    iput p2, v0, Lcom/vivo/speechsdk/b/h/b;->b:I

    :cond_1
    iput-boolean p3, v0, Lcom/vivo/speechsdk/b/h/b;->f:Z

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/d;->e:Lcom/vivo/speechsdk/b/h/d;

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/b/h/d;->a(Lcom/vivo/speechsdk/b/h/b;)V

    :cond_2
    return-void
.end method
