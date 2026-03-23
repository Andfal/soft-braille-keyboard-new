.class public Ls3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/f;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:[Lt3/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Ls3/f;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls3/f;->b:Ljava/util/List;

    new-instance v0, Ls3/g;

    invoke-direct {v0}, Ls3/g;-><init>()V

    invoke-virtual {p0, v0}, Ls3/f;->a(Ls3/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ls3/f;->c:[Lt3/f;

    return-void
.end method

.method public constructor <init>(ILt3/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Ls3/f;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Ls3/f;->c:[Lt3/f;

    invoke-virtual {p2, p1}, Lt3/k;->b(I)[Lt3/i;

    move-result-object p1

    invoke-static {p1}, Ls3/e;->a([Lt3/i;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls3/f;->b:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls3/b;

    invoke-direct {p0, p1}, Ls3/f;->c(Ls3/b;)V

    return-void
.end method

.method private c(Ls3/b;)V
    .locals 4

    invoke-virtual {p1}, Ls3/d;->a()I

    move-result v0

    invoke-static {v0}, Ls3/d;->k(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    :goto_0
    iget-object v2, p0, Ls3/f;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/d;

    invoke-virtual {p1, v0}, Ls3/b;->u(Ls3/d;)V

    invoke-virtual {v0}, Ls3/d;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ls3/b;

    invoke-direct {p0, v2}, Ls3/f;->c(Ls3/b;)V

    :cond_2
    invoke-virtual {v0}, Ls3/d;->e()I

    move-result v2

    invoke-static {v2}, Ls3/d;->k(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ls3/f;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ls3/d;->d()I

    move-result v0

    invoke-static {v0}, Ls3/d;->k(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Ls3/d;)V
    .locals 1

    iget-object v0, p0, Ls3/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ls3/g;
    .locals 2

    iget-object v0, p0, Ls3/f;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/g;

    return-object v0
.end method
