.class public final Ll3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lm3/e;

.field private final b:Ljava/util/zip/Deflater;

.field private final c:Lm3/i;

.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll3/a;->d:Z

    new-instance p1, Lm3/e;

    invoke-direct {p1}, Lm3/e;-><init>()V

    iput-object p1, p0, Ll3/a;->a:Lm3/e;

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Ll3/a;->b:Ljava/util/zip/Deflater;

    new-instance v1, Lm3/i;

    invoke-direct {v1, p1, v0}, Lm3/i;-><init>(Lm3/a0;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Ll3/a;->c:Lm3/i;

    return-void
.end method

.method private final c(Lm3/e;Lm3/h;)Z
    .locals 4

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v0

    invoke-virtual {p2}, Lm3/h;->t()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1, p2}, Lm3/e;->y(JLm3/h;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final b(Lm3/e;)V
    .locals 7

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/a;->a:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ll3/a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/a;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    :cond_1
    iget-object v0, p0, Ll3/a;->c:Lm3/i;

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lm3/i;->write(Lm3/e;J)V

    iget-object v0, p0, Ll3/a;->c:Lm3/i;

    invoke-virtual {v0}, Lm3/i;->flush()V

    iget-object v0, p0, Ll3/a;->a:Lm3/e;

    invoke-static {}, Ll3/b;->a()Lm3/h;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ll3/a;->c(Lm3/e;Lm3/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll3/a;->a:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v0

    const/4 v2, 0x4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Ll3/a;->a:Lm3/e;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4, v3}, Lm3/e;->C(Lm3/e;Lm3/e$a;ILjava/lang/Object;)Lm3/e$a;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v0, v1}, Lm3/e$a;->c(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Lr2/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p1}, Lr2/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v0, p0, Ll3/a;->a:Lm3/e;

    invoke-virtual {v0, v5}, Lm3/e;->V(I)Lm3/e;

    :goto_1
    iget-object v0, p0, Ll3/a;->a:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lm3/e;->write(Lm3/e;J)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Ll3/a;->c:Lm3/i;

    invoke-virtual {v0}, Lm3/i;->close()V

    return-void
.end method
