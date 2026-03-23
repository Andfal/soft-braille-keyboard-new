.class public final Lo/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/b;

.field private final b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Ln/b;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/t;->a:Ln/b;

    iput p3, p0, Lo/t;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/t;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lo/t;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/t;->d:Z

    iput-boolean p1, p0, Lo/t;->e:Z

    return-void
.end method

.method private static b(Ljava/util/HashSet;Lo/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lv/a;",
            ">;",
            "Lo/h;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lo/f;

    if-eqz v0, :cond_0

    check-cast p1, Lo/f;

    invoke-virtual {p1}, Lo/f;->x()Lv/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lo/q;

    if-eqz v0, :cond_1

    check-cast p1, Lo/q;

    invoke-virtual {p1}, Lo/q;->x()Lu/q;

    move-result-object p1

    invoke-virtual {p1}, Lu/q;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lu/q;->j(I)Lu/n;

    move-result-object v2

    invoke-static {p0, v2}, Lo/t;->c(Ljava/util/HashSet;Lu/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lo/r;

    if-eqz v0, :cond_2

    check-cast p1, Lo/r;

    invoke-virtual {p1}, Lo/r;->x()Lu/n;

    move-result-object p1

    invoke-static {p0, p1}, Lo/t;->c(Ljava/util/HashSet;Lu/n;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static c(Ljava/util/HashSet;Lu/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lv/a;",
            ">;",
            "Lu/n;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lu/n;->j()Lu/h;

    const/4 p0, 0x0

    throw p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/h;

    invoke-virtual {v3, v2}, Lo/h;->s(I)V

    invoke-virtual {v3}, Lo/h;->b()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lo/t;->d()V

    invoke-direct {p0}, Lo/t;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static f(Lo/f;Lo/g$a;)V
    .locals 2

    invoke-virtual {p0}, Lo/f;->x()Lv/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/g$a;->a(Lv/a;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lo/f;->B(I)V

    :cond_0
    instance-of v1, v0, Lv/r;

    if-eqz v1, :cond_1

    check-cast v0, Lv/r;

    invoke-virtual {v0}, Lv/r;->g()Lv/w;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/g$a;->a(Lv/a;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lo/f;->A(I)V

    :cond_1
    return-void
.end method

.method private h([Lo/j;)I
    .locals 6

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lo/t;->f:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/h;

    aget-object v4, p1, v2

    invoke-direct {p0, v3, v4}, Lo/t;->j(Lo/h;Lo/j;)Lo/j;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lo/t;->i(Lo/h;)Lo/j;

    move-result-object v4

    invoke-virtual {v4}, Lo/j;->b()Lo/n;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/n;->g(Lo/h;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/h;->h(Ljava/util/BitSet;)I

    move-result v3

    if-le v3, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    aput-object v5, p1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private i(Lo/h;)Lo/j;
    .locals 3

    invoke-virtual {p1}, Lo/h;->g()Lo/h;

    move-result-object v0

    invoke-virtual {p1}, Lo/h;->j()Lo/j;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/t;->j(Lo/h;Lo/j;)Lo/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lx/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No expanded opcode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lx/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j(Lo/h;Lo/j;)Lo/j;
    .locals 1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lo/j;->b()Lo/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/n;->l(Lo/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lo/t;->a:Ln/b;

    invoke-static {p2, v0}, Lo/k;->b(Lo/j;Ln/b;)Lo/j;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method private l()Z
    .locals 11

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/h;

    instance-of v4, v3, Lo/z;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lo/h;->j()Lo/j;

    move-result-object v4

    move-object v6, v3

    check-cast v6, Lo/z;

    invoke-virtual {v4}, Lo/j;->b()Lo/n;

    move-result-object v7

    invoke-virtual {v7, v6}, Lo/n;->b(Lo/z;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lo/j;->a()I

    move-result v2

    const/16 v7, 0x28

    if-ne v2, v7, :cond_3

    invoke-direct {p0, v3, v4}, Lo/t;->j(Lo/h;Lo/j;)Lo/j;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lo/h;->t(Lo/j;)Lo/h;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_0
    iget-object v2, p0, Lo/t;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/e;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lo/z;

    sget-object v7, Lo/k;->Q:Lo/j;

    invoke-virtual {v6}, Lo/h;->k()Lu/u;

    move-result-object v8

    sget-object v9, Lu/p;->c:Lu/p;

    invoke-virtual {v6}, Lo/z;->x()Lo/e;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Lo/z;-><init>(Lo/j;Lu/u;Lu/p;Lo/e;)V

    iget-object v7, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Lo/z;->B(Lo/e;)Lo/z;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    :goto_1
    const/4 v2, 0x1

    :goto_2
    add-int/2addr v1, v5

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v2
.end method

.method private static p(Lo/h;)Z
    .locals 5

    instance-of v0, p0, Lo/q;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Lo/q;

    invoke-virtual {p0}, Lo/q;->x()Lu/q;

    move-result-object p0

    invoke-virtual {p0}, Lu/q;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lu/q;->j(I)Lu/n;

    move-result-object v4

    invoke-static {v4}, Lo/t;->q(Lu/n;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lo/r;

    if-eqz v0, :cond_2

    check-cast p0, Lo/r;

    invoke-virtual {p0}, Lo/r;->x()Lu/n;

    move-result-object p0

    invoke-static {p0}, Lo/t;->q(Lu/n;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private static q(Lu/n;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lu/n;->j()Lu/h;

    const/4 p0, 0x0

    throw p0
.end method

.method private r()[Lo/j;
    .locals 4

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lo/j;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/h;

    invoke-virtual {v3}, Lo/h;->j()Lo/j;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private s([Lo/j;)V
    .locals 5

    iget v0, p0, Lo/t;->f:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/h;

    invoke-virtual {v2}, Lo/h;->j()Lo/j;

    move-result-object v3

    aget-object v4, p1, v1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lo/h;->t(Lo/j;)Lo/h;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lo/t;->t([Lo/j;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lo/t;->c:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method private t([Lo/j;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/j;",
            ")",
            "Ljava/util/ArrayList<",
            "Lo/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/h;

    invoke-virtual {v3}, Lo/h;->j()Lo/j;

    move-result-object v4

    aget-object v5, p1, v2

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    move-object v8, v6

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lo/t;->i(Lo/h;)Lo/j;

    move-result-object v5

    invoke-virtual {v5}, Lo/j;->b()Lo/n;

    move-result-object v6

    invoke-virtual {v6, v3}, Lo/n;->g(Lo/h;)Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v3, v6}, Lo/h;->c(Ljava/util/BitSet;)Lo/h;

    move-result-object v7

    invoke-virtual {v3, v6}, Lo/h;->d(Ljava/util/BitSet;)Lo/h;

    move-result-object v8

    invoke-virtual {v3, v6}, Lo/h;->e(Ljava/util/BitSet;)Lo/h;

    move-result-object v3

    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq v5, v4, :cond_2

    invoke-virtual {v3, v5}, Lo/h;->t(Lo/j;)Lo/h;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private u([Lo/j;)V
    .locals 7

    iget v0, p0, Lo/t;->f:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lo/t;->h([Lo/j;)I

    move-result v2

    if-lt v0, v2, :cond_1

    iput v0, p0, Lo/t;->f:I

    return-void

    :cond_1
    sub-int v0, v2, v0

    iget-object v3, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/h;

    instance-of v6, v5, Lo/e;

    if-nez v6, :cond_2

    iget-object v6, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lo/h;->u(I)Lo/h;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private w(Lo/h;)V
    .locals 2

    iget-boolean v0, p0, Lo/t;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lo/h;->k()Lu/u;

    move-result-object v0

    invoke-virtual {v0}, Lu/u;->a()I

    move-result v0

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Lo/t;->d:Z

    :cond_0
    iget-boolean v0, p0, Lo/t;->e:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lo/t;->p(Lo/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lo/t;->e:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lo/h;)V
    .locals 1

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lo/t;->w(Lo/h;)V

    return-void
.end method

.method public g(Lo/g$a;)V
    .locals 3

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/h;

    instance-of v2, v1, Lo/f;

    if-eqz v2, :cond_0

    check-cast v1, Lo/f;

    invoke-static {v1, p1}, Lo/t;->f(Lo/f;Lo/g$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()Lo/i;
    .locals 3

    iget v0, p0, Lo/t;->f:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lo/t;->r()[Lo/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/t;->u([Lo/j;)V

    invoke-direct {p0, v0}, Lo/t;->s([Lo/j;)V

    invoke-direct {p0}, Lo/t;->e()V

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    iget v1, p0, Lo/t;->f:I

    iget v2, p0, Lo/t;->b:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lo/i;->t(Ljava/util/ArrayList;I)Lo/i;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lv/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/h;

    invoke-static {v0, v2}, Lo/t;->b(Ljava/util/HashSet;Lo/h;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lo/t;->e:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lo/t;->d:Z

    return v0
.end method

.method public v(ILo/e;)V
    .locals 2

    iget-object v0, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object p1, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/z;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lo/t;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lo/z;->B(Lo/e;)Lo/z;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "non-reversible instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few instructions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
