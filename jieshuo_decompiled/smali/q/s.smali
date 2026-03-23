.class public final Lq/s;
.super Lq/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lq/b0;-><init>(Lv/r;)V

    return-void
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 1

    invoke-super {p0, p1}, Lq/b0;->a(Lq/m;)V

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object p1

    invoke-virtual {p0}, Lq/s;->n()Lv/j;

    move-result-object v0

    invoke-virtual {v0}, Lv/j;->getType()Lw/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq/r0;->v(Lw/c;)Lq/q0;

    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->h:Lq/z;

    return-object v0
.end method

.method protected l(Lq/m;)I
    .locals 1

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object p1

    invoke-virtual {p0}, Lq/s;->n()Lv/j;

    move-result-object v0

    invoke-virtual {v0}, Lv/j;->getType()Lw/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq/r0;->t(Lw/c;)I

    move-result p1

    return p1
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "type_idx"

    return-object v0
.end method

.method public n()Lv/j;
    .locals 1

    invoke-virtual {p0}, Lq/b0;->k()Lv/r;

    move-result-object v0

    check-cast v0, Lv/j;

    return-object v0
.end method
