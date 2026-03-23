.class public Lcom/vivo/speechsdk/module/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/player/IBuffer;


# static fields
.field private static final i:Ljava/lang/String; = "CircularBuffer"

.field private static final j:I = 0x1000

.field private static final k:I = 0x708


# instance fields
.field private a:I

.field private final b:Landroid/os/MemoryFile;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:I

.field private f:I

.field private volatile g:Z

.field private h:Lcom/vivo/speechsdk/b/h/d;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vivo/speechsdk/module/player/a;-><init>(IIILcom/vivo/speechsdk/b/h/d;)V

    return-void
.end method

.method public constructor <init>(IIILcom/vivo/speechsdk/b/h/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/vivo/speechsdk/module/player/a;->a:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/player/a;->e:I

    iput v0, p0, Lcom/vivo/speechsdk/module/player/a;->f:I

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/player/a;->a(III)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/module/player/a;->a:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Memory Buffer Size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/vivo/speechsdk/module/player/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CircularBuffer"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/MemoryFile;

    iget p2, p0, Lcom/vivo/speechsdk/module/player/a;->a:I

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    iput-object p4, p0, Lcom/vivo/speechsdk/module/player/a;->h:Lcom/vivo/speechsdk/b/h/d;

    return-void
.end method

.method private a(III)I
    .locals 0

    div-int/lit8 p2, p2, 0x8

    mul-int p1, p1, p2

    mul-int p1, p1, p3

    mul-int/lit16 p1, p1, 0x708

    return p1
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/player/a;->g:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read([B)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vivo/speechsdk/module/player/a;->read([BII)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public read([BII)I
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iget v2, p0, Lcom/vivo/speechsdk/module/player/a;->a:I

    iget v3, p0, Lcom/vivo/speechsdk/module/player/a;->e:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_1

    iget-object p3, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    invoke-virtual {p3, p1, v3, v1, v0}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget p1, p0, Lcom/vivo/speechsdk/module/player/a;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/vivo/speechsdk/module/player/a;->e:I

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read to the tail of the buffer , Read from head Capacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vivo/speechsdk/module/player/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " TotalRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " TotalWrite = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ReadOffset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vivo/speechsdk/module/player/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " WriteOffset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vivo/speechsdk/module/player/a;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CircularBuffer"

    invoke-static {v4, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr p3, v2

    iget-object v3, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    iget v4, p0, Lcom/vivo/speechsdk/module/player/a;->e:I

    invoke-virtual {v3, p1, v4, v1, v2}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget-object v3, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    invoke-virtual {v3, p1, v1, v2, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iput p3, p0, Lcom/vivo/speechsdk/module/player/a;->e:I

    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return v0

    :cond_2
    return v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-boolean v1, p0, Lcom/vivo/speechsdk/module/player/a;->g:Z

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public save(Lcom/vivo/speechsdk/b/h/d;)V
    .locals 7

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->h:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/a;->h:Lcom/vivo/speechsdk/b/h/d;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/a;->h:Lcom/vivo/speechsdk/b/h/d;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x1000

    :try_start_0
    new-array v0, p1, [B

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    sub-int v4, v1, v3

    if-le v4, p1, :cond_3

    const/16 v4, 0x1000

    :cond_3
    iget-object v5, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    invoke-virtual {v5, v0, v3, v2, v4}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v4

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object v5

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, v5, Lcom/vivo/speechsdk/b/h/b;->a:[B

    iput v4, v5, Lcom/vivo/speechsdk/b/h/b;->b:I

    iget-object v6, p0, Lcom/vivo/speechsdk/module/player/a;->h:Lcom/vivo/speechsdk/b/h/d;

    invoke-interface {v6, v5}, Lcom/vivo/speechsdk/b/h/d;->a(Lcom/vivo/speechsdk/b/h/b;)V

    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/vivo/speechsdk/b/h/b;->f:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->h:Lcom/vivo/speechsdk/b/h/d;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/b/h/d;->a(Lcom/vivo/speechsdk/b/h/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CircularBuffer"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public write([BIZ)V
    .locals 6

    const-string v0, "CircularBuffer"

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/vivo/speechsdk/module/player/a;->a:I

    iget v3, p0, Lcom/vivo/speechsdk/module/player/a;->f:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-gt p2, v2, :cond_0

    invoke-virtual {v1, p1, v4, v3, p2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    iget v1, p0, Lcom/vivo/speechsdk/module/player/a;->f:I

    add-int/2addr v1, p2

    :goto_0
    iput v1, p0, Lcom/vivo/speechsdk/module/player/a;->f:I

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The buffer is full , Write from head Capacity = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vivo/speechsdk/module/player/a;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " TotalRead = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/player/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " TotalWrite = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ReadOffset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vivo/speechsdk/module/player/a;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " WriteOffset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vivo/speechsdk/module/player/a;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v1, p2, v2

    iget-object v3, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    iget v5, p0, Lcom/vivo/speechsdk/module/player/a;->f:I

    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/player/a;->b:Landroid/os/MemoryFile;

    invoke-virtual {v3, p1, v2, v4, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v1, "buffer already release NullPointerException"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean p3, p0, Lcom/vivo/speechsdk/module/player/a;->g:Z

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/a;->h:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v1, Lcom/vivo/speechsdk/b/h/b;->a:[B

    iput p2, v1, Lcom/vivo/speechsdk/b/h/b;->b:I

    :cond_2
    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 p3, 0x1

    :goto_4
    iput-boolean p3, v1, Lcom/vivo/speechsdk/b/h/b;->f:Z

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/a;->h:Lcom/vivo/speechsdk/b/h/d;

    invoke-interface {p1, v1}, Lcom/vivo/speechsdk/b/h/d;->a(Lcom/vivo/speechsdk/b/h/b;)V

    :cond_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    throw v0
.end method
