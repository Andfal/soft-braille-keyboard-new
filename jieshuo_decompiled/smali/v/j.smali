.class public final Lv/j;
.super Lv/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv/w;Lv/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lv/r;-><init>(Lv/w;Lv/t;)V

    return-void
.end method


# virtual methods
.method protected e(Lv/a;)I
    .locals 1

    invoke-super {p0, p1}, Lv/r;->e(Lv/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lv/j;

    invoke-virtual {p0}, Lv/r;->h()Lv/t;

    move-result-object v0

    invoke-virtual {v0}, Lv/t;->g()Lv/v;

    move-result-object v0

    invoke-virtual {p1}, Lv/r;->h()Lv/t;

    move-result-object p1

    invoke-virtual {p1}, Lv/t;->g()Lv/v;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv/a;->d(Lv/a;)I

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "field"

    return-object v0
.end method

.method public getType()Lw/c;
    .locals 1

    invoke-virtual {p0}, Lv/r;->h()Lv/t;

    move-result-object v0

    invoke-virtual {v0}, Lv/t;->h()Lw/c;

    move-result-object v0

    return-object v0
.end method
