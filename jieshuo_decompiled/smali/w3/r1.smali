.class public Lw3/r1;
.super Lw3/t1;
.source "SourceFile"


# instance fields
.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lw3/t1;-><init>(Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)V

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lw3/r1;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public C(ILw3/z2;)Z
    .locals 2

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->C(ILw3/z2;)Z

    move-result p1

    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lw3/m;->D()Lw3/z3;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v0, p0, p1, v1}, Lw3/z3;->b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    invoke-static {p3, v0}, Lw3/m;->P(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw3/t1;->d(ILw3/z2;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-super {p0}, Lw3/t1;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "JavaMap"

    return-object v0
.end method

.method public r(Ljava/lang/String;Lw3/z2;)Z
    .locals 2

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lw3/r1;->k:Ljava/util/Map;

    const-class v0, Ljava/lang/Object;

    invoke-static {p3, v0}, Lw3/m;->P(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw3/t1;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lw3/r1;->k:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lw3/m;->D()Lw3/z3;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v0, p0, p1, v1}, Lw3/z3;->b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
