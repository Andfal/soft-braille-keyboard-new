.class public Ln1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/c;


# static fields
.field static final synthetic h:Z = true


# instance fields
.field private a:Ll1/j;

.field private b:Lm0/b;

.field private c:Lb1/m;

.field private d:Lj0/c;

.field private volatile e:Ln1/a;

.field private f:Ln1/d;

.field private g:Ln1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll1/j;

    invoke-direct {v0}, Ll1/j;-><init>()V

    iput-object v0, p0, Ln1/c;->a:Ll1/j;

    new-instance v0, Ln1/d;

    invoke-direct {v0, p0}, Ln1/d;-><init>(Ln1/c;)V

    iput-object v0, p0, Ln1/c;->f:Ln1/d;

    new-instance v0, Ln1/b;

    invoke-direct {v0, p0}, Ln1/b;-><init>(Ln1/c;)V

    iput-object v0, p0, Ln1/c;->g:Ln1/b;

    iget-object v0, p0, Ln1/c;->f:Ln1/d;

    iput-object v0, p0, Ln1/c;->e:Ln1/a;

    return-void
.end method


# virtual methods
.method public A(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1}, Ll0/c;->A(Ll1/e;)I

    move-result p1

    return p1
.end method

.method C(Lb1/g;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->a:Ll1/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ll1/j;->c(Lb1/g;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public D()Ln1/d;
    .locals 1

    iget-object v0, p0, Ln1/c;->f:Ln1/d;

    return-object v0
.end method

.method E(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Le1/b;->F(Landroid/content/Context;)V

    return-void
.end method

.method F(Lb1/m;)V
    .locals 0

    iput-object p1, p0, Ln1/c;->c:Lb1/m;

    return-void
.end method

.method public G(Ll0/f;)V
    .locals 0

    invoke-static {p1}, Ll1/h;->o(Ll0/f;)Ll1/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/c;->a(Ll1/h;)V

    return-void
.end method

.method H(Ln1/a;)V
    .locals 0

    iput-object p1, p0, Ln1/c;->e:Ln1/a;

    return-void
.end method

.method I(Lb1/m;)Ln0/a;
    .locals 2

    invoke-static {}, Ln0/b;->f()Ln0/b;

    move-result-object v0

    iget-object v1, p0, Ln1/c;->a:Ll1/j;

    invoke-virtual {v0, p1, v1}, Ln0/b;->d(Lb1/m;Ll1/j;)Ln0/a;

    move-result-object p1

    return-object p1
.end method

.method public J()Ln1/b;
    .locals 1

    iget-object v0, p0, Ln1/c;->g:Ln1/b;

    return-object v0
.end method

.method public K()Lb1/m;
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-virtual {v0}, Ln1/a;->D()Lb1/m;

    move-result-object v0

    return-object v0
.end method

.method public L()Lm0/b;
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-virtual {v0}, Ln1/a;->E()Lm0/b;

    move-result-object v0

    return-object v0
.end method

.method public M()Ll1/j;
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-virtual {v0}, Ln1/a;->F()Ll1/j;

    move-result-object v0

    return-object v0
.end method

.method N()Ll0/f;
    .locals 4

    iget-object v0, p0, Ln1/c;->c:Lb1/m;

    if-nez v0, :cond_0

    sget-object v0, Lb1/m;->c:Lb1/m;

    iput-object v0, p0, Ln1/c;->c:Lb1/m;

    :cond_0
    iget-object v0, p0, Ln1/c;->a:Ll1/j;

    if-nez v0, :cond_1

    new-instance v0, Ll1/j;

    invoke-direct {v0}, Ll1/j;-><init>()V

    iput-object v0, p0, Ln1/c;->a:Ll1/j;

    :cond_1
    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v0

    invoke-virtual {v0}, Le1/b;->b()Ll0/f;

    move-result-object v0

    sget-boolean v1, Ln1/c;->h:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_0
    sget-object v0, Ln1/c$a;->a:[I

    iget-object v1, p0, Ln1/c;->c:Lb1/m;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lo0/a;->a()Lo0/a;

    move-result-object v0

    sget-object v1, Lb1/f;->e:Lb1/f;

    invoke-virtual {v0, v1}, Lo0/a;->b(Lb1/f;)Lp0/d;

    move-result-object v0

    iget-object v1, p0, Ln1/c;->a:Ll1/j;

    invoke-virtual {v1}, Ll1/j;->d()Ll1/b;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {}, Lo0/a;->a()Lo0/a;

    move-result-object v0

    sget-object v1, Lb1/f;->d:Lb1/f;

    invoke-virtual {v0, v1}, Lo0/a;->b(Lb1/f;)Lp0/d;

    move-result-object v0

    iget-object v1, p0, Ln1/c;->a:Ll1/j;

    invoke-virtual {v1}, Ll1/j;->i()Lq0/e$a;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-static {}, Lo0/a;->a()Lo0/a;

    move-result-object v0

    sget-object v1, Lb1/f;->c:Lb1/f;

    invoke-virtual {v0, v1}, Lo0/a;->b(Lb1/f;)Lp0/d;

    move-result-object v0

    iget-object v1, p0, Ln1/c;->a:Ll1/j;

    invoke-virtual {v1}, Ll1/j;->h()Lq0/f$b;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    invoke-interface {v0, v1}, Lp0/d;->a(Ljava/lang/Object;)V

    new-instance v1, Ls0/f;

    invoke-direct {v1}, Ls0/f;-><init>()V

    iget-object v2, p0, Ln1/c;->a:Ll1/j;

    invoke-virtual {v2}, Ll1/j;->g()Ll1/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ls0/c;->a(Ljava/lang/Object;)V

    new-instance v2, Lj0/c;

    invoke-direct {v2}, Lj0/c;-><init>()V

    iput-object v2, p0, Ln1/c;->d:Lj0/c;

    new-instance v2, Lj0/b;

    iget-object v3, p0, Ln1/c;->a:Ll1/j;

    invoke-direct {v2, v0, v1, v3}, Lj0/b;-><init>(Lp0/d;Ls0/c;Ll1/j;)V

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0, v2}, Lj0/c;->f(Lj0/a;)V

    iget-object v0, p0, Ln1/c;->b:Lm0/b;

    if-eqz v0, :cond_7

    iget-object v1, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v1, v0}, Lj0/c;->h(Lm0/b;)V

    :cond_7
    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0}, Lj0/c;->e()Ll0/f;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->W:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method O()V
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0}, Lj0/c;->j()V

    return-void
