.class public Ly3/r0;
.super Ly3/c0;
.source "SourceFile"


# instance fields
.field protected p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly3/w0;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Ly3/r0;

.field protected r:Ly3/s0;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/r0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/c0;-><init>()V

    const/16 v0, 0x84

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ly3/c0;-><init>()V

    const/16 v0, 0x84

    iput v0, p0, Lw3/g2;->a:I

    iput p1, p0, Ly3/e;->h:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/r0;-><init>(I)V

    iput p2, p0, Ly3/e;->i:I

    return-void
.end method

.method private F0()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly3/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly3/r0;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Ly3/r0;->p:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Ly3/r0;->p:Ljava/util/Map;

    return-object v0
.end method

.method public static K0(Ly3/r0;Ly3/r0;)V
    .locals 3

    invoke-direct {p0}, Ly3/r0;->F0()Ljava/util/Map;

    move-result-object p0

    invoke-direct {p1}, Ly3/r0;->F0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/w0;

    invoke-virtual {v2, p1}, Ly3/w0;->f(Ly3/r0;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static P0(Ly3/r0;)Ly3/r0;
    .locals 2

    new-instance v0, Ly3/r0;

    invoke-virtual {p0}, Lw3/g2;->H()I

    move-result v1

    invoke-direct {v0, v1}, Ly3/r0;-><init>(I)V

    iget-object v1, p0, Ly3/r0;->p:Ljava/util/Map;

    iput-object v1, v0, Ly3/r0;->p:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Ly3/r0;->p:Ljava/util/Map;

    iget-object v1, p0, Ly3/e;->j:Ly3/e;

    iput-object v1, v0, Ly3/e;->j:Ly3/e;

    invoke-virtual {p0}, Ly3/r0;->H0()Ly3/r0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly3/r0;->N0(Ly3/r0;)V

    invoke-virtual {v0, v0}, Ly3/r0;->N0(Ly3/r0;)V

    iput-object v0, p0, Ly3/e;->j:Ly3/e;

    iget-object p0, p0, Ly3/r0;->r:Ly3/s0;

    iput-object p0, v0, Ly3/r0;->r:Ly3/s0;

    return-object v0
.end method


# virtual methods
.method public E0(Ly3/r0;)V
    .locals 1

    iget-object v0, p0, Ly3/r0;->s:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/r0;->s:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Ly3/r0;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ly3/r0;->N0(Ly3/r0;)V

    return-void
.end method

.method public G0(Ljava/lang/String;)Ly3/r0;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly3/r0;->J0()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Ly3/r0;->q:Ly3/r0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public H0()Ly3/r0;
    .locals 1

    iget-object v0, p0, Ly3/r0;->q:Ly3/r0;

    return-object v0
.end method

.method public I0(Ljava/lang/String;)Ly3/w0;
    .locals 1

    iget-object v0, p0, Ly3/r0;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly3/w0;

    :goto_0
    return-object p1
.end method

.method public J0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly3/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly3/r0;->p:Ljava/util/Map;

    return-object v0
.end method

.method public L0(Ly3/w0;)V
    .locals 2

    invoke-virtual {p1}, Ly3/w0;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ly3/r0;->F0()Ljava/util/Map;

    iget-object v0, p0, Ly3/r0;->p:Ljava/util/Map;

    invoke-virtual {p1}, Ly3/w0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ly3/w0;->f(Ly3/r0;)V

    iget-object v0, p0, Ly3/r0;->r:Ly3/s0;

    invoke-virtual {v0, p1}, Ly3/s0;->S0(Ly3/w0;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null symbol name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M0(Ly3/r0;)V
    .locals 2

    iget-object v0, p0, Ly3/r0;->s:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/r0;

    invoke-virtual {p1, v1}, Ly3/r0;->E0(Ly3/r0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly3/r0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly3/r0;->s:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Ly3/r0;->p:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ly3/r0;->K0(Ly3/r0;Ly3/r0;)V

    :cond_2
    return-void
.end method

.method public N0(Ly3/r0;)V
    .locals 0

    iput-object p1, p0, Ly3/r0;->q:Ly3/r0;

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Ly3/s0;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ly3/r0;->r:Ly3/s0;

    :goto_0
    iput-object p1, p0, Ly3/r0;->r:Ly3/s0;

    return-void
.end method

.method public O0(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly3/w0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ly3/r0;->p:Ljava/util/Map;

    return-void
.end method
