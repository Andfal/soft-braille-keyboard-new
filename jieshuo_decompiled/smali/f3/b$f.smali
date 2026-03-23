.class final Lf3/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:Lm3/l;

.field private b:Z

.field final synthetic c:Lf3/b;


# direct methods
.method public constructor <init>(Lf3/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf3/b$f;->c:Lf3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm3/l;

    invoke-static {p1}, Lf3/b;->k(Lf3/b;)Lm3/f;

    move-result-object p1

    invoke-interface {p1}, Lm3/a0;->timeout()Lm3/d0;

    move-result-object p1

    invoke-direct {v0, p1}, Lm3/l;-><init>(Lm3/d0;)V

    iput-object v0, p0, Lf3/b$f;->a:Lm3/l;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lf3/b$f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf3/b$f;->b:Z

    iget-object v0, p0, Lf3/b$f;->c:Lf3/b;

    iget-object v1, p0, Lf3/b$f;->a:Lm3/l;

    invoke-static {v0, v1}, Lf3/b;->h(Lf3/b;Lm3/l;)V

    iget-object v0, p0, Lf3/b$f;->c:Lf3/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lf3/b;->o(Lf3/b;I)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lf3/b$f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf3/b$f;->c:Lf3/b;

    invoke-static {v0}, Lf3/b;->k(Lf3/b;)Lm3/f;

    move-result-object v0

    invoke-interface {v0}, Lm3/f;->flush()V

    return-void
.end method

.method public timeout()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lf3/b$f;->a:Lm3/l;

    return-object v0
.end method

.method public write(Lm3/e;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lf3/b$f;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lz2/c;->i(JJJ)V

    iget-object v0, p0, Lf3/b$f;->c:Lf3/b;

    invoke-static {v0}, Lf3/b;->k(Lf3/b;)Lm3/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lm3/a0;->write(Lm3/e;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