.end method

.method P()V
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0}, Lj0/c;->l()V

    return-void
.end method

.method Q()V
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0}, Lj0/c;->m()V

    return-void
.end method

.method R()V
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0}, Lj0/c;->n()V

    invoke-static {}, Ln0/b;->f()Ln0/b;

    move-result-object v0

    invoke-virtual {v0}, Ln0/b;->j()V

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v0

    invoke-virtual {v0}, Le1/b;->f()V

    new-instance v0, Ll1/j;

    invoke-direct {v0}, Ll1/j;-><init>()V

    iput-object v0, p0, Ln1/c;->a:Ll1/j;

    return-void
.end method

.method S()Lm0/b;
    .locals 1

    iget-object v0, p0, Ln1/c;->b:Lm0/b;

    return-object v0
.end method

.method T()Lb1/m;
    .locals 1

    iget-object v0, p0, Ln1/c;->c:Lb1/m;

    return-object v0
.end method

.method U()Ll1/j;
    .locals 1

    iget-object v0, p0, Ln1/c;->a:Ll1/j;

    return-object v0
.end method

.method public V()I
    .locals 2

    iget-object v0, p0, Ln1/c;->b:Lm0/b;

    if-eqz v0, :cond_0

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->W:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln1/c;->G(Ll0/f;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lb1/n;->W:Lb1/n;

    invoke-virtual {v1}, Lb1/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public W()Z
    .locals 2

    iget-object v0, p0, Ln1/c;->g:Ln1/b;

    iget-object v1, p0, Ln1/c;->e:Ln1/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0}, Lj0/c;->o()Lj0/a;

    move-result-object v0

    invoke-interface {v0}, Lj0/a;->a()Ls0/c;

    move-result-object v0

    invoke-interface {v0, p1}, Ls0/c;->a(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method a(II)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0}, Lj0/c;->o()Lj0/a;

    move-result-object v0

    invoke-interface {v0}, Lj0/a;->a()Ls0/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ls0/c;->a(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Ln1/c;->b:Lm0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lm0/b;->g(Ll1/h;)V

    :cond_0
    return-void
.end method

.method b(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0}, Lj0/c;->o()Lj0/a;

    move-result-object v0

    invoke-interface {v0}, Lj0/a;->a()Ls0/c;

    move-result-object v0

    invoke-interface {v0, p1}, Ls0/c;->b(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public b()Ll0/f;
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0}, Lg1/b;->b()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method b(Ll1/i;)V
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->g(Ll1/i;)V

    return-void
.end method

.method c(FF)I
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0, p1, p2}, Lj0/c;->a(FF)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0}, Lg1/b;->c()V

    return-void
