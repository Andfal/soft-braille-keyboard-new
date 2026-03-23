.class public final Lq/e0;
.super Lq/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lq/b0;-><init>(Lv/r;)V

    return-void
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 1

    invoke-super {p0, p1}, Lq/b0;->a(Lq/m;)V

    invoke-virtual {p1}, Lq/m;->o()Lq/k0;

    move-result-object p1

    invoke-virtual {p0}, Lq/e0;->n()Lv/d;

    move-result-object v0

    invoke-virtual {v0}, Lv/d;->j()Lw/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq/k0;->s(Lw/a;)Lq/j0;

    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->i:Lq/z;

    return-object v0
.end method

.method protected l(Lq/m;)I
    .locals 1

    invoke-virtual {p1}, Lq/m;->o()Lq/k0;

    move-result-object p1

    invoke-virtual {p0}, Lq/e0;->n()Lv/d;

    move-result-object v0

    invoke-virtual {v0}, Lv/d;->j()Lw/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq/k0;->r(Lw/a;)I

    move-result p1

    return p1
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "proto_idx"

    return-object v0
.end method

.method public n()Lv/d;
    .locals 1

    invoke-virtual {p0}, Lq/b0;->k()Lv/r;

    move-result-object v0

    check-cast v0, Lv/d;

    return-object v0
.end method
