.class public final Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field final a:Z

.field final b:Ljava/util/Random;

.field final c:Lm3/f;

.field final d:Lm3/e;

.field e:Z

.field final f:Lm3/e;

.field final g:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;

.field h:Z

.field private final i:[B

.field private final j:Lm3/e$a;


# direct methods
.method constructor <init>(ZLm3/f;Ljava/util/Random;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm3/e;

    invoke-direct {v0}, Lm3/e;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->f:Lm3/e;

    new-instance v0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;-><init>(Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->g:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a:Z

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->c:Lm3/f;

    invoke-interface {p2}, Lm3/f;->p()Lm3/e;

    move-result-object p2

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->b:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->i:[B

    if-eqz p1, :cond_1

    new-instance p2, Lm3/e$a;

    invoke-direct {p2}, Lm3/e$a;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "random == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized a(IJZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->e:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit16 p1, p1, 0x80

    :cond_1
    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p4, p1}, Lm3/e;->V(I)Lm3/e;

    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a:Z

    if-eqz p1, :cond_2

    const/16 v0, 0x80

    :cond_2
    const-wide/16 p4, 0x7d

    cmp-long p1, p2, p4

    if-gtz p1, :cond_3

    long-to-int p1, p2

    or-int/2addr p1, v0

    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p4, p1}, Lm3/e;->V(I)Lm3/e;

    goto :goto_1

    :cond_3
    const-wide/32 p4, 0xffff

    cmp-long p1, p2, p4

    if-gtz p1, :cond_4

    or-int/lit8 p1, v0, 0x7e

    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p4, p1}, Lm3/e;->V(I)Lm3/e;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    long-to-int p4, p2

    invoke-virtual {p1, p4}, Lm3/e;->b0(I)Lm3/e;

    goto :goto_1

    :cond_4
    or-int/lit8 p1, v0, 0x7f

    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p4, p1}, Lm3/e;->V(I)Lm3/e;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p1, p2, p3}, Lm3/e;->a0(J)Lm3/e;

    :goto_1
    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->b:Ljava/util/Random;

    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->i:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->i:[B

    invoke-virtual {p1, p4}, Lm3/e;->S([B)Lm3/e;

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide p4

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->f:Lm3/e;

    invoke-virtual {p1, v0, p2, p3}, Lm3/e;->write(Lm3/e;J)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    invoke-virtual {p1, p2}, Lm3/e;->B(Lm3/e$a;)Lm3/e$a;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    invoke-virtual {p1, p4, p5}, Lm3/e$a;->e(J)I

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->i:[B

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/g;->a(Lm3/e$a;[B)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    invoke-virtual {p1}, Lm3/e$a;->close()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->f:Lm3/e;

    invoke-virtual {p1, p4, p2, p3}, Lm3/e;->write(Lm3/e;J)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->c:Lm3/f;

    invoke-interface {p1}, Lm3/f;->q()Lm3/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;IJZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a(IJZZ)V

    return-void
.end method

.method private declared-synchronized b(ILm3/h;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lm3/h;->t()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    or-int/lit16 p1, p1, 0x80

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {v1, p1}, Lm3/e;->V(I)Lm3/e;

    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a:Z

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x80

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {v1, p1}, Lm3/e;->V(I)Lm3/e;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->b:Ljava/util/Random;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->i:[B

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->i:[B

    invoke-virtual {p1, v1}, Lm3/e;->S([B)Lm3/e;

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p1, p2}, Lm3/e;->R(Lm3/h;)Lm3/e;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    invoke-virtual {p1, p2}, Lm3/e;->B(Lm3/e$a;)Lm3/e$a;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    invoke-virtual {p1, v0, v1}, Lm3/e$a;->e(J)I

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->i:[B

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/g;->a(Lm3/e$a;[B)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->j:Lm3/e$a;

    invoke-virtual {p1}, Lm3/e$a;->close()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p1, v0}, Lm3/e;->V(I)Lm3/e;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->d:Lm3/e;

    invoke-virtual {p1, p2}, Lm3/e;->R(Lm3/h;)Lm3/e;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->c:Lm3/f;

    invoke-interface {p1}, Lm3/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method a(IJ)Lm3/a0;
    .locals 2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->h:Z

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->g:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;

    iput p1, v1, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->a:I

    iput-wide p2, v1, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->b:J

    iput-boolean v0, v1, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->d:Z

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another message writer is active. Did you call close()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILm3/h;)V
    .locals 1

    sget-object v0, Lm3/h;->d:Lm3/h;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/g;->b(I)V

    :cond_1
    new-instance v0, Lm3/e;

    invoke-direct {v0}, Lm3/e;-><init>()V

    invoke-virtual {v0, p1}, Lm3/e;->b0(I)Lm3/e;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lm3/e;->R(Lm3/h;)Lm3/e;

    :cond_2
    invoke-virtual {v0}, Lm3/e;->D()Lm3/h;

    move-result-object v0

    :cond_3
    const/16 p1, 0x8

    const/4 p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->b(ILm3/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->e:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->e:Z

    throw p1
.end method

.method a(Lm3/h;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->b(ILm3/h;)V

    return-void
.end method

.method b(Lm3/h;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->b(ILm3/h;)V

    return-void
.end method