.end method

.method d(Ll1/g;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->d(Ll1/g;)I

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0}, Lg1/b;->d()V

    return-void
.end method

.method e(Ll1/f;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->c(Ll1/f;)I

    move-result p1

    return p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0}, Lg1/b;->e()V

    return-void
.end method

.method f(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->i(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0}, Lg1/b;->f()V

    return-void
.end method

.method g(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->b(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public j(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1}, Ll0/c;->j(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public k(Ll1/f;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1}, Ll0/c;->k(Ll1/f;)I

    move-result p1

    return p1
.end method

.method public l(Lm0/b;)V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-virtual {v0, p1}, Ln1/a;->l(Lm0/b;)V

    return-void
.end method

.method public m(Lb1/m;)Ln0/a;
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-virtual {v0, p1}, Ln1/a;->m(Lb1/m;)Ln0/a;

    move-result-object p1

    return-object p1
.end method

.method public n(FF)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1, p2}, Ll0/c;->n(FF)I

    move-result p1

    return p1
.end method

.method public o(II)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1, p2}, Ll0/c;->o(II)I

    move-result p1

    return p1
.end method

.method public p(Lb1/m;)V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-virtual {v0, p1}, Ln1/a;->p(Lb1/m;)V

    return-void
.end method

.method public q(I)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1}, Ll0/c;->q(I)I

    move-result p1

    return p1
.end method

.method public r(I)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1}, Ll0/c;->r(I)I

    move-result p1

    return p1
.end method

.method s(Ll1/i;)V
    .locals 1

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->k(Ll1/i;)V

    return-void
.end method

.method public t(Ll1/i;)V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1}, Ll0/c;->t(Ll1/i;)V

    return-void
.end method

.method public u(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-virtual {v0, p1}, Ln1/a;->u(Landroid/content/Context;)V

    return-void
.end method

.method public w(Ll1/g;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1}, Ll0/c;->w(Ll1/g;)I

    move-result p1

    return p1
.end method

.method public x(Ll1/i;)V
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-interface {v0, p1}, Ll0/c;->x(Ll1/i;)V

    return-void
.end method

.method y(Lm0/b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ln1/c;->b:Lm0/b;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Ln1/c;->b:Lm0/b;

    iget-object v0, p0, Ln1/c;->d:Lj0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj0/c;->h(Lm0/b;)V

    :cond_0
    return-void
.end method

.method public z(Lb1/g;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ln1/a;

    invoke-virtual {v0, p1, p2}, Ln1/a;->z(Lb1/g;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
