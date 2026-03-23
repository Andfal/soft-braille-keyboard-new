.class Lo/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lo/s;

.field private b:Lu/b;

.field private c:Lo/e;

.field final synthetic d:Lo/w;


# direct methods
.method public constructor <init>(Lo/w;Lo/s;)V
    .locals 0

    iput-object p1, p0, Lo/w$b;->d:Lo/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/w$b;->a:Lo/s;

    return-void
.end method

.method private f()Lu/n;
    .locals 4

    iget-object v0, p0, Lo/w$b;->b:Lu/b;

    invoke-virtual {v0}, Lu/b;->e()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lo/w$b;->d:Lo/w;

    invoke-static {v2}, Lo/w;->b(Lo/w;)Lu/s;

    move-result-object v2

    invoke-virtual {v2}, Lu/s;->b()Lu/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lu/c;->y(I)Lu/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/b;->c()Lu/g;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/g;->q(I)Lu/f;

    move-result-object v0

    invoke-virtual {v0}, Lu/f;->h()Lu/r;

    move-result-object v2

    invoke-virtual {v2}, Lu/r;->d()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lu/f;->j()Lu/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lu/w;)V
    .locals 5

    invoke-virtual {p1}, Lu/f;->i()Lu/u;

    move-result-object v0

    invoke-static {p1}, Lo/v;->a(Lu/f;)Lo/j;

    move-result-object v1

    invoke-virtual {p1}, Lu/f;->h()Lu/r;

    move-result-object v2

    invoke-virtual {v2}, Lu/r;->b()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lo/w$b;->f()Lu/n;

    move-result-object v2

    invoke-virtual {v1}, Lo/j;->g()Z

    move-result v3

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lo/w$b;->c:Lo/e;

    invoke-virtual {p0, v3}, Lo/w$b;->e(Lo/h;)V

    new-instance v3, Lo/x;

    invoke-static {p1, v2}, Lo/w;->g(Lu/f;Lu/n;)Lu/p;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lo/x;-><init>(Lo/j;Lu/u;Lu/p;)V

    invoke-virtual {p0, v3}, Lo/w$b;->e(Lo/h;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lu/k;)V
    .locals 5

    invoke-virtual {p1}, Lu/f;->h()Lu/r;

    move-result-object v0

    invoke-virtual {v0}, Lu/r;->d()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lu/r;->d()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lu/f;->i()Lu/u;

    move-result-object v1

    invoke-static {p1}, Lo/v;->a(Lu/f;)Lo/j;

    move-result-object v2

    invoke-virtual {v0}, Lu/r;->b()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lo/w$b;->b:Lu/b;

    invoke-virtual {v0}, Lu/b;->g()Lx/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lx/k;->l(I)I

    move-result v0

    new-instance v3, Lo/z;

    invoke-static {p1}, Lo/w;->f(Lu/f;)Lu/p;

    move-result-object p1

    iget-object v4, p0, Lo/w$b;->d:Lo/w;

    invoke-static {v4}, Lo/w;->a(Lo/w;)Lo/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lo/a;->c(I)Lo/e;

    move-result-object v0

    invoke-direct {v3, v2, v1, p1, v0}, Lo/z;-><init>(Lo/j;Lu/u;Lu/p;Lo/e;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance v3, Lo/x;

    invoke-static {p1}, Lo/w;->f(Lu/f;)Lu/p;

    move-result-object p1

    invoke-direct {v3, v2, v1, p1}, Lo/x;-><init>(Lo/j;Lu/u;Lu/p;)V

    :goto_1
    invoke-virtual {p0, v3}, Lo/w$b;->e(Lo/h;)V

    return-void
.end method

.method public c(Lu/j;)V
    .locals 5

    invoke-virtual {p1}, Lu/f;->i()Lu/u;

    move-result-object v0

    invoke-static {p1}, Lo/v;->a(Lu/f;)Lo/j;

    move-result-object v1

    invoke-virtual {p1}, Lu/f;->h()Lu/r;

    move-result-object v2

    invoke-virtual {v2}, Lu/r;->d()I

    move-result v3

    invoke-virtual {v2}, Lu/r;->b()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lo/w$b;->d:Lo/w;

    invoke-static {v2}, Lo/w;->d(Lo/w;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lu/f;->j()Lu/n;

    move-result-object v2

    invoke-virtual {p1}, Lu/d;->n()Lv/a;

    move-result-object p1

    check-cast p1, Lv/l;

    invoke-virtual {p1}, Lv/l;->j()I

    move-result p1

    iget-object v3, p0, Lo/w$b;->d:Lo/w;

    invoke-static {v3}, Lo/w;->e(Lo/w;)I

    move-result v3

    iget-object v4, p0, Lo/w$b;->d:Lo/w;

    invoke-static {v4}, Lo/w;->c(Lo/w;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-virtual {v2}, Lu/n;->getType()Lw/c;

    move-result-object p1

    invoke-static {v3, p1}, Lu/n;->p(ILw/d;)Lu/n;

    move-result-object p1

    new-instance v3, Lo/x;

    invoke-static {v2, p1}, Lu/p;->s(Lu/n;Lu/n;)Lu/p;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lo/x;-><init>(Lo/j;Lu/u;Lu/p;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lo/w;->f(Lu/f;)Lu/p;

    move-result-object v2

    new-instance v3, Lo/f;

    invoke-virtual {p1}, Lu/d;->n()Lv/a;

    move-result-object p1

    invoke-direct {v3, v1, v0, v2, p1}, Lo/f;-><init>(Lo/j;Lu/u;Lu/p;Lv/a;)V

    :goto_0
    invoke-virtual {p0, v3}, Lo/w$b;->e(Lo/h;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lu/v;)V
    .locals 10

    invoke-virtual {p1}, Lu/f;->i()Lu/u;

    move-result-object v0

    invoke-static {p1}, Lo/v;->a(Lu/f;)Lo/j;

    move-result-object v1

    invoke-virtual {p1}, Lu/f;->h()Lu/r;

    move-result-object v2

    invoke-virtual {p1}, Lu/d;->n()Lv/a;

    move-result-object v3

    invoke-virtual {v2}, Lu/r;->b()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lo/w$b;->c:Lo/e;

    invoke-virtual {p0, v4}, Lo/w$b;->e(Lo/h;)V

    invoke-virtual {v2}, Lu/r;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lu/f;->k()Lu/p;

    move-result-object p1

    new-instance v2, Lo/f;

    invoke-direct {v2, v1, v0, p1, v3}, Lo/f;-><init>(Lo/j;Lu/u;Lu/p;Lv/a;)V

    invoke-virtual {p0, v2}, Lo/w$b;->e(Lo/h;)V

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lo/w$b;->f()Lu/n;

    move-result-object v4

    invoke-static {p1, v4}, Lo/w;->g(Lu/f;Lu/n;)Lu/p;

    move-result-object v5

    invoke-virtual {v1}, Lo/j;->g()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lu/r;->d()I

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :cond_3
    if-ne v6, v7, :cond_5

    invoke-virtual {v2}, Lu/r;->d()I

    move-result p1

    const/16 v2, 0x29

    if-ne p1, v2, :cond_4

    invoke-virtual {v1}, Lo/j;->e()I

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_4

    new-instance p1, Lo/x;

    invoke-direct {p1, v1, v0, v5}, Lo/x;-><init>(Lo/j;Lu/u;Lu/p;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lo/f;

    invoke-direct {p1, v1, v0, v5, v3}, Lo/f;-><init>(Lo/j;Lu/u;Lu/p;Lv/a;)V

    :goto_2
    invoke-virtual {p0, p1}, Lo/w$b;->e(Lo/h;)V

    :goto_3
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected e(Lo/h;)V
    .locals 1

    iget-object v0, p0, Lo/w$b;->a:Lo/s;

    invoke-virtual {v0, p1}, Lo/s;->a(Lo/h;)V

    return-void
.end method

.method public g(Lu/b;Lo/e;)V
    .locals 0

    iput-object p1, p0, Lo/w$b;->b:Lu/b;

    iput-object p2, p0, Lo/w$b;->c:Lo/e;

    return-void
.end method
