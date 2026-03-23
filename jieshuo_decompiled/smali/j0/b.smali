.class public Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/a;


# instance fields
.field private a:Lp0/d;

.field private b:Ls0/c;

.field private c:Lm0/b;

.field private d:Lo0/b;

.field private e:Lr0/a;

.field private f:Lo0/b;


# direct methods
.method public constructor <init>(Lp0/d;Ls0/c;Ll1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/b;->a:Lp0/d;

    iput-object p2, p0, Lj0/b;->b:Ls0/c;

    return-void
.end method

.method static synthetic C(Lj0/b;)Lm0/b;
    .locals 0

    iget-object p0, p0, Lj0/b;->c:Lm0/b;

    return-object p0
.end method

.method static synthetic F(Lj0/b;Ll1/h;)Z
    .locals 0

    invoke-direct {p0, p1}, Lj0/b;->G(Ll1/h;)Z

    move-result p0

    return p0
.end method

.method private G(Ll1/h;)Z
    .locals 0

    invoke-virtual {p1}, Ll1/h;->x()Ll1/i;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ll1/i;->o()Lb1/i;

    move-result-object p1

    invoke-static {p1}, Lb1/i;->a(Lb1/i;)Z

    move-result p1

    return p1
.end method

.method static synthetic H(Lj0/b;)Ls0/c;
    .locals 0

    iget-object p0, p0, Lj0/b;->b:Ls0/c;

    return-object p0
.end method


# virtual methods
.method protected D(Lp0/d;)V
    .locals 1

    iget-object v0, p0, Lj0/b;->d:Lo0/b;

    if-nez v0, :cond_0

    new-instance v0, Lj0/b$a;

    invoke-direct {v0, p0}, Lj0/b$a;-><init>(Lj0/b;)V

    iput-object v0, p0, Lj0/b;->d:Lo0/b;

    :cond_0
    iget-object v0, p0, Lj0/b;->d:Lo0/b;

    invoke-interface {p1, v0}, Lp0/d;->h(Lo0/b;)V

    return-void
.end method

.method protected E(Ls0/c;)V
    .locals 1

    iget-object v0, p0, Lj0/b;->e:Lr0/a;

    if-nez v0, :cond_0

    new-instance v0, Lj0/b$b;

    invoke-direct {v0, p0}, Lj0/b$b;-><init>(Lj0/b;)V

    iput-object v0, p0, Lj0/b;->e:Lr0/a;

    :cond_0
    iget-object v0, p0, Lj0/b;->e:Lr0/a;

    invoke-interface {p1, v0}, Ls0/c;->i(Lr0/a;)V

    return-void
.end method

.method protected I()V
    .locals 2

    new-instance v0, Lj0/b$c;

    invoke-direct {v0, p0}, Lj0/b$c;-><init>(Lj0/b;)V

    iput-object v0, p0, Lj0/b;->f:Lo0/b;

    iget-object v1, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v1, v0}, Lp0/d;->h(Lo0/b;)V

    return-void
.end method

.method public a()Ls0/c;
    .locals 1

    iget-object v0, p0, Lj0/b;->b:Ls0/c;

    return-object v0
.end method

.method public b()Ll0/f;
    .locals 2

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0}, Lg1/b;->b()Ll0/f;

    move-result-object v0

    iget-object v1, p0, Lj0/b;->b:Ls0/c;

    invoke-interface {v1}, Lg1/b;->b()Ll0/f;

    invoke-virtual {p0}, Lj0/b;->I()V

    return-object v0
.end method

.method public b(Ll1/i;)V
    .locals 1

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0, p1}, Lp0/d;->b(Ll1/i;)V

    return-void
.end method

.method public c(FF)I
    .locals 1

    iget-object v0, p0, Lj0/b;->b:Ls0/c;

    invoke-interface {v0, p1, p2}, Ls0/c;->c(FF)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0}, Lg1/b;->c()V

    iget-object v0, p0, Lj0/b;->b:Ls0/c;

    invoke-interface {v0}, Lg1/b;->c()V

    return-void
.end method

.method public d(Ll1/g;)I
    .locals 1

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0, p1}, Lp0/d;->d(Ll1/g;)I

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0}, Lg1/b;->d()V

    iget-object v0, p0, Lj0/b;->b:Ls0/c;

    invoke-interface {v0}, Lg1/b;->d()V

    return-void
.end method

.method public e(Ll1/f;)I
    .locals 1

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0, p1}, Lp0/d;->e(Ll1/f;)I

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    const-string v0, "before engine stop"

    const-string v1, "TtsAdapter"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0}, Lg1/b;->e()V

    const-string v0, "after engine stop"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj0/b;->b:Ls0/c;

    invoke-interface {v0}, Lg1/b;->e()V

    const-string v0, "after play stop"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0, p1}, Lp0/d;->f(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public f()V
    .locals 2

    const-string v0, "before engine destroy"

    const-string v1, "TtsAdapter"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0}, Lg1/b;->f()V

    const-string v0, "after engine destroy"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj0/b;->b:Ls0/c;

    invoke-interface {v0}, Lg1/b;->f()V

    const-string v0, "after player destroy"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0, p1}, Lp0/d;->g(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public s(Ll1/i;)V
    .locals 1

    iget-object v0, p0, Lj0/b;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->v()V

    iget-object v0, p0, Lj0/b;->a:Lp0/d;

    invoke-interface {v0, p1}, Lp0/d;->b(Ll1/i;)V

    return-void
.end method

.method public y(Lm0/b;)V
    .locals 0

    iput-object p1, p0, Lj0/b;->c:Lm0/b;

    iget-object p1, p0, Lj0/b;->a:Lp0/d;

    invoke-virtual {p0, p1}, Lj0/b;->D(Lp0/d;)V

    iget-object p1, p0, Lj0/b;->b:Ls0/c;

    invoke-virtual {p0, p1}, Lj0/b;->E(Ls0/c;)V

    return-void
.end method
