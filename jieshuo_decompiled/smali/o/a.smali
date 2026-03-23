.class public final Lo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lo/e;

.field private final b:[Lo/e;

.field private final c:[Lo/e;


# direct methods
.method public constructor <init>(Lu/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lu/s;->b()Lu/c;

    move-result-object v0

    invoke-virtual {v0}, Lx/m;->q()I

    move-result v0

    new-array v1, v0, [Lo/e;

    iput-object v1, p0, Lo/a;->a:[Lo/e;

    new-array v1, v0, [Lo/e;

    iput-object v1, p0, Lo/a;->b:[Lo/e;

    new-array v0, v0, [Lo/e;

    iput-object v0, p0, Lo/a;->c:[Lo/e;

    invoke-direct {p0, p1}, Lo/a;->e(Lu/s;)V

    return-void
.end method

.method private e(Lu/s;)V
    .locals 8

    invoke-virtual {p1}, Lu/s;->b()Lu/c;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lu/c;->v(I)Lu/b;

    move-result-object v3

    invoke-virtual {v3}, Lu/b;->a()I

    move-result v4

    invoke-virtual {v3}, Lu/b;->c()Lu/g;

    move-result-object v5

    invoke-virtual {v5, v1}, Lu/g;->q(I)Lu/f;

    move-result-object v5

    iget-object v6, p0, Lo/a;->a:[Lo/e;

    new-instance v7, Lo/e;

    invoke-virtual {v5}, Lu/f;->i()Lu/u;

    move-result-object v5

    invoke-direct {v7, v5}, Lo/e;-><init>(Lu/u;)V

    aput-object v7, v6, v4

    invoke-virtual {v3}, Lu/b;->d()Lu/f;

    move-result-object v3

    invoke-virtual {v3}, Lu/f;->i()Lu/u;

    move-result-object v3

    iget-object v5, p0, Lo/a;->b:[Lo/e;

    new-instance v6, Lo/e;

    invoke-direct {v6, v3}, Lo/e;-><init>(Lu/u;)V

    aput-object v6, v5, v4

    iget-object v5, p0, Lo/a;->c:[Lo/e;

    new-instance v6, Lo/e;

    invoke-direct {v6, v3}, Lo/e;-><init>(Lu/u;)V

    aput-object v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lu/b;)Lo/e;
    .locals 1

    iget-object v0, p0, Lo/a;->c:[Lo/e;

    invoke-virtual {p1}, Lu/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(Lu/b;)Lo/e;
    .locals 1

    iget-object v0, p0, Lo/a;->b:[Lo/e;

    invoke-virtual {p1}, Lu/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c(I)Lo/e;
    .locals 1

    iget-object v0, p0, Lo/a;->a:[Lo/e;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public d(Lu/b;)Lo/e;
    .locals 1

    iget-object v0, p0, Lo/a;->a:[Lo/e;

    invoke-virtual {p1}, Lu/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method
