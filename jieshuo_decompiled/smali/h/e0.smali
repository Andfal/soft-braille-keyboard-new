.class public Lh/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;
.implements Lg/j1;


# static fields
.field public static a:Lh/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/e0;

    invoke-direct {v0}, Lh/e0;-><init>()V

    sput-object v0, Lh/e0;->a:Lh/e0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    iget-object p3, p1, Lh/k0;->k:Lh/f1;

    instance-of p3, p2, Lcom/google/common/collect/Multimap;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/google/common/collect/Multimap;

    invoke-interface {p2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/k0;->E(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    :cond_0
    const-class p3, Lcom/google/common/collect/ArrayListMultimap;

    if-ne p2, p3, :cond_3

    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object p2

    invoke-virtual {p1}, Lf/a;->R()Lc/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/e;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, p3, v0}, Lcom/google/common/collect/ArrayListMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3, v0}, Lcom/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
