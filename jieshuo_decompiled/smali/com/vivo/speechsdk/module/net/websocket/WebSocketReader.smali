.class Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "WebSocketReader"


# instance fields
.field final a:Z

.field final b:Lm3/g;

.field final c:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;

.field d:Z

.field e:I

.field f:J

.field g:Z

.field h:Z

.field private final i:Lm3/e;

.field private final j:Lm3/e;

.field private final k:[B

.field private final l:Lm3/e$a;


# direct methods
.method constructor <init>(ZLm3/g;Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm3/e;

    invoke-direct {v0}, Lm3/e;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->i:Lm3/e;

    new-instance v0, Lm3/e;

    invoke-direct {v0}, Lm3/e;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->j:Lm3/e;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->a:Z

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->c:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    new-array p3, p3, [B

    :goto_0
    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->k:[B

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lm3/e$a;

    invoke-direct {p2}, Lm3/e$a;-><init>()V

    :goto_1
    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "frameCallback == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b()V
    .locals 7

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->i:Lm3/e;

    invoke-interface {v4, v5, v0, v1}, Lm3/g;->z(Lm3/e;J)V

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->i:Lm3/e;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    invoke-virtual {v0, v1}, Lm3/e;->B(Lm3/e$a;)Lm3/e$a;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    invoke-virtual {v0, v2, v3}, Lm3/e$a;->e(J)I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->k:[B

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/g;->a(Lm3/e$a;[B)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    invoke-virtual {v0}, Lm3/e$a;->close()V

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->c:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->i:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->D()Lm3/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;->onReadPong(Lm3/h;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->c:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->i:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->D()Lm3/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;->onReadPing(Lm3/h;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->i:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->i:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->readShort()S

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->i:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/g;->a(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x3ed

    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->c:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;

    invoke-interface {v2, v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->d:Z

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()V
    .locals 6

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->d:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    invoke-interface {v0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v0

    invoke-virtual {v0}, Lm3/d0;->h()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    invoke-interface {v2}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v2

    invoke-virtual {v2}, Lm3/d0;->b()Lm3/d0;

    :try_start_0
    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    invoke-interface {v2}, Lm3/g;->readByte()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    invoke-interface {v3}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    and-int/lit8 v0, v2, 0xf

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->e:I

    and-int/lit16 v0, v2, 0x80

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->g:Z

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->h:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-nez v0, :cond_10

    if-nez v4, :cond_10

    if-nez v2, :cond_10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    iget-boolean v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->a:Z

    if-ne v1, v2, :cond_9

    new-instance v0, Ljava/net/ProtocolException;

    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->a:Z

    if-eqz v1, :cond_8

    const-string v1, "Server-sent frames must not be masked."

    goto :goto_7

    :cond_8
    const-string v1, "Client-sent frames must be masked."

    :goto_7
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    and-int/lit8 v0, v0, 0x7f

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f:J

    const-wide/16 v4, 0x7e

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readShort()S

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f:J

    goto :goto_8

    :cond_a
    const-wide/16 v4, 0x7f

    cmp-long v0, v2, v4

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_b

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame length 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_8
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->h:Z

    if-eqz v0, :cond_e

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f:J

    const-wide/16 v4, 0x7d

    cmp-long v0, v2, v4

    if-gtz v0, :cond_d

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_9
    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->k:[B

    invoke-interface {v0, v1}, Lm3/g;->readFully([B)V

    :cond_f
    return-void

    :cond_10
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    invoke-interface {v3}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    throw v2

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .locals 5

    :goto_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->d:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b:Lm3/g;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->j:Lm3/e;

    invoke-interface {v2, v3, v0, v1}, Lm3/g;->z(Lm3/e;J)V

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->j:Lm3/e;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    invoke-virtual {v0, v1}, Lm3/e;->B(Lm3/e$a;)Lm3/e$a;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->j:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->size()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lm3/e$a;->e(J)I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->k:[B

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/g;->a(Lm3/e$a;[B)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->l:Lm3/e$a;

    invoke-virtual {v0}, Lm3/e$a;->close()V

    :cond_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->g:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->f()V

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->e:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()V
    .locals 4

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->d()V

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->c:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->j:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->K()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->c:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->j:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->D()Lm3/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;->onReadMessage(Lm3/h;)V

    :goto_1
    return-void
.end method

.method private f()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->c()V

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->h:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->c()V

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->b()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->e()V

    :goto_0
    return-void
.end method
