.class public final Lu/p;
.super Lx/h;
.source "SourceFile"

# interfaces
.implements Lw/e;


# static fields
.field public static final c:Lu/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/p;-><init>(I)V

    sput-object v0, Lu/p;->c:Lu/p;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx/h;-><init>(I)V

    return-void
.end method

.method public static r(Lu/n;)Lu/p;
    .locals 2

    new-instance v0, Lu/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu/p;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lu/p;->u(ILu/n;)V

    return-object v0
.end method

.method public static s(Lu/n;Lu/n;)Lu/p;
    .locals 2

    new-instance v0, Lu/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lu/p;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lu/p;->u(ILu/n;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lu/p;->u(ILu/n;)V

    return-object v0
.end method

.method public static t(Lu/n;Lu/n;Lu/n;)Lu/p;
    .locals 2

    new-instance v0, Lu/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lu/p;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lu/p;->u(ILu/n;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lu/p;->u(ILu/n;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Lu/p;->u(ILu/n;)V

    return-object v0
.end method


# virtual methods
.method public getType(I)Lw/c;
    .locals 0

    invoke-virtual {p0, p1}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->getType()Lw/c;

    move-result-object p1

    invoke-virtual {p1}, Lw/c;->getType()Lw/c;

    move-result-object p1

    return-object p1
.end method

.method public p(I)Lu/n;
    .locals 0

    invoke-virtual {p0, p1}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/n;

    return-object p1
.end method

.method public q()I
    .locals 4

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lu/p;->getType(I)Lw/c;

    move-result-object v3

    invoke-virtual {v3}, Lw/c;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public u(ILu/n;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx/h;->k(ILjava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/util/BitSet;)Lu/p;
    .locals 4

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    sget-object p1, Lu/p;->c:Lu/p;

    return-object p1

    :cond_0
    new-instance v1, Lu/p;

    invoke-direct {v1, v0}, Lu/p;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lx/h;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx/h;->k(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lx/o;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lx/o;->f()V

    :cond_3
    return-object v1
.end method

.method public w(IZLjava/util/BitSet;)Lu/p;
    .locals 7

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lu/p;

    invoke-direct {v1, v0}, Lu/p;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu/n;

    const/4 v5, 0x1

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v4, p1}, Lu/n;->w(I)Lu/n;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lx/h;->k(ILjava/lang/Object;)V

    if-nez p2, :cond_4

    invoke-virtual {v4}, Lu/n;->i()I

    move-result v4

    add-int/2addr p1, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3, v4}, Lx/h;->k(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    const/4 p2, 0x0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lx/o;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lx/o;->f()V

    :cond_7
    return-object v1
.end method

.method public x(Lu/n;)Lu/p;
    .locals 5

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    new-instance v1, Lu/p;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lu/p;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lx/h;->k(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, p1}, Lx/h;->k(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lx/o;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lx/o;->f()V

    :cond_1
    return-object v1
.end method

.method public y(I)Lu/p;
    .locals 4

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lu/p;

    invoke-direct {v1, v0}, Lu/p;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/n;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lu/n;->v(I)Lu/n;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx/h;->k(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lx/o;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lx/o;->f()V

    :cond_3
    return-object v1
.end method
