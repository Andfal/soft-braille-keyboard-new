.class public abstract Lh/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/m;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/e;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/x0;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/j1;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/t0;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/y0;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/n0;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/x;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/e1;->a:Ljava/util/List;

    iput-object v0, p0, Lh/e1;->b:Ljava/util/List;

    iput-object v0, p0, Lh/e1;->c:Ljava/util/List;

    iput-object v0, p0, Lh/e1;->d:Ljava/util/List;

    iput-object v0, p0, Lh/e1;->e:Ljava/util/List;

    iput-object v0, p0, Lh/e1;->f:Ljava/util/List;

    iput-object v0, p0, Lh/e1;->g:Ljava/util/List;

    iput-object v0, p0, Lh/e1;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/e1;->i:Z

    return-void
.end method


# virtual methods
.method public c(Lh/d1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lh/y0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh/e1;->m()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lh/y0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v0, p1, Lh/t0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lh/e1;->k()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lh/t0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v0, p1, Lh/j1;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lh/e1;->n()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lh/j1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p1, Lh/x;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lh/e1;->i()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lh/x;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p1, Lh/x0;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lh/e1;->l()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lh/x0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    instance-of v0, p1, Lh/m;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lh/e1;->h()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lh/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    instance-of v0, p1, Lh/e;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lh/e1;->g()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lh/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    instance-of v0, p1, Lh/n0;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lh/e1;->j()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lh/n0;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public d(Lh/k0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p1, Lh/e1;->c:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/x0;

    invoke-interface {v1, p2, p3, p4}, Lh/x0;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    iget-object p1, p0, Lh/e1;->c:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/x0;

    invoke-interface {v1, p2, p3, p4}, Lh/x0;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public f(Lh/k0;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p1, Lh/e1;->f:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/y0;

    invoke-interface {v2, p1, p2, p3}, Lh/y0;->c(Lh/k0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_1
    iget-object v0, p0, Lh/e1;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/y0;

    invoke-interface {v2, p1, p2, p3}, Lh/y0;->c(Lh/k0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/e1;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/e1;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e1;->i:Z

    :cond_0
    iget-object v0, p0, Lh/e1;->b:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/e1;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/e1;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e1;->i:Z

    :cond_0
    iget-object v0, p0, Lh/e1;->a:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/e1;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/e1;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e1;->i:Z

    :cond_0
    iget-object v0, p0, Lh/e1;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/n0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/e1;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/e1;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e1;->i:Z

    :cond_0
    iget-object v0, p0, Lh/e1;->g:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/t0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/e1;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/e1;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e1;->i:Z

    :cond_0
    iget-object v0, p0, Lh/e1;->e:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/x0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/e1;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/e1;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e1;->i:Z

    :cond_0
    iget-object v0, p0, Lh/e1;->c:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/y0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/e1;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/e1;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e1;->i:Z

    :cond_0
    iget-object v0, p0, Lh/e1;->f:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/j1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/e1;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/e1;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e1;->i:Z

    :cond_0
    iget-object v0, p0, Lh/e1;->d:Ljava/util/List;

    return-object v0
.end method

.method protected o(Lh/k0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object p1, p1, Lh/e1;->e:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/t0;

    invoke-interface {v0, p2, p3, p4}, Lh/t0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh/e1;->e:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/t0;

    invoke-interface {v0, p2, p3, p4}, Lh/t0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    return-object p3
.end method

.method protected p(Lh/k0;Lh/l;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    if-eqz p5, :cond_5

    iget-object v0, p1, Lh/k0;->k:Lh/f1;

    iget v0, v0, Lh/f1;->c:I

    sget-object v1, Lh/g1;->B:Lh/g1;

    invoke-static {v0, p6, v1}, Lh/g1;->b(IILh/g1;)Z

    move-result p6

    if-nez p6, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lh/l;->a()I

    move-result p6

    iget v0, v1, Lh/g1;->a:I

    and-int/2addr p6, v0

    if-eqz p6, :cond_1

    :cond_0
    instance-of p6, p5, Ljava/lang/Number;

    if-nez p6, :cond_2

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lh/l;->c()Z

    move-result p6

    if-eqz p6, :cond_5

    check-cast p5, Ljava/lang/String;

    invoke-static {p5}, Lc/a;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p6, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lh/l;->b()Ljava/lang/String;

    move-result-object p6

    goto :goto_1

    :cond_3
    const/4 p6, 0x0

    :goto_1
    if-eqz p6, :cond_4

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    :cond_4
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_5
    :goto_2
    iget-object p6, p1, Lh/e1;->d:Ljava/util/List;

    if-eqz p6, :cond_6

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_3
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/j1;

    invoke-interface {v0, p3, p4, p5}, Lh/j1;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_3

    :cond_6
    iget-object p6, p0, Lh/e1;->d:Ljava/util/List;

    if-eqz p6, :cond_7

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_4
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/j1;

    invoke-interface {v0, p3, p4, p5}, Lh/j1;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_4

    :cond_7
    iget-object p1, p1, Lh/e1;->h:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lh/x;

    invoke-interface {p6, p2, p3, p4, p5}, Lh/x;->b(Lh/l;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lh/e1;->h:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lh/x;

    invoke-interface {p6, p2, p3, p4, p5}, Lh/x;->b(Lh/l;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_6

    :cond_9
    return-object p5
.end method
