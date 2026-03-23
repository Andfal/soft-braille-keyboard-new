.class public final Lq/d;
.super Lq/h0;
.source "SourceFile"


# instance fields
.field private e:Lq/c;


# virtual methods
.method public a(Lq/m;)V
    .locals 1

    invoke-virtual {p1}, Lq/m;->u()Lq/g0;

    move-result-object p1

    iget-object v0, p0, Lq/d;->e:Lq/c;

    invoke-virtual {p1, v0}, Lq/g0;->r(Lq/h0;)Lq/h0;

    move-result-object p1

    check-cast p1, Lq/c;

    iput-object p1, p0, Lq/d;->e:Lq/c;

    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->y:Lq/z;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq/d;->e:Lq/c;

    invoke-virtual {v0}, Lq/c;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p(Lq/m;Lx/a;)V
    .locals 2

    iget-object p1, p0, Lq/d;->e:Lq/c;

    invoke-virtual {p1}, Lq/h0;->h()I

    move-result p1

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  annotations_off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p2, v1, v0}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lx/q;->writeInt(I)V

    return-void
.end method
