.class public final Lo/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/w$b;
    }
.end annotation


# instance fields
.field private final a:Ln/b;

.field private final b:Lu/s;

.field private final c:I

.field private final d:Lo/a;

.field private final e:Lo/s;

.field private final f:Lo/w$b;

.field private final g:I

.field private h:[I

.field private final i:I

.field private j:Z


# direct methods
.method private constructor <init>(Lu/s;ILu/i;ILn/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lo/w;->a:Ln/b;

    iput-object p1, p0, Lo/w;->b:Lu/s;

    iput p2, p0, Lo/w;->c:I

    new-instance p2, Lo/a;

    invoke-direct {p2, p1}, Lo/a;-><init>(Lu/s;)V

    iput-object p2, p0, Lo/w;->d:Lo/a;

    iput p4, p0, Lo/w;->i:I

    const/4 p2, 0x0

    iput-object p2, p0, Lo/w;->h:[I

    invoke-static {p1, p4}, Lo/w;->h(Lu/s;I)Z

    move-result p2

    iput-boolean p2, p0, Lo/w;->j:Z

    invoke-virtual {p1}, Lu/s;->b()Lu/c;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p1}, Lu/c;->w()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Lu/c;->x()I

    move-result p1

    iget-boolean v0, p0, Lo/w;->j:Z

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    add-int/2addr p1, p4

    iput p1, p0, Lo/w;->g:I

    new-instance p4, Lo/s;

    invoke-direct {p4, p5, p3, p2, p1}, Lo/s;-><init>(Ln/b;III)V

    iput-object p4, p0, Lo/w;->e:Lo/s;

    new-instance p1, Lo/w$b;

    invoke-direct {p1, p0, p4}, Lo/w$b;-><init>(Lo/w;Lo/s;)V

    iput-object p1, p0, Lo/w;->f:Lo/w$b;

    return-void
.end method

.method static bridge synthetic a(Lo/w;)Lo/a;
    .locals 0

    iget-object p0, p0, Lo/w;->d:Lo/a;

    return-object p0
.end method

.method static bridge synthetic b(Lo/w;)Lu/s;
    .locals 0

    iget-object p0, p0, Lo/w;->b:Lu/s;

    return-object p0
.end method

.method static bridge synthetic c(Lo/w;)I
    .locals 0

    iget p0, p0, Lo/w;->i:I

    return p0
.end method

.method static bridge synthetic d(Lo/w;)Z
    .locals 0

    iget-boolean p0, p0, Lo/w;->j:Z

    return p0
.end method

.method static bridge synthetic e(Lo/w;)I
    .locals 0

    iget p0, p0, Lo/w;->g:I

    return p0
.end method

.method static bridge synthetic f(Lu/f;)Lu/p;
    .locals 0

    invoke-static {p0}, Lo/w;->i(Lu/f;)Lu/p;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic g(Lu/f;Lu/n;)Lu/p;
    .locals 0

    invoke-static {p0, p1}, Lo/w;->j(Lu/f;Lu/n;)Lu/p;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lu/s;I)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    invoke-virtual {p0}, Lu/s;->b()Lu/c;

    move-result-object v0

    invoke-virtual {v0}, Lu/c;->x()I

    move-result v0

    invoke-virtual {p0}, Lu/s;->b()Lu/c;

    move-result-object p0

    new-instance v3, Lo/w$a;

    invoke-direct {v3, v1, v0, p1}, Lo/w$a;-><init>([ZII)V

    invoke-virtual {p0, v3}, Lu/c;->u(Lu/f$b;)V

    aget-boolean p0, v1, v2

    return p0
.end method

.method private static i(Lu/f;)Lu/p;
    .locals 1

    invoke-virtual {p0}, Lu/f;->j()Lu/n;

    move-result-object v0

    invoke-static {p0, v0}, Lo/w;->j(Lu/f;Lu/n;)Lu/p;

    move-result-object p0

    return-object p0
.end method

.method private static j(Lu/f;Lu/n;)Lu/p;
    .locals 3

    invoke-virtual {p0}, Lu/f;->k()Lu/p;

    move-result-object v0

    invoke-virtual {p0}, Lu/f;->h()Lu/r;

    move-result-object p0

    invoke-virtual {p0}, Lu/r;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lx/h;->size()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Lu/n;->l()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->l()I

    move-result v2

    if-ne p0, v2, :cond_0

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-static {p0, v0}, Lu/p;->s(Lu/n;Lu/n;)Lu/p;

    move-result-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Lu/p;->x(Lu/n;)Lu/p;

    move-result-object p0

    return-object p0
.end method

.method private k(Lu/b;I)V
    .locals 4

    iget-object v0, p0, Lo/w;->d:Lo/a;

    invoke-virtual {v0, p1}, Lo/a;->d(Lu/b;)Lo/e;

    move-result-object v0

    iget-object v1, p0, Lo/w;->e:Lo/s;

    invoke-virtual {v1, v0}, Lo/s;->a(Lo/h;)V

    iget-object v0, p0, Lo/w;->f:Lo/w$b;

    iget-object v1, p0, Lo/w;->d:Lo/a;

    invoke-virtual {v1, p1}, Lo/a;->b(Lu/b;)Lo/e;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/w$b;->g(Lu/b;Lo/e;)V

    invoke-virtual {p1}, Lu/b;->c()Lu/g;

    move-result-object v0

    iget-object v1, p0, Lo/w;->f:Lo/w$b;

    invoke-virtual {v0, v1}, Lu/g;->p(Lu/f$b;)V

    iget-object v0, p0, Lo/w;->e:Lo/s;

    iget-object v1, p0, Lo/w;->d:Lo/a;

    invoke-virtual {v1, p1}, Lo/a;->a(Lu/b;)Lo/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/s;->a(Lo/h;)V

    invoke-virtual {p1}, Lu/b;->e()I

    move-result v0

    invoke-virtual {p1}, Lu/b;->d()Lu/f;

    move-result-object v1

    if-ltz v0, :cond_1

    if-eq v0, p2, :cond_1

    invoke-virtual {v1}, Lu/f;->h()Lu/r;

    move-result-object v2

    invoke-virtual {v2}, Lu/r;->b()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lu/b;->f()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lo/w;->e:Lo/s;

    iget-object p2, p0, Lo/w;->d:Lo/a;

    invoke-virtual {p2, v0}, Lo/a;->c(I)Lo/e;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lo/s;->d(ILo/e;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lo/z;

    sget-object p2, Lo/k;->Q:Lo/j;

    invoke-virtual {v1}, Lu/f;->i()Lu/u;

    move-result-object v1

    sget-object v2, Lu/p;->c:Lu/p;

    iget-object v3, p0, Lo/w;->d:Lo/a;

    invoke-virtual {v3, v0}, Lo/a;->c(I)Lo/e;

    move-result-object v0

    invoke-direct {p1, p2, v1, v2, v0}, Lo/z;-><init>(Lo/j;Lu/u;Lu/p;Lo/e;)V

    iget-object p2, p0, Lo/w;->e:Lo/s;

    invoke-virtual {p2, p1}, Lo/s;->a(Lo/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private l()V
    .locals 6

    iget-object v0, p0, Lo/w;->b:Lu/s;

    invoke-virtual {v0}, Lu/s;->b()Lu/c;

    move-result-object v0

    iget-object v1, p0, Lo/w;->h:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-ne v4, v5, :cond_0

    const/4 v5, -0x1

    goto :goto_1

    :cond_0
    aget v5, v1, v4

    :goto_1
    aget v3, v1, v3

    invoke-virtual {v0, v3}, Lu/c;->y(I)Lu/b;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lo/w;->k(Lu/b;I)V

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private m()V
    .locals 14

    iget-object v0, p0, Lo/w;->b:Lu/s;

    invoke-virtual {v0}, Lu/s;->b()Lu/c;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->size()I

    move-result v1

    invoke-virtual {v0}, Lx/m;->q()I

    move-result v2

    invoke-static {v2}, Lx/b;->e(I)[I

    move-result-object v3

    invoke-static {v2}, Lx/b;->e(I)[I

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {v0, v5}, Lu/c;->v(I)Lu/b;

    move-result-object v6

    invoke-virtual {v6}, Lu/b;->a()I

    move-result v6

    invoke-static {v3, v6}, Lx/b;->f([II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v1, [I

    iget-object v6, p0, Lo/w;->b:Lu/s;

    invoke-virtual {v6}, Lu/s;->c()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    :goto_2
    iget-object v9, p0, Lo/w;->b:Lu/s;

    invoke-virtual {v9, v6}, Lu/s;->d(I)Lx/k;

    move-result-object v9

    invoke-virtual {v9}, Lx/k;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_4

    invoke-virtual {v9, v11}, Lx/k;->l(I)I

    move-result v12

    invoke-static {v2, v12}, Lx/b;->d([II)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_5

    :cond_1
    invoke-static {v3, v12}, Lx/b;->d([II)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0, v12}, Lu/c;->y(I)Lu/b;

    move-result-object v13

    invoke-virtual {v13}, Lu/b;->e()I

    move-result v13

    if-ne v13, v6, :cond_3

    invoke-static {v2, v12}, Lx/b;->f([II)V

    move v6, v12

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    if-eq v6, v8, :cond_a

    invoke-static {v3, v6}, Lx/b;->a([II)V

    invoke-static {v2, v6}, Lx/b;->a([II)V

    aput v6, v5, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v6}, Lu/c;->y(I)Lu/b;

    move-result-object v6

    invoke-virtual {v0, v6}, Lu/c;->z(Lu/b;)Lu/b;

    move-result-object v9

    if-nez v9, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v9}, Lu/b;->a()I

    move-result v9

    invoke-virtual {v6}, Lu/b;->e()I

    move-result v10

    invoke-static {v3, v9}, Lx/b;->d([II)Z

    move-result v11

    if-eqz v11, :cond_6

    move v6, v9

    goto :goto_5

    :cond_6
    if-eq v10, v9, :cond_7

    if-ltz v10, :cond_7

    invoke-static {v3, v10}, Lx/b;->d([II)Z

    move-result v9

    if-eqz v9, :cond_7

    move v6, v10

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Lu/b;->g()Lx/k;

    move-result-object v6

    invoke-virtual {v6}, Lx/k;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_9

    invoke-virtual {v6, v10}, Lx/k;->l(I)I

    move-result v11

    invoke-static {v3, v11}, Lx/b;->d([II)Z

    move-result v12

    if-eqz v12, :cond_8

    move v6, v11

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, -0x1

    goto :goto_5

    :cond_a
    :goto_7
    invoke-static {v3, v4}, Lx/b;->c([II)I

    move-result v6

    goto/16 :goto_1

    :cond_b
    if-ne v7, v1, :cond_c

    iput-object v5, p0, Lo/w;->h:[I

    return-void

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n(Lu/s;ILu/i;ILn/b;)Lo/g;
    .locals 7

    new-instance v6, Lo/w;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/w;-><init>(Lu/s;ILu/i;ILn/b;)V

    invoke-direct {v6}, Lo/w;->o()Lo/g;

    move-result-object p0

    return-object p0
.end method

.method private o()Lo/g;
    .locals 4

    invoke-direct {p0}, Lo/w;->m()V

    invoke-direct {p0}, Lo/w;->l()V

    new-instance v0, Lo/y;

    iget-object v1, p0, Lo/w;->b:Lu/s;

    iget-object v2, p0, Lo/w;->h:[I

    iget-object v3, p0, Lo/w;->d:Lo/a;

    invoke-direct {v0, v1, v2, v3}, Lo/y;-><init>(Lu/s;[ILo/a;)V

    new-instance v1, Lo/g;

    iget v2, p0, Lo/w;->c:I

    iget-object v3, p0, Lo/w;->e:Lo/s;

    invoke-virtual {v3}, Lo/s;->c()Lo/t;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lo/g;-><init>(ILo/t;Lo/b;)V

    return-object v1
.end method
