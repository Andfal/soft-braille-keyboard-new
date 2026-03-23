.class public final Ll3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lm3/e;

.field private final b:Lm3/e;

.field private c:Z

.field private d:Ll3/a;

.field private final e:[B

.field private final f:Lm3/e$a;

.field private final g:Z

.field private final h:Lm3/f;

.field private final i:Ljava/util/Random;

.field private final j:Z

.field private final k:Z

.field private final l:J


# direct methods
.method public constructor <init>(ZLm3/f;Ljava/util/Random;ZZJ)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll3/h;->g:Z

    iput-object p2, p0, Ll3/h;->h:Lm3/f;

    iput-object p3, p0, Ll3/h;->i:Ljava/util/Random;

    iput-boolean p4, p0, Ll3/h;->j:Z

    iput-boolean p5, p0, Ll3/h;->k:Z

    iput-wide p6, p0, Ll3/h;->l:J

    new-instance p3, Lm3/e;

    invoke-direct {p3}, Lm3/e;-><init>()V

    iput-object p3, p0, Ll3/h;->a:Lm3/e;

    invoke-interface {p2}, Lm3/f;->n()Lm3/e;

    move-result-object p2

    iput-object p2, p0, Ll3/h;->b:Lm3/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Ll3/h;->e:[B

    if-eqz p1, :cond_1

    new-instance p2, Lm3/e$a;

    invoke-direct {p2}, Lm3/e$a;-><init>()V

    :cond_1
    iput-object p2, p0, Ll3/h;->f:Lm3/e$a;

    return-void
.end method

.method private final c(ILm3/h;)V
    .locals 6

    iget-boolean v0, p0, Ll3/h;->c:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lm3/h;->t()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    or-int/lit16 p1, p1, 0x80

    iget-object v1, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {v1, p1}, Lm3/e;->V(I)Lm3/e;

    iget-boolean p1, p0, Ll3/h;->g:Z

    if-eqz p1, :cond_1

    or-int/lit16 p1, v0, 0x80

    iget-object v1, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {v1, p1}, Lm3/e;->V(I)Lm3/e;

    iget-object p1, p0, Ll3/h;->i:Ljava/util/Random;

    iget-object v1, p0, Ll3/h;->e:[B

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    iget-object v1, p0, Ll3/h;->e:[B

    invoke-virtual {p1, v1}, Lm3/e;->S([B)Lm3/e;

    if-lez v0, :cond_2

    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v0

    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p1, p2}, Lm3/e;->R(Lm3/h;)Lm3/e;

    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    iget-object p2, p0, Ll3/h;->f:Lm3/e$a;

    invoke-static {p2}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lm3/e;->B(Lm3/e$a;)Lm3/e$a;

    iget-object p1, p0, Ll3/h;->f:Lm3/e$a;

    invoke-virtual {p1, v0, v1}, Lm3/e$a;->e(J)I

    sget-object p1, Ll3/f;->a:Ll3/f;

    iget-object p2, p0, Ll3/h;->f:Lm3/e$a;

    iget-object v0, p0, Ll3/h;->e:[B

    invoke-virtual {p1, p2, v0}, Ll3/f;->b(Lm3/e$a;[B)V

    iget-object p1, p0, Ll3/h;->f:Lm3/e$a;

    invoke-virtual {p1}, Lm3/e$a;->close()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p1, v0}, Lm3/e;->V(I)Lm3/e;

    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p1, p2}, Lm3/e;->R(Lm3/h;)Lm3/e;

    :cond_2
    :goto_1
    iget-object p1, p0, Ll3/h;->h:Lm3/f;

    invoke-interface {p1}, Lm3/f;->flush()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(ILm3/h;)V
    .locals 1

    sget-object v0, Lm3/h;->d:Lm3/h;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ll3/f;->a:Ll3/f;

    invoke-virtual {v0, p1}, Ll3/f;->c(I)V

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
    invoke-direct {p0, p1, v0}, Ll3/h;->c(ILm3/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Ll3/h;->c:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Ll3/h;->c:Z

    throw p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Ll3/h;->d:Ll3/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll3/a;->close()V

    :cond_0
    return-void
.end method

.method public final e(ILm3/h;)V
    .locals 5

    const-string v0, "data"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ll3/h;->c:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ll3/h;->a:Lm3/e;

    invoke-virtual {v0, p2}, Lm3/e;->R(Lm3/h;)Lm3/e;

    const/16 v0, 0x80

    or-int/2addr p1, v0

    iget-boolean v1, p0, Ll3/h;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lm3/h;->t()I

    move-result p2

    int-to-long v1, p2

    iget-wide v3, p0, Ll3/h;->l:J

    cmp-long p2, v1, v3

    if-ltz p2, :cond_1

    iget-object p2, p0, Ll3/h;->d:Ll3/a;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ll3/a;

    iget-boolean v1, p0, Ll3/h;->k:Z

    invoke-direct {p2, v1}, Ll3/a;-><init>(Z)V

    iput-object p2, p0, Ll3/h;->d:Ll3/a;

    :goto_0
    iget-object v1, p0, Ll3/h;->a:Lm3/e;

    invoke-virtual {p2, v1}, Ll3/a;->b(Lm3/e;)V

    or-int/lit8 p1, p1, 0x40

    :cond_1
    iget-object p2, p0, Ll3/h;->a:Lm3/e;

    invoke-virtual {p2}, Lm3/e;->size()J

    move-result-wide v1

    iget-object p2, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p2, p1}, Lm3/e;->V(I)Lm3/e;

    iget-boolean p1, p0, Ll3/h;->g:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-wide/16 p1, 0x7d

    cmp-long v3, v1, p1

    if-gtz v3, :cond_3

    long-to-int p1, v1

    or-int/2addr p1, v0

    iget-object p2, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p2, p1}, Lm3/e;->V(I)Lm3/e;

    goto :goto_2

    :cond_3
    const-wide/32 p1, 0xffff

    cmp-long v3, v1, p1

    if-gtz v3, :cond_4

    or-int/lit8 p1, v0, 0x7e

    iget-object p2, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p2, p1}, Lm3/e;->V(I)Lm3/e;

    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    long-to-int p2, v1

    invoke-virtual {p1, p2}, Lm3/e;->b0(I)Lm3/e;

    goto :goto_2

    :cond_4
    or-int/lit8 p1, v0, 0x7f

    iget-object p2, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p2, p1}, Lm3/e;->V(I)Lm3/e;

    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    invoke-virtual {p1, v1, v2}, Lm3/e;->a0(J)Lm3/e;

    :goto_2
    iget-boolean p1, p0, Ll3/h;->g:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Ll3/h;->i:Ljava/util/Random;

    iget-object p2, p0, Ll3/h;->e:[B

    invoke-static {p2}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    iget-object p2, p0, Ll3/h;->e:[B

    invoke-virtual {p1, p2}, Lm3/e;->S([B)Lm3/e;

    const-wide/16 p1, 0x0

    cmp-long v0, v1, p1

    if-lez v0, :cond_5

    iget-object v0, p0, Ll3/h;->a:Lm3/e;

    iget-object v3, p0, Ll3/h;->f:Lm3/e$a;

    invoke-static {v3}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lm3/e;->B(Lm3/e$a;)Lm3/e$a;

    iget-object v0, p0, Ll3/h;->f:Lm3/e$a;

    invoke-virtual {v0, p1, p2}, Lm3/e$a;->e(J)I

    sget-object p1, Ll3/f;->a:Ll3/f;

    iget-object p2, p0, Ll3/h;->f:Lm3/e$a;

    iget-object v0, p0, Ll3/h;->e:[B

    invoke-virtual {p1, p2, v0}, Ll3/f;->b(Lm3/e$a;[B)V

    iget-object p1, p0, Ll3/h;->f:Lm3/e$a;

    invoke-virtual {p1}, Lm3/e$a;->close()V

    :cond_5
    iget-object p1, p0, Ll3/h;->b:Lm3/e;

    iget-object p2, p0, Ll3/h;->a:Lm3/e;

    invoke-virtual {p1, p2, v1, v2}, Lm3/e;->write(Lm3/e;J)V

    iget-object p1, p0, Ll3/h;->h:Lm3/f;

    invoke-interface {p1}, Lm3/f;->q()Lm3/f;

    return-void

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lm3/h;)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Ll3/h;->c(ILm3/h;)V

    return-void
.end method

.method public final g(Lm3/h;)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Ll3/h;->c(ILm3/h;)V

    return-void
.end method
