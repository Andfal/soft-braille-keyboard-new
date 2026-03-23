.class public final Lm3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/f;


# instance fields
.field public final a:Lm3/e;

.field public b:Z

.field public final c:Lm3/a0;


# direct methods
.method public constructor <init>(Lm3/a0;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/u;->c:Lm3/a0;

    new-instance p1, Lm3/e;

    invoke-direct {p1}, Lm3/e;-><init>()V

    iput-object p1, p0, Lm3/u;->a:Lm3/e;

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/String;)Lm3/f;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1}, Lm3/e;->h0(Ljava/lang/String;)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(J)Lm3/f;
    .locals 1

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1, p2}, Lm3/e;->X(J)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5

    iget-boolean v0, p0, Lm3/u;->b:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lm3/u;->c:Lm3/a0;

    iget-object v1, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->size()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lm3/a0;->write(Lm3/e;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lm3/u;->c:Lm3/a0;

    invoke-interface {v1}, Lm3/a0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lm3/u;->b:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    throw v0
.end method

.method public d0(J)Lm3/f;
    .locals 1

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1, p2}, Lm3/e;->W(J)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 5

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lm3/u;->c:Lm3/a0;

    iget-object v1, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v1}, Lm3/e;->size()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lm3/a0;->write(Lm3/e;J)V

    :cond_0
    iget-object v0, p0, Lm3/u;->c:Lm3/a0;

    invoke-interface {v0}, Lm3/a0;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()Lm3/e;
    .locals 1

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    return-object v0
.end method

.method public o(Lm3/c0;)J
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lm3/u;->a:Lm3/e;

    const/16 v3, 0x2000

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, Lm3/c0;->Y(Lm3/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    goto :goto_0
.end method

.method public p()Lm3/e;
    .locals 1

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    return-object v0
.end method

.method public q()Lm3/f;
    .locals 5

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lm3/u;->c:Lm3/a0;

    iget-object v3, p0, Lm3/u;->a:Lm3/e;

    invoke-interface {v2, v3, v0, v1}, Lm3/a0;->write(Lm3/e;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Lm3/f;
    .locals 5

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lm3/u;->c:Lm3/a0;

    iget-object v3, p0, Lm3/u;->a:Lm3/e;

    invoke-interface {v2, v3, v0, v1}, Lm3/a0;->write(Lm3/e;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lm3/u;->c:Lm3/a0;

    invoke-interface {v0}, Lm3/a0;->timeout()Lm3/d0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/u;->c:Lm3/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lm3/h;)Lm3/f;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1}, Lm3/e;->R(Lm3/h;)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1}, Lm3/e;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lm3/f;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1}, Lm3/e;->S([B)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lm3/f;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1, p2, p3}, Lm3/e;->U([BII)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lm3/e;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1, p2, p3}, Lm3/e;->write(Lm3/e;J)V

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lm3/f;
    .locals 1

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1}, Lm3/e;->V(I)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lm3/f;
    .locals 1

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1}, Lm3/e;->Z(I)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lm3/f;
    .locals 1

    iget-boolean v0, p0, Lm3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/u;->a:Lm3/e;

    invoke-virtual {v0, p1}, Lm3/e;->b0(I)Lm3/e;

    invoke-virtual {p0}, Lm3/u;->t()Lm3/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
