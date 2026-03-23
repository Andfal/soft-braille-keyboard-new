.class public final Lq/e;
.super Lq/h0;
.source "SourceFile"


# instance fields
.field private e:Lq/c;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lq/r;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lq/d0;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lq/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lq/h0;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lq/e;->e:Lq/c;

    iput-object v0, p0, Lq/e;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Lq/e;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lq/e;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private static s(Ljava/util/ArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 2

    invoke-virtual {p1}, Lq/m;->u()Lq/g0;

    move-result-object v0

    iget-object v1, p0, Lq/e;->e:Lq/c;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lq/g0;->r(Lq/h0;)Lq/h0;

    move-result-object v0

    check-cast v0, Lq/c;

    iput-object v0, p0, Lq/e;->e:Lq/c;

    :cond_0
    iget-object v0, p0, Lq/e;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/r;

    invoke-virtual {v1, p1}, Lq/r;->d(Lq/m;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lq/e;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/d0;

    invoke-virtual {v1, p1}, Lq/d0;->d(Lq/m;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lq/e;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/i0;

    invoke-virtual {v1, p1}, Lq/i0;->d(Lq/m;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->u:Lq/z;

    return-object v0
.end method

.method public g(Lq/h0;)I
    .locals 1

    invoke-virtual {p0}, Lq/e;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lq/e;

    iget-object v0, p0, Lq/e;->e:Lq/c;

    iget-object p1, p1, Lq/e;->e:Lq/c;

    invoke-virtual {v0, p1}, Lq/h0;->f(Lq/h0;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "uninternable instance"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lq/e;->e:Lq/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lq/c;->hashCode()I

    move-result v0

    return v0
.end method

.method protected m(Lq/l0;I)V
    .locals 0

    iget-object p1, p0, Lq/e;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Lq/e;->s(Ljava/util/ArrayList;)I

    move-result p1

    iget-object p2, p0, Lq/e;->g:Ljava/util/ArrayList;

    invoke-static {p2}, Lq/e;->s(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lq/e;->h:Ljava/util/ArrayList;

    invoke-static {p2}, Lq/e;->s(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Lq/h0;->n(I)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected p(Lq/m;Lx/a;)V
    .locals 9

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v0

    iget-object v1, p0, Lq/e;->e:Lq/c;

    invoke-static {v1}, Lq/h0;->i(Lq/h0;)I

    move-result v1

    iget-object v2, p0, Lq/e;->f:Ljava/util/ArrayList;

    invoke-static {v2}, Lq/e;->s(Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Lq/e;->g:Ljava/util/ArrayList;

    invoke-static {v3}, Lq/e;->s(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, p0, Lq/e;->h:Ljava/util/ArrayList;

    invoke-static {v4}, Lq/e;->s(Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/h0;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " annotations directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  class_annotations_off: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p2, v7, v6}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  fields_size:           "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  methods_size:          "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  parameters_size:       "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v1}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v2}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v3}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v4}, Lx/q;->writeInt(I)V

    if-eqz v2, :cond_2

    iget-object v1, p0, Lq/e;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_1

    const-string v1, "  fields:"

    invoke-interface {p2, v5, v1}, Lx/a;->d(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lq/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/r;

    invoke-virtual {v2, p1, p2}, Lq/r;->f(Lq/m;Lx/a;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v1, p0, Lq/e;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_3

    const-string v1, "  methods:"

    invoke-interface {p2, v5, v1}, Lx/a;->d(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lq/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/d0;

    invoke-virtual {v2, p1, p2}, Lq/d0;->f(Lq/m;Lx/a;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    iget-object v1, p0, Lq/e;->h:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_5

    const-string v0, "  parameters:"

    invoke-interface {p2, v5, v0}, Lx/a;->d(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lq/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/i0;

    invoke-virtual {v1, p1, p2}, Lq/i0;->f(Lq/m;Lx/a;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lq/e;->e:Lq/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq/e;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq/e;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq/e;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lq/e;->e:Lq/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq/e;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq/e;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq/e;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
