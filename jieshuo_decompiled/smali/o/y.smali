.class public final Lo/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/b;


# instance fields
.field private final a:Lu/s;

.field private final b:[I

.field private final c:Lo/a;


# direct methods
.method public constructor <init>(Lu/s;[ILo/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lo/y;->a:Lu/s;

    iput-object p2, p0, Lo/y;->b:[I

    iput-object p3, p0, Lo/y;->c:Lo/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "order == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Lu/s;[ILo/a;)Lo/d;
    .locals 10

    array-length v0, p1

    invoke-virtual {p0}, Lu/s;->b()Lu/c;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lo/c;->c:Lo/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_4

    aget v7, p1, v6

    invoke-virtual {p0, v7}, Lu/c;->y(I)Lu/b;

    move-result-object v7

    invoke-virtual {v7}, Lu/b;->b()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v7, p2}, Lo/y;->d(Lu/b;Lo/a;)Lo/c;

    move-result-object v8

    invoke-virtual {v2}, Lx/h;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v8}, Lx/h;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v3, v7, p2}, Lo/y;->f(Lu/b;Lu/b;Lo/a;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v5, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lx/h;->size()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v3, v5, v2, p2}, Lo/y;->e(Lu/b;Lu/b;Lo/c;Lo/a;)Lo/d$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    move-object v3, v7

    move-object v5, v3

    move-object v2, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lx/h;->size()I

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v3, v5, v2, p2}, Lo/y;->e(Lu/b;Lu/b;Lo/c;Lo/a;)Lo/d$a;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lo/d;->c:Lo/d;

    return-object p0

    :cond_6
    new-instance p1, Lo/d;

    invoke-direct {p1, p0}, Lo/d;-><init>(I)V

    :goto_3
    if-ge v4, p0, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/d$a;

    invoke-virtual {p1, v4, p2}, Lo/d;->r(ILo/d$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lx/o;->f()V

    return-object p1
.end method

.method private static d(Lu/b;Lo/a;)Lo/c;
    .locals 6

    invoke-virtual {p0}, Lu/b;->g()Lx/k;

    move-result-object v0

    invoke-virtual {v0}, Lx/k;->size()I

    move-result v1

    invoke-virtual {p0}, Lu/b;->e()I

    move-result v2

    invoke-virtual {p0}, Lu/b;->d()Lu/f;

    move-result-object p0

    invoke-virtual {p0}, Lu/f;->f()Lw/e;

    move-result-object p0

    invoke-interface {p0}, Lw/e;->size()I

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lo/c;->c:Lo/c;

    return-object p0

    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    if-eq v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v3}, Lx/k;->l(I)I

    move-result v1

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen: weird successors list"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-interface {p0, v2}, Lw/e;->getType(I)Lw/c;

    move-result-object v4

    sget-object v5, Lw/c;->w:Lw/c;

    invoke-virtual {v4, v5}, Lw/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v2, Lo/c;

    invoke-direct {v2, v3}, Lo/c;-><init>(I)V

    :goto_3
    if-ge v1, v3, :cond_6

    new-instance v4, Lv/w;

    invoke-interface {p0, v1}, Lw/e;->getType(I)Lw/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lv/w;-><init>(Lw/c;)V

    invoke-virtual {v0, v1}, Lx/k;->l(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lo/a;->c(I)Lo/e;

    move-result-object v5

    invoke-virtual {v5}, Lo/h;->f()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Lo/c;->s(ILv/w;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lx/o;->f()V

    return-object v2
.end method

.method private static e(Lu/b;Lu/b;Lo/c;Lo/a;)Lo/d$a;
    .locals 0

    invoke-virtual {p3, p0}, Lo/a;->b(Lu/b;)Lo/e;

    move-result-object p0

    invoke-virtual {p3, p1}, Lo/a;->a(Lu/b;)Lo/e;

    move-result-object p1

    new-instance p3, Lo/d$a;

    invoke-virtual {p0}, Lo/h;->f()I

    move-result p0

    invoke-virtual {p1}, Lo/h;->f()I

    move-result p1

    invoke-direct {p3, p0, p1, p2}, Lo/d$a;-><init>(IILo/c;)V

    return-object p3
.end method

.method private static f(Lu/b;Lu/b;Lo/a;)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p2, p0}, Lo/a;->b(Lu/b;)Lo/e;

    move-result-object p0

    invoke-virtual {p0}, Lo/h;->f()I

    move-result p0

    invoke-virtual {p2, p1}, Lo/a;->a(Lu/b;)Lo/e;

    move-result-object p1

    invoke-virtual {p1}, Lo/h;->f()I

    move-result p1

    sub-int/2addr p1, p0

    const p0, 0xffff

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "end == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "start == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 5

    iget-object v0, p0, Lo/y;->a:Lu/s;

    invoke-virtual {v0}, Lu/s;->b()Lu/c;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lu/c;->v(I)Lu/b;

    move-result-object v4

    invoke-virtual {v4}, Lu/b;->d()Lu/f;

    move-result-object v4

    invoke-virtual {v4}, Lu/f;->f()Lw/e;

    move-result-object v4

    invoke-interface {v4}, Lw/e;->size()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public b()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lw/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lo/y;->a:Lu/s;

    invoke-virtual {v1}, Lu/s;->b()Lu/c;

    move-result-object v1

    invoke-virtual {v1}, Lx/h;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Lu/c;->v(I)Lu/b;

    move-result-object v5

    invoke-virtual {v5}, Lu/b;->d()Lu/f;

    move-result-object v5

    invoke-virtual {v5}, Lu/f;->f()Lw/e;

    move-result-object v5

    invoke-interface {v5}, Lw/e;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-interface {v5, v7}, Lw/e;->getType(I)Lw/c;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public build()Lo/d;
    .locals 3

    iget-object v0, p0, Lo/y;->a:Lu/s;

    iget-object v1, p0, Lo/y;->b:[I

    iget-object v2, p0, Lo/y;->c:Lo/a;

    invoke-static {v0, v1, v2}, Lo/y;->c(Lu/s;[ILo/a;)Lo/d;

    move-result-object v0

    return-object v0
.end method
