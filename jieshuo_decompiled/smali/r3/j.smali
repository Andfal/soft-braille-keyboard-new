.class public Lr3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ls3/f;

.field private b:Ljava/util/List;

.field private c:Lr3/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls3/f;

    invoke-direct {v0}, Ls3/f;-><init>()V

    iput-object v0, p0, Lr3/j;->a:Ls3/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr3/j;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/j;->c:Lr3/b;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8

    invoke-direct {p0}, Lr3/j;-><init>()V

    new-instance v0, Lt3/h;

    invoke-direct {v0, p1}, Lt3/h;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Lt3/k;

    invoke-direct {v7, p1}, Lt3/k;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lt3/c;

    invoke-virtual {v0}, Lt3/h;->b()I

    move-result v2

    invoke-virtual {v0}, Lt3/h;->a()[I

    move-result-object v3

    invoke-virtual {v0}, Lt3/h;->e()I

    move-result v4

    invoke-virtual {v0}, Lt3/h;->f()I

    move-result v5

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lt3/c;-><init>(I[IIILt3/d;)V

    new-instance p1, Ls3/f;

    invoke-virtual {v0}, Lt3/h;->c()I

    move-result v1

    invoke-direct {p1, v1, v7}, Ls3/f;-><init>(ILt3/k;)V

    invoke-virtual {p1}, Ls3/f;->b()Ls3/g;

    move-result-object v1

    invoke-virtual {v0}, Lt3/h;->d()I

    move-result v0

    invoke-static {v7, v1, v0}, Lt3/l;->a(Lt3/k;Ls3/g;I)Lt3/d;

    move-result-object v0

    invoke-virtual {p1}, Ls3/f;->b()Ls3/g;

    move-result-object p1

    invoke-virtual {p1}, Ls3/b;->v()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v7, p1, v1}, Lr3/j;->e(Lt3/d;Lt3/d;Ljava/util/Iterator;Lr3/b;)V

    return-void
.end method

.method private e(Lt3/d;Lt3/d;Ljava/util/Iterator;Lr3/b;)V
    .locals 5

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/d;

    invoke-virtual {v0}, Ls3/d;->c()Ljava/lang/String;

    move-result-object v1

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lr3/j;->d()Lr3/a;

    move-result-object v2

    check-cast v2, Lr3/b;

    goto :goto_1

    :cond_0
    move-object v2, p4

    :goto_1
    invoke-virtual {v0}, Ls3/d;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lr3/b;->d(Ljava/lang/String;)Lr3/a;

    move-result-object v1

    check-cast v1, Lr3/b;

    invoke-virtual {v0}, Ls3/d;->h()Lo3/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr3/b;->f(Lo3/a;)V

    check-cast v0, Ls3/b;

    invoke-virtual {v0}, Ls3/b;->v()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v1}, Lr3/j;->e(Lt3/d;Lt3/d;Ljava/util/Iterator;Lr3/b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ls3/d;->g()I

    move-result v3

    invoke-virtual {v0}, Ls3/d;->f()I

    move-result v4

    invoke-virtual {v0}, Ls3/d;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lr3/h;

    invoke-interface {p1, v3}, Lt3/d;->b(I)[Lt3/i;

    move-result-object v3

    invoke-direct {v0, v1, v3, v4}, Lr3/h;-><init>(Ljava/lang/String;[Lt3/i;I)V

    goto :goto_2

    :cond_2
    new-instance v0, Lr3/h;

    invoke-interface {p2, v3}, Lt3/d;->b(I)[Lt3/i;

    move-result-object v3

    invoke-direct {v0, v1, v3, v4}, Lr3/h;-><init>(Ljava/lang/String;[Lt3/i;I)V

    :goto_2
    invoke-virtual {v2, v0}, Lr3/b;->e(Lr3/h;)Lr3/c;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method a(Ls3/b;)V
    .locals 1

    iget-object v0, p0, Lr3/j;->a:Ls3/f;

    invoke-virtual {v0, p1}, Ls3/f;->a(Ls3/d;)V

    return-void
.end method

.method b(Lr3/h;)V
    .locals 1

    iget-object v0, p0, Lr3/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr3/j;->a:Ls3/f;

    invoke-virtual {p1}, Lr3/h;->a()Ls3/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls3/f;->a(Ls3/d;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lr3/d;
    .locals 3

    invoke-virtual {p0}, Lr3/j;->d()Lr3/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lr3/a;->a(Ljava/lang/String;)Lr3/f;

    move-result-object v0

    invoke-interface {v0}, Lr3/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lr3/d;

    check-cast v0, Lr3/c;

    invoke-direct {p1, v0}, Lr3/d;-><init>(Lr3/c;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Entry \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' is not a DocumentEntry"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lr3/a;
    .locals 3

    iget-object v0, p0, Lr3/j;->c:Lr3/b;

    if-nez v0, :cond_0

    new-instance v0, Lr3/b;

    iget-object v1, p0, Lr3/j;->a:Ls3/f;

    invoke-virtual {v1}, Ls3/f;->b()Ls3/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lr3/b;-><init>(Ls3/b;Lr3/j;Lr3/b;)V

    iput-object v0, p0, Lr3/j;->c:Lr3/b;

    :cond_0
    iget-object v0, p0, Lr3/j;->c:Lr3/b;

    return-object v0
.end method
