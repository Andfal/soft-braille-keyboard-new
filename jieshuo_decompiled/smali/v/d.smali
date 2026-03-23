.class public abstract Lv/d;
.super Lv/r;
.source "SourceFile"


# instance fields
.field private final c:Lw/a;

.field private d:Lw/a;


# direct methods
.method constructor <init>(Lv/w;Lv/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lv/r;-><init>(Lv/w;Lv/t;)V

    invoke-virtual {p0}, Lv/r;->h()Lv/t;

    move-result-object p1

    invoke-virtual {p1}, Lv/t;->g()Lv/v;

    move-result-object p1

    invoke-virtual {p1}, Lv/v;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw/a;->f(Ljava/lang/String;)Lw/a;

    move-result-object p1

    iput-object p1, p0, Lv/d;->c:Lw/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lv/d;->d:Lw/a;

    return-void
.end method


# virtual methods
.method protected final e(Lv/a;)I
    .locals 1

    invoke-super {p0, p1}, Lv/r;->e(Lv/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lv/d;

    iget-object v0, p0, Lv/d;->c:Lw/a;

    iget-object p1, p1, Lv/d;->c:Lw/a;

    invoke-virtual {v0, p1}, Lw/a;->a(Lw/a;)I

    move-result p1

    return p1
.end method

.method public final getType()Lw/c;
    .locals 1

    iget-object v0, p0, Lv/d;->c:Lw/a;

    invoke-virtual {v0}, Lw/a;->e()Lw/c;

    move-result-object v0

    return-object v0
.end method

.method public final i(Z)I
    .locals 0

    invoke-virtual {p0, p1}, Lv/d;->k(Z)Lw/a;

    move-result-object p1

    invoke-virtual {p1}, Lw/a;->d()Lw/b;

    move-result-object p1

    invoke-virtual {p1}, Lw/b;->r()I

    move-result p1

    return p1
.end method

.method public final j()Lw/a;
    .locals 1

    iget-object v0, p0, Lv/d;->c:Lw/a;

    return-object v0
.end method

.method public final k(Z)Lw/a;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lv/d;->c:Lw/a;

    return-object p1

    :cond_0
    iget-object p1, p0, Lv/d;->d:Lw/a;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lv/r;->g()Lv/w;

    move-result-object p1

    invoke-virtual {p1}, Lv/w;->g()Lw/c;

    move-result-object p1

    iget-object v0, p0, Lv/d;->c:Lw/a;

    invoke-virtual {v0, p1}, Lw/a;->i(Lw/c;)Lw/a;

    move-result-object p1

    iput-object p1, p0, Lv/d;->d:Lw/a;

    :cond_1
    iget-object p1, p0, Lv/d;->d:Lw/a;

    return-object p1
.end method
