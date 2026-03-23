.class public final Lq/s0;
.super Lq/h0;
.source "SourceFile"


# instance fields
.field private final e:Lw/e;


# direct methods
.method public constructor <init>(Lw/e;)V
    .locals 2

    invoke-interface {p1}, Lw/e;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lq/h0;-><init>(II)V

    iput-object p1, p0, Lq/s0;->e:Lw/e;

    return-void
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 3

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object p1

    iget-object v0, p0, Lq/s0;->e:Lw/e;

    invoke-interface {v0}, Lw/e;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lq/s0;->e:Lw/e;

    invoke-interface {v2, v1}, Lw/e;->getType(I)Lw/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Lq/r0;->v(Lw/c;)Lq/q0;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->l:Lq/z;

    return-object v0
.end method

.method protected g(Lq/h0;)I
    .locals 1

    iget-object v0, p0, Lq/s0;->e:Lw/e;

    check-cast p1, Lq/s0;

    iget-object p1, p1, Lq/s0;->e:Lw/e;

    invoke-static {v0, p1}, Lw/b;->p(Lw/e;Lw/e;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lq/s0;->e:Lw/e;

    invoke-static {v0}, Lw/b;->s(Lw/e;)I

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected p(Lq/m;Lx/a;)V
    .locals 7

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object p1

    iget-object v0, p0, Lq/s0;->e:Lw/e;

    invoke-interface {v0}, Lw/e;->size()I

    move-result v0

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/h0;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type_list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p2, v3, v1}, Lx/a;->d(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lq/s0;->e:Lw/e;

    invoke-interface {v3, v1}, Lw/e;->getType(I)Lw/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Lq/r0;->t(Lw/c;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lw/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p2, v4, v3}, Lx/a;->d(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lx/q;->writeInt(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lq/s0;->e:Lw/e;

    invoke-interface {v1, v2}, Lw/e;->getType(I)Lw/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lq/r0;->t(Lw/c;)I

    move-result v1

    invoke-interface {p2, v1}, Lx/q;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public q()Lw/e;
    .locals 1

    iget-object v0, p0, Lq/s0;->e:Lw/e;

    return-object v0
.end method
