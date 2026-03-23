.class public final Ll3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/g$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Lm3/e;

.field private final h:Lm3/e;

.field private i:Ll3/c;

.field private final j:[B

.field private final k:Lm3/e$a;

.field private final l:Z

.field private final m:Lm3/g;

.field private final n:Ll3/g$a;

.field private final o:Z

.field private final p:Z


# direct methods
.method public constructor <init>(ZLm3/g;Ll3/g$a;ZZ)V
    .locals 1

    const-string v0, "source"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameCallback"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll3/g;->l:Z

    iput-object p2, p0, Ll3/g;->m:Lm3/g;

    iput-object p3, p0, Ll3/g;->n:Ll3/g$a;

    iput-boolean p4, p0, Ll3/g;->o:Z

    iput-boolean p5, p0, Ll3/g;->p:Z

    new-instance p2, Lm3/e;

    invoke-direct {p2}, Lm3/e;-><init>()V

    iput-object p2, p0, Ll3/g;->g:Lm3/e;

    new-instance p2, Lm3/e;

    invoke-direct {p2}, Lm3/e;-><init>()V

    iput-object p2, p0, Ll3/g;->h:Lm3/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    new-array p3, p3, [B

    :goto_0
    iput-object p3, p0, Ll3/g;->j:[B

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lm3/e$a;

    invoke-direct {p2}, Lm3/e$a;-><init>()V

    :goto_1
    iput-object p2, p0, Ll3/g;->k:Lm3/e$a;

    return-void
.end method

.method private final c()V
    .locals 7

    iget-wide v0, p0, Ll3/g;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Ll3/g;->m:Lm3/g;

    iget-object v5, p0, Ll3/g;->g:Lm3/e;

    invoke-interface {v4, v5, v0, v1}, Lm3/g;->z(Lm3/e;J)V

    iget-boolean v0, p0, Ll3/g;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/g;->g:Lm3/e;

    iget-object v1, p0, Ll3/g;->k:Lm3/e$a;

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lm3/e;->B(Lm3/e$a;)Lm3/e$a;

    iget-object v0, p0, Ll3/g;->k:Lm3/e$a;

    invoke-virtual {v0, v2, v3}, Lm3/e$a;->e(J)I

    sget-object v0, Ll3/f;->a:Ll3/f;

    iget-object v1, p0, Ll3/g;->k:Lm3/e$a;

    iget-object v4, p0, Ll3/g;->j:[B

    invoke-static {v4}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Ll3/f;->b(Lm3/e$a;[B)V

    iget-object v0, p0, Ll3/g;->k:Lm3/e$a;

    invoke-virtual {v0}, Lm3/e$a;->close()V

    :cond_0
    iget v0, p0, Ll3/g;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll3/g;->b:I

    invoke-static {v2}, Lz2/c;->L(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Ll3/g;->n:Ll3/g$a;

    iget-object v1, p0, Ll3/g;->g:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->D()Lm3/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/g$a;->onReadPong(Lm3/h;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Ll3/g;->n:Ll3/g$a;

    iget-object v1, p0, Ll3/g;->g:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->D()Lm3/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/g$a;->onReadPing(Lm3/h;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Ll3/g;->g:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Ll3/g;->g:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->readShort()S

    move-result v0

    iget-object v1, p0, Ll3/g;->g:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->K()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ll3/f;->a:Ll3/f;

    invoke-virtual {v2, v0}, Ll3/f;->a(I)Ljava/lang/String;

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
    iget-object v2, p0, Ll3/g;->n:Ll3/g$a;

    invoke-interface {v2, v0, v1}, Ll3/g$a;->onReadClose(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/g;->a:Z

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

.method private final e()V
    .locals 8

    iget-boolean v0, p0, Ll3/g;->a:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Ll3/g;->m:Lm3/g;

    invoke-interface {v0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v0

    invoke-virtual {v0}, Lm3/d0;->h()J

    move-result-wide v0

    iget-object v2, p0, Ll3/g;->m:Lm3/g;

    invoke-interface {v2}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v2

    invoke-virtual {v2}, Lm3/d0;->b()Lm3/d0;

    :try_start_0
    iget-object v2, p0, Ll3/g;->m:Lm3/g;

    invoke-interface {v2}, Lm3/g;->readByte()B

    move-result v2

    const/16 v3, 0xff

    invoke-static {v2, v3}, Lz2/c;->b(BI)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Ll3/g;->m:Lm3/g;

    invoke-interface {v4}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v5}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    and-int/lit8 v0, v2, 0xf

    iput v0, p0, Ll3/g;->b:I

    and-int/lit16 v1, v2, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Ll3/g;->d:Z

    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, p0, Ll3/g;->e:Z

    if-eqz v6, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const-string v6, "Unexpected rsv1 flag"

    if-eq v0, v5, :cond_6

    const/4 v7, 0x2

    if-eq v0, v7, :cond_6

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v1, :cond_8

    iget-boolean v0, p0, Ll3/g;->o:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Ll3/g;->f:Z

    :goto_5
    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_15

    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_14

    iget-object v0, p0, Ll3/g;->m:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readByte()B

    move-result v0

    invoke-static {v0, v3}, Lz2/c;->b(BI)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_b

    const/4 v4, 0x1

    :cond_b
    iget-boolean v1, p0, Ll3/g;->l:Z

    if-ne v4, v1, :cond_d

    new-instance v0, Ljava/net/ProtocolException;

    iget-boolean v1, p0, Ll3/g;->l:Z

    if-eqz v1, :cond_c

    const-string v1, "Server-sent frames must not be masked."

    goto :goto_8

    :cond_c
    const-string v1, "Client-sent frames must be masked."

    :goto_8
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/16 v1, 0x7f

    and-int/2addr v0, v1

    int-to-long v2, v0

    iput-wide v2, p0, Ll3/g;->c:J

    const/16 v0, 0x7e

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-nez v0, :cond_e

    iget-object v0, p0, Ll3/g;->m:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readShort()S

    move-result v0

    const v1, 0xffff

    invoke-static {v0, v1}, Lz2/c;->c(SI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ll3/g;->c:J

    goto :goto_9

    :cond_e
    int-to-long v0, v1

    cmp-long v5, v2, v0

    if-nez v5, :cond_10

    iget-object v0, p0, Ll3/g;->m:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ll3/g;->c:J

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_f

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame length 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ll3/g;->c:J

    invoke-static {v2, v3}, Lz2/c;->M(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    iget-boolean v0, p0, Ll3/g;->e:Z

    if-eqz v0, :cond_12

    iget-wide v0, p0, Ll3/g;->c:J

    const-wide/16 v2, 0x7d

    cmp-long v5, v0, v2

    if-gtz v5, :cond_11

    goto :goto_a

    :cond_11
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_a
    if-eqz v4, :cond_13

    iget-object v0, p0, Ll3/g;->m:Lm3/g;

    iget-object v1, p0, Ll3/g;->j:[B

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lm3/g;->readFully([B)V

    :cond_13
    return-void

    :cond_14
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected rsv3 flag"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected rsv2 flag"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Ll3/g;->m:Lm3/g;

    invoke-interface {v3}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    throw v2

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final f()V
    .locals 5

    :goto_0
    iget-boolean v0, p0, Ll3/g;->a:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Ll3/g;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Ll3/g;->m:Lm3/g;

    iget-object v3, p0, Ll3/g;->h:Lm3/e;

    invoke-interface {v2, v3, v0, v1}, Lm3/g;->z(Lm3/e;J)V

    iget-boolean v0, p0, Ll3/g;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/g;->h:Lm3/e;

    iget-object v1, p0, Ll3/g;->k:Lm3/e$a;

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lm3/e;->B(Lm3/e$a;)Lm3/e$a;

    iget-object v0, p0, Ll3/g;->k:Lm3/e$a;

    iget-object v1, p0, Ll3/g;->h:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->size()J

    move-result-wide v1

    iget-wide v3, p0, Ll3/g;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lm3/e$a;->e(J)I

    sget-object v0, Ll3/f;->a:Ll3/f;

    iget-object v1, p0, Ll3/g;->k:Lm3/e$a;

    iget-object v2, p0, Ll3/g;->j:[B

    invoke-static {v2}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ll3/f;->b(Lm3/e$a;[B)V

    iget-object v0, p0, Ll3/g;->k:Lm3/e$a;

    invoke-virtual {v0}, Lm3/e$a;->close()V

    :cond_0
    iget-boolean v0, p0, Ll3/g;->d:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Ll3/g;->h()V

    iget v0, p0, Ll3/g;->b:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll3/g;->b:I

    invoke-static {v2}, Lz2/c;->L(I)Ljava/lang/String;

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

.method private final g()V
    .locals 4

    iget v0, p0, Ll3/g;->b:I

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

    invoke-static {v0}, Lz2/c;->L(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Ll3/g;->f()V

    iget-boolean v2, p0, Ll3/g;->f:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Ll3/g;->i:Ll3/c;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ll3/c;

    iget-boolean v3, p0, Ll3/g;->p:Z

    invoke-direct {v2, v3}, Ll3/c;-><init>(Z)V

    iput-object v2, p0, Ll3/g;->i:Ll3/c;

    :goto_1
    iget-object v3, p0, Ll3/g;->h:Lm3/e;

    invoke-virtual {v2, v3}, Ll3/c;->b(Lm3/e;)V

    :cond_3
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ll3/g;->n:Ll3/g$a;

    iget-object v1, p0, Ll3/g;->h:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->K()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/g$a;->onReadMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Ll3/g;->n:Ll3/g$a;

    iget-object v1, p0, Ll3/g;->h:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->D()Lm3/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/g$a;->onReadMessage(Lm3/h;)V

    :goto_2
    return-void
.end method

.method private final h()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Ll3/g;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Ll3/g;->e()V

    iget-boolean v0, p0, Ll3/g;->e:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Ll3/g;->c()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    invoke-direct {p0}, Ll3/g;->e()V

    iget-boolean v0, p0, Ll3/g;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ll3/g;->c()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ll3/g;->g()V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Ll3/g;->i:Ll3/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll3/c;->close()V

    :cond_0
    return-void
.end method
