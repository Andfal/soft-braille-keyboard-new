.class public final Lm3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/a0;


# instance fields
.field private a:Z

.field private final b:Lm3/f;

.field private final c:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Lm3/a0;Ljava/util/zip/Deflater;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/p;->a(Lm3/a0;)Lm3/f;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lm3/i;-><init>(Lm3/f;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method public constructor <init>(Lm3/f;Ljava/util/zip/Deflater;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/i;->b:Lm3/f;

    iput-object p2, p0, Lm3/i;->c:Ljava/util/zip/Deflater;

    return-void
.end method

.method private final b(Z)V
    .locals 7

    iget-object v0, p0, Lm3/i;->b:Lm3/f;

    invoke-interface {v0}, Lm3/f;->n()Lm3/e;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm3/e;->P(I)Lm3/w;

    move-result-object v1

    iget-object v2, p0, Lm3/i;->c:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lm3/w;->a:[B

    iget v4, v1, Lm3/w;->c:I

    rsub-int v5, v4, 0x2000

    if-eqz p1, :cond_1

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    iget v3, v1, Lm3/w;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lm3/w;->c:I

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v3

    int-to-long v1, v2

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lm3/e;->M(J)V

    iget-object v1, p0, Lm3/i;->b:Lm3/f;

    invoke-interface {v1}, Lm3/f;->t()Lm3/f;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lm3/i;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, v1, Lm3/w;->b:I

    iget v2, v1, Lm3/w;->c:I

    if-ne p1, v2, :cond_3

    invoke-virtual {v1}, Lm3/w;->b()Lm3/w;

    move-result-object p1

    iput-object p1, v0, Lm3/e;->a:Lm3/w;

    invoke-static {v1}, Lm3/y;->b(Lm3/w;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lm3/i;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lm3/i;->b(Z)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lm3/i;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lm3/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lm3/i;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lm3/i;->b:Lm3/f;

    invoke-interface {v1}, Lm3/a0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lm3/i;->a:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    throw v0
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm3/i;->b(Z)V

    iget-object v0, p0, Lm3/i;->b:Lm3/f;

    invoke-interface {v0}, Lm3/f;->flush()V

    return-void
.end method

.method public timeout()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lm3/i;->b:Lm3/f;

    invoke-interface {v0}, Lm3/a0;->timeout()Lm3/d0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/i;->b:Lm3/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lm3/e;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lm3/c;->b(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget-object v0, p1, Lm3/e;->a:Lm3/w;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    iget v1, v0, Lm3/w;->c:I

    iget v2, v0, Lm3/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lm3/i;->c:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lm3/w;->a:[B

    iget v4, v0, Lm3/w;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lm3/i;->b(Z)V

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lm3/e;->M(J)V

    iget v1, v0, Lm3/w;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lm3/w;->b:I

    iget v2, v0, Lm3/w;->c:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lm3/w;->b()Lm3/w;

    move-result-object v1

    iput-object v1, p1, Lm3/e;->a:Lm3/w;

    invoke-static {v0}, Lm3/y;->b(Lm3/w;)V

    :cond_0
    sub-long/2addr p2, v5

    goto :goto_0

    :cond_1
    return-void
.end method
