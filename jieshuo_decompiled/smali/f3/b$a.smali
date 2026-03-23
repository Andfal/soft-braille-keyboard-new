.class abstract Lf3/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
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

    iput-object p1, p0, Lf3/b$a;->c:Lf3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm3/l;

    invoke-static {p1}, Lf3/b;->l(Lf3/b;)Lm3/g;

    move-result-object p1

    invoke-interface {p1}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object p1

    invoke-direct {v0, p1}, Lm3/l;-><init>(Lm3/d0;)V

    iput-object v0, p0, Lf3/b$a;->a:Lm3/l;

    return-void
.end method


# virtual methods
.method public Y(Lm3/e;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lf3/b$a;->c:Lf3/b;

    invoke-static {v0}, Lf3/b;->l(Lf3/b;)Lm3/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lm3/c0;->Y(Lm3/e;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lf3/b$a;->c:Lf3/b;

    invoke-virtual {p2}, Lf3/b;->getConnection()Ld3/e;

    move-result-object p2

    invoke-virtual {p2}, Ld3/e;->z()V

    invoke-virtual {p0}, Lf3/b$a;->c()V

    throw p1
.end method

.method protected final b()Z
    .locals 1

    iget-boolean v0, p0, Lf3/b$a;->b:Z

    return v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lf3/b$a;->c:Lf3/b;

    invoke-static {v0}, Lf3/b;->m(Lf3/b;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf3/b$a;->c:Lf3/b;

    invoke-static {v0}, Lf3/b;->m(Lf3/b;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lf3/b$a;->c:Lf3/b;

    iget-object v2, p0, Lf3/b$a;->a:Lm3/l;

    invoke-static {v0, v2}, Lf3/b;->h(Lf3/b;Lm3/l;)V

    iget-object v0, p0, Lf3/b$a;->c:Lf3/b;

    invoke-static {v0, v1}, Lf3/b;->o(Lf3/b;I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf3/b$a;->c:Lf3/b;

    invoke-static {v2}, Lf3/b;->m(Lf3/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lf3/b$a;->b:Z

    return-void
.end method

.method public timeout()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lf3/b$a;->a:Lm3/l;

    return-object v0
.end method
