.class public final Lq/f0;
.super Lq/c0;
.source "SourceFile"


# instance fields
.field private final f:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lv/d;",
            "Lq/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq/m;)V
    .locals 1

    const-string v0, "method_ids"

    invoke-direct {p0, v0, p1}, Lq/c0;-><init>(Ljava/lang/String;Lq/m;)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lq/f0;->f:Ljava/util/TreeMap;

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

    iget-object v0, p0, Lq/f0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public r(Lv/a;)Lq/x;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lq/l0;->k()V

    iget-object v0, p0, Lq/f0;->f:Ljava/util/TreeMap;

    check-cast p1, Lv/d;

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

.method public s(Lv/d;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lq/l0;->k()V

    iget-object v0, p0, Lq/f0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/e0;

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

    const-string v0, "ref == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Lv/d;)Lq/e0;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lq/l0;->l()V

    iget-object v0, p0, Lq/f0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/e0;

    if-nez v0, :cond_0

    new-instance v0, Lq/e0;

    invoke-direct {v0, p1}, Lq/e0;-><init>(Lv/d;)V

    iget-object v1, p0, Lq/f0;->f:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lx/a;)V
    .locals 5

    invoke-virtual {p0}, Lq/l0;->k()V

    iget-object v0, p0, Lq/f0;->f:Ljava/util/TreeMap;

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

    const-string v3, "method_ids_size: "

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

    const-string v4, "method_ids_off:  "

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
