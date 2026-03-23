.class public final Lq/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/r;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/r;",
        "Ljava/lang/Comparable<",
        "Lq/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv/j;

.field private b:Lq/c;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq/r;->a:Lv/j;

    invoke-virtual {v1}, Lv/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq/r;->b:Lq/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lq/r;

    invoke-virtual {p0, p1}, Lq/r;->e(Lq/r;)I

    move-result p1

    return p1
.end method

.method public d(Lq/m;)V
    .locals 2

    invoke-virtual {p1}, Lq/m;->i()Lq/t;

    move-result-object v0

    invoke-virtual {p1}, Lq/m;->u()Lq/g0;

    move-result-object p1

    iget-object v1, p0, Lq/r;->a:Lv/j;

    invoke-virtual {v0, v1}, Lq/t;->t(Lv/j;)Lq/s;

    iget-object v0, p0, Lq/r;->b:Lq/c;

    invoke-virtual {p1, v0}, Lq/g0;->r(Lq/h0;)Lq/h0;

    move-result-object p1

    check-cast p1, Lq/c;

    iput-object p1, p0, Lq/r;->b:Lq/c;

    return-void
.end method

.method public e(Lq/r;)I
    .locals 1

    iget-object v0, p0, Lq/r;->a:Lv/j;

    iget-object p1, p1, Lq/r;->a:Lv/j;

    invoke-virtual {v0, p1}, Lv/a;->d(Lv/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lq/r;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lq/r;->a:Lv/j;

    check-cast p1, Lq/r;

    iget-object p1, p1, Lq/r;->a:Lv/j;

    invoke-virtual {v0, p1}, Lv/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lq/m;Lx/a;)V
    .locals 4

    invoke-virtual {p1}, Lq/m;->i()Lq/t;

    move-result-object p1

    iget-object v0, p0, Lq/r;->a:Lv/j;

    invoke-virtual {p1, v0}, Lq/t;->s(Lv/j;)I

    move-result p1

    iget-object v0, p0, Lq/r;->b:Lq/c;

    invoke-virtual {v0}, Lq/h0;->h()I

    move-result v0

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lq/r;->a:Lv/j;

    invoke-virtual {v2}, Lv/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      field_idx:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v0}, Lx/q;->writeInt(I)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lq/r;->a:Lv/j;

    invoke-virtual {v0}, Lv/r;->hashCode()I

    move-result v0

    return v0
.end method
