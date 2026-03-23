.class public Lcom/vivo/speechsdk/module/player/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/player/IBuffer;


# static fields
.field private static final f:Ljava/lang/String; = "PcmBuffer"

.field private static final g:I = 0x1000

.field private static final h:I = 0x708


# instance fields
.field private a:Landroid/os/MemoryFile;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile d:Z

.field private e:Lcom/vivo/speechsdk/b/h/d;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vivo/speechsdk/module/player/b;-><init>(IIILcom/vivo/speechsdk/b/h/d;)V

    return-void
.end method

.method public constructor <init>(IIILcom/vivo/speechsdk/b/h/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/player/b;->a(III)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Memory Buffer Size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PcmBuffer"

    invoke-static {p3, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/os/MemoryFile;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/player/b;->a:Landroid/os/MemoryFile;

    iput-object p4, p0, Lcom/vivo/speechsdk/module/player/b;->e:Lcom/vivo/speechsdk/b/h/d;

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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/player/b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read([B)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vivo/speechsdk/module/player/b;->read([BII)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->a:Landroid/os/MemoryFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    move p3, v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->a:Landroid/os/MemoryFile;

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return p3

    :cond_1
    return v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->a:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-boolean v1, p0, Lcom/vivo/speechsdk/module/player/b;->d:Z

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public save(Lcom/vivo/speechsdk/b/h/d;)V
    .locals 7

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->e:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/b;->e:Lcom/vivo/speechsdk/b/h/d;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/b;->a:Landroid/os/MemoryFile;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/b;->e:Lcom/vivo/speechsdk/b/h/d;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x1000

    :try_start_0
    new-array v0, p1, [B

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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
    iget-object v5, p0, Lcom/vivo/speechsdk/module/player/b;->a:Landroid/os/MemoryFile;

    invoke-virtual {v5, v0, v3, v2, v4}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v4

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object v5

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, v5, Lcom/vivo/speechsdk/b/h/b;->a:[B

    iput v4, v5, Lcom/vivo/speechsdk/b/h/b;->b:I

    iget-object v6, p0, Lcom/vivo/speechsdk/module/player/b;->e:Lcom/vivo/speechsdk/b/h/d;

    invoke-interface {v6, v5}, Lcom/vivo/speechsdk/b/h/d;->a(Lcom/vivo/speechsdk/b/h/b;)V

    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/vivo/speechsdk/b/h/b;->f:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->e:Lcom/vivo/speechsdk/b/h/d;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/b/h/d;->a(Lcom/vivo/speechsdk/b/h/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PcmBuffer"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public write([BIZ)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->a:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "PcmBuffer"

    const-string v1, "buffer already release NullPointerException"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean p3, p0, Lcom/vivo/speechsdk/module/player/b;->d:Z

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/b;->e:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v1, Lcom/vivo/speechsdk/b/h/b;->a:[B

    iput p2, v1, Lcom/vivo/speechsdk/b/h/b;->b:I

    :cond_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, v1, Lcom/vivo/speechsdk/b/h/b;->f:Z

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/b;->e:Lcom/vivo/speechsdk/b/h/d;

    invoke-interface {p1, v1}, Lcom/vivo/speechsdk/b/h/d;->a(Lcom/vivo/speechsdk/b/h/b;)V

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    throw v0
.end method
