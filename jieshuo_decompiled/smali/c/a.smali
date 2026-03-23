.class public abstract Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/j;
.implements Lc/c;


# static fields
.field public static a:Ljava/util/TimeZone;

.field public static b:Ljava/util/Locale;

.field public static c:Ljava/lang/String;

.field static final d:[Lh/d1;

.field public static e:Ljava/lang/String;

.field public static f:I

.field public static g:I

.field private static final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lc/a;->b:Ljava/util/Locale;

    const-string v0, "@type"

    sput-object v0, Lc/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Lh/d1;

    sput-object v1, Lc/a;->d:[Lh/d1;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sput-object v1, Lc/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lc/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lf/b;->b:Lf/b;

    invoke-virtual {v1}, Lf/b;->a()I

    move-result v1

    or-int/2addr v1, v0

    sget-object v2, Lf/b;->f:Lf/b;

    invoke-virtual {v2}, Lf/b;->a()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lf/b;->i:Lf/b;

    invoke-virtual {v2}, Lf/b;->a()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lf/b;->d:Lf/b;

    invoke-virtual {v2}, Lf/b;->a()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lf/b;->e:Lf/b;

    invoke-virtual {v2}, Lf/b;->a()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lf/b;->h:Lf/b;

    invoke-virtual {v2}, Lf/b;->a()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lf/b;->k:Lf/b;

    invoke-virtual {v2}, Lf/b;->a()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lf/b;->j:Lf/b;

    invoke-virtual {v2}, Lf/b;->a()I

    move-result v2

    or-int/2addr v1, v2

    sput v1, Lc/a;->f:I

    sget-object v1, Lh/g1;->b:Lh/g1;

    invoke-virtual {v1}, Lh/g1;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lh/g1;->l:Lh/g1;

    invoke-virtual {v1}, Lh/g1;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lh/g1;->f:Lh/g1;

    invoke-virtual {v1}, Lh/g1;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lh/g1;->m:Lh/g1;

    invoke-virtual {v1}, Lh/g1;->a()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lc/a;->g:I

    sget-object v0, Ll/e;->a:Ljava/util/Properties;

    invoke-static {v0}, Lc/a;->i(Ljava/util/Properties;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc/a;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc/a;->j:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static i(Ljava/util/Properties;)V
    .locals 5

    const-string v0, "fastjson.serializerFeatures.MapSortField"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh/g1;->E:Lh/g1;

    invoke-virtual {v1}, Lh/g1;->a()I

    move-result v1

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "false"

    if-eqz v3, :cond_0

    sget v0, Lc/a;->g:I

    or-int/2addr v0, v1

    :goto_0
    sput v0, Lc/a;->g:I

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lc/a;->g:I

    not-int v1, v1

    and-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "parser.features.NonStringKeyAsString"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lc/a;->f:I

    sget-object v1, Lf/b;->w:Lf/b;

    invoke-virtual {v1}, Lf/b;->a()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lc/a;->f:I

    :cond_2
    const-string v0, "parser.features.ErrorOnEnumNotMatch"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "fastjson.parser.features.ErrorOnEnumNotMatch"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget v0, Lc/a;->f:I

    sget-object v1, Lf/b;->y:Lf/b;

    invoke-virtual {v1}, Lf/b;->a()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lc/a;->f:I

    :cond_4
    const-string v0, "fastjson.asmEnable"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lf/i;->r()Lf/i;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/i;->x(Z)V

    invoke-static {}, Lh/c1;->g()Lh/c1;

    move-result-object p0

    invoke-virtual {p0, v0}, Lh/c1;->l(Z)V

    :cond_5
    return-void
.end method

.method public static j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lc/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget v0, Lc/a;->f:I

    invoke-static {p0, v0}, Lc/a;->l(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lf/i;->r()Lf/i;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lc/a;->m(Ljava/lang/String;Lf/i;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;Lf/i;I)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lf/a;

    invoke-direct {v0, p0, p1, p2}, Lf/a;-><init>(Ljava/lang/String;Lf/i;I)V

    invoke-virtual {v0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf/a;->D(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lf/a;->close()V

    return-object p0
.end method

.method public static n(Ljava/lang/String;)Lc/e;
    .locals 2

    invoke-static {p0}, Lc/a;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_0

    check-cast p0, Lc/e;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lc/a;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/e;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lc/d;

    const-string v1, "can not cast to JSONObject."

    invoke-direct {v0, v1, p0}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lf/b;

    invoke-static {p0, p1, v0}, Lc/a;->p(Ljava/lang/String;Ljava/lang/Class;[Lf/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs p(Ljava/lang/String;Ljava/lang/Class;[Lf/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lf/b;",
            ")TT;"
        }
    .end annotation

    sget-object v2, Lf/i;->y:Lf/i;

    const/4 v3, 0x0

    sget v4, Lc/a;->f:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lc/a;->q(Ljava/lang/String;Ljava/lang/reflect/Type;Lf/i;Lg/x1;I[Lf/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs q(Ljava/lang/String;Ljava/lang/reflect/Type;Lf/i;Lg/x1;I[Lf/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lf/i;",
            "Lg/x1;",
            "I[",
            "Lf/b;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    array-length v1, p5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p5, v2

    iget v3, v3, Lf/b;->a:I

    or-int/2addr p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p5, Lf/a;

    invoke-direct {p5, p0, p2, p4}, Lf/a;-><init>(Ljava/lang/String;Lf/i;I)V

    if-eqz p3, :cond_4

    instance-of p0, p3, Lg/k;

    if-eqz p0, :cond_2

    invoke-virtual {p5}, Lf/a;->u()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lg/k;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of p0, p3, Lg/j;

    if-eqz p0, :cond_3

    invoke-virtual {p5}, Lf/a;->m()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lg/j;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of p0, p3, Lg/m;

    if-eqz p0, :cond_4

    check-cast p3, Lg/m;

    invoke-virtual {p5, p3}, Lf/a;->k0(Lg/m;)V

    :cond_4
    invoke-virtual {p5, p1, v0}, Lf/a;->V(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p5, p0}, Lf/a;->D(Ljava/lang/Object;)V

    invoke-virtual {p5}, Lf/a;->close()V

    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lh/c1;->j:Lh/c1;

    invoke-static {p0, v0}, Lc/a;->s(Ljava/lang/Object;Lh/c1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Object;Lh/c1;)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lc/a;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    instance-of v1, p0, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/util/TreeMap;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    new-instance v0, Lc/e;

    invoke-direct {v0, v1}, Lc/e;-><init>(Ljava/util/Map;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ll/l;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc/a;->s(Ljava/lang/Object;Lh/c1;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/util/Collection;

    new-instance v0, Lc/b;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lc/b;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc/a;->s(Ljava/lang/Object;Lh/c1;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v0

    :cond_7
    instance-of v0, p0, Lh/i0;

    if-eqz v0, :cond_8

    invoke-static {p0}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    new-instance v0, Lc/b;

    invoke-direct {v0, p1}, Lc/b;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_a

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lc/a;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc/b;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    return-object v0

    :cond_b
    invoke-static {v0}, Lf/i;->u(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object p0

    :cond_c
    invoke-virtual {p1, v0}, Lh/c1;->h(Ljava/lang/Class;)Lh/v0;

    move-result-object v0

    instance-of v1, v0, Lh/l0;

    if-eqz v1, :cond_e

    check-cast v0, Lh/l0;

    new-instance v1, Lc/e;

    invoke-direct {v1}, Lc/e;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lh/l0;->w(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc/a;->s(Ljava/lang/Object;Lh/c1;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_d
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lc/d;

    const-string v0, "toJSON error"

    invoke-direct {p1, v0, p0}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_e
    invoke-static {p0}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/a;->d:[Lh/d1;

    const/4 v1, 0x0

    new-array v1, v1, [Lh/g1;

    invoke-static {p0, v0, v1}, Lc/a;->w(Ljava/lang/Object;[Lh/d1;[Lh/g1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v(Ljava/lang/Object;Lh/c1;[Lh/d1;Ljava/lang/String;I[Lh/g1;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lh/f1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4, p5}, Lh/f1;-><init>(Ljava/io/Writer;I[Lh/g1;)V

    :try_start_0
    new-instance p4, Lh/k0;

    invoke-direct {p4, v0, p1}, Lh/k0;-><init>(Lh/f1;Lh/c1;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4, p3}, Lh/k0;->D(Ljava/lang/String;)V

    sget-object p1, Lh/g1;->t:Lh/g1;

    const/4 p3, 0x1

    invoke-virtual {p4, p1, p3}, Lh/k0;->q(Lh/g1;Z)V

    :cond_0
    if-eqz p2, :cond_1

    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    aget-object p5, p2, p3

    invoke-virtual {p4, p5}, Lh/e1;->c(Lh/d1;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p0}, Lh/k0;->E(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lh/f1;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lh/f1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lh/f1;->close()V

    throw p0
.end method

.method public static varargs w(Ljava/lang/Object;[Lh/d1;[Lh/g1;)Ljava/lang/String;
    .locals 6

    sget-object v1, Lh/c1;->j:Lh/c1;

    const/4 v3, 0x0

    sget v4, Lc/a;->g:I

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lc/a;->v(Ljava/lang/Object;Lh/c1;[Lh/d1;Ljava/lang/String;I[Lh/g1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/Appendable;)V
    .locals 3

    new-instance v0, Lh/f1;

    invoke-direct {v0}, Lh/f1;-><init>()V

    :try_start_0
    new-instance v1, Lh/k0;

    invoke-direct {v1, v0}, Lh/k0;-><init>(Lh/f1;)V

    invoke-virtual {v1, p0}, Lh/k0;->E(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lh/f1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lh/f1;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v1, Lc/d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lh/f1;->close()V

    throw p1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    new-instance v0, Lh/f1;

    invoke-direct {v0}, Lh/f1;-><init>()V

    :try_start_0
    new-instance v1, Lh/k0;

    invoke-direct {v1, v0}, Lh/k0;-><init>(Lh/f1;)V

    invoke-virtual {v1, p0}, Lh/k0;->E(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lh/f1;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lh/f1;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lh/f1;->close()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lf/i;->r()Lf/i;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ll/l;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
