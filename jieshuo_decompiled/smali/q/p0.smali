.class public final Lq/p0;
.super Lq/t0;
.source "SourceFile"


# instance fields
.field private final f:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lv/v;",
            "Lq/o0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq/m;)V
    .locals 2

    const-string v0, "string_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lq/t0;-><init>(Ljava/lang/String;Lq/m;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lq/p0;->f:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lq/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq/p0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected q()V
    .locals 3

    iget-object v0, p0, Lq/p0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/o0;

    invoke-virtual {v2, v1}, Lq/x;->i(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Lv/a;)Lq/x;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lq/l0;->k()V

    iget-object v0, p0, Lq/p0;->f:Ljava/util/TreeMap;

    check-cast p1, Lv/v;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/x;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(Lv/v;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lq/l0;->k()V

    iget-object v0, p0, Lq/p0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/o0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lq/x;->f()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Lq/o0;)Lq/o0;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lq/l0;->l()V

    invoke-virtual {p1}, Lq/o0;->j()Lv/v;

    move-result-object v0

    iget-object v1, p0, Lq/p0;->f:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/o0;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lq/p0;->f:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lv/v;)Lq/o0;
    .locals 1

    new-instance v0, Lq/o0;

    invoke-direct {v0, p1}, Lq/o0;-><init>(Lv/v;)V

    invoke-virtual {p0, v0}, Lq/p0;->t(Lq/o0;)Lq/o0;

    move-result-object p1

    return-object p1
.end method

.method public v(Lx/a;)V
    .locals 5

    invoke-virtual {p0}, Lq/l0;->k()V

    iget-object v0, p0, Lq/p0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq/l0;->f()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Lx/a;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string_ids_size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string_ids_off:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lx/a;->d(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p1, v0}, Lx/q;->writeInt(I)V

    invoke-interface {p1, v1}, Lx/q;->writeInt(I)V

    return-void
.end method
