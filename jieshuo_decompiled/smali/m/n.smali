.class public final Lm/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/f;",
            ">;"
        }
    .end annotation
.end field

.field b:Lm/b;

.field c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/n;",
            ">;"
        }
    .end annotation
.end field

.field e:Lm/n;

.field f:Lm/n;

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/n;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/n;->c:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lm/n;->d:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lm/n;->g:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lm/n;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :goto_1
    iget-object v1, p0, Lm/n;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/n;

    invoke-virtual {v1}, Lm/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm/n;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/n;

    iget-object v2, v2, Lm/n;->e:Lm/n;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lm/n;->e:Lm/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm/n;->e:Lm/n;

    iget-object v0, v0, Lm/n;->e:Lm/n;

    iput-object v0, p0, Lm/n;->e:Lm/n;

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lm/n;->f:Lm/n;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lm/n;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lm/n;->f:Lm/n;

    iget-object v0, v0, Lm/n;->e:Lm/n;

    iput-object v0, p0, Lm/n;->f:Lm/n;

    goto :goto_3

    :cond_3
    return-void
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lm/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method c()Lu/b;
    .locals 5

    new-instance v0, Lu/g;

    iget-object v1, p0, Lm/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lu/g;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lm/n;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lm/n;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/f;

    invoke-virtual {v0, v1, v2}, Lu/g;->s(ILu/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lx/o;->f()V

    new-instance v1, Lx/k;

    invoke-direct {v1}, Lx/k;-><init>()V

    iget-object v2, p0, Lm/n;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/n;

    iget v3, v3, Lm/n;->g:I

    invoke-virtual {v1, v3}, Lx/k;->i(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lm/n;->e:Lm/n;

    if-eqz v2, :cond_2

    iget v2, v2, Lm/n;->g:I

    invoke-virtual {v1, v2}, Lx/k;->i(I)V

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    iget-object v3, p0, Lm/n;->f:Lm/n;

    if-eqz v3, :cond_3

    iget v3, v3, Lm/n;->g:I

    invoke-virtual {v1, v3}, Lx/k;->i(I)V

    :cond_3
    invoke-virtual {v1}, Lx/o;->f()V

    new-instance v3, Lu/b;

    iget v4, p0, Lm/n;->g:I

    invoke-direct {v3, v4, v0, v1, v2}, Lu/b;-><init>(ILu/g;Lx/k;I)V

    return-object v3
.end method
