.class public Lp0/h;
.super Lp0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lp0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lp0/b;-><init>(Lp0/c;)V

    return-void
.end method

.method private a(Ll1/h;)V
    .locals 2

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->C:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll1/h;->k(Ll0/f;)V

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/a;->U(Ll1/h;)V

    return-void
.end method


# virtual methods
.method public b()Ll0/f;
    .locals 2

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0}, Lp0/c;->h0()Ll0/f;

    move-result-object v0

    iget-object v1, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v1}, Lp0/c;->e0()Lp0/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lp0/b;->D(Lp0/b;)V

    return-object v0
.end method

.method public b(Ll1/i;)V
    .locals 0

    invoke-static {p1}, Ll1/h;->p(Ll1/i;)Ll1/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lp0/h;->a(Ll1/h;)V

    return-void
.end method

.method public d(Ll1/g;)I
    .locals 0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    invoke-direct {p0, p1}, Lp0/h;->a(Ll1/h;)V

    const/4 p1, -0x1

    return p1
.end method

.method public e(Ll1/f;)I
    .locals 0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    invoke-direct {p0, p1}, Lp0/h;->a(Ll1/h;)V

    const/4 p1, -0x1

    return p1
.end method

.method public f(Ll1/e;)I
    .locals 0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    invoke-direct {p0, p1}, Lp0/h;->a(Ll1/h;)V

    const/4 p1, -0x1

    return p1
.end method

.method public g(Ll1/e;)I
    .locals 0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    invoke-direct {p0, p1}, Lp0/h;->a(Ll1/h;)V

    const/4 p1, -0x1

    return p1
.end method
