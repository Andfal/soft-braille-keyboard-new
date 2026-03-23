.class Lw3/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/t0$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw3/c0;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw3/c0;",
            ">;"
        }
    .end annotation
.end field

.field f:Lw3/s1;


# direct methods
.method constructor <init>(Lw3/z2;Ljava/lang/Class;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/z2;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lw3/o;->e()Lw3/o;

    move-result-object v0

    invoke-virtual {v0}, Lw3/o;->b()Lw3/m;

    move-result-object v0

    invoke-virtual {v0}, Lw3/m;->o()Lw3/h;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lw3/t0;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lw3/t0;->d:Ljava/util/Map;

    iput-object p2, p0, Lw3/t0;->a:Ljava/lang/Class;

    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Lw3/m;->E(I)Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lw3/t0;->s(Lw3/z2;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lw3/m;->n()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lw3/m;->n()V

    throw p1
.end method

.method private static a(Ljava/lang/Class;Ljava/util/Map;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lw3/t0$a;",
            "Ljava/lang/reflect/Method;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p3, :cond_a

    :cond_0
    if-nez p2, :cond_3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_c

    aget-object v4, v0, v3

    new-instance v5, Lw3/t0$a;

    invoke-direct {v5, v4}, Lw3/t0$a;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_c

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p3, :cond_6

    :cond_4
    new-instance v5, Lw3/t0$a;

    invoke-direct {v5, v4}, Lw3/t0$a;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_5
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    invoke-static {v4, p1, p2, p3}, Lw3/t0;->a(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_c

    aget-object v4, v0, v3

    new-instance v5, Lw3/t0$a;

    invoke-direct {v5, v4}, Lw3/t0$a;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not discover accessible methods of class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to lack of privileges, attemping superclasses/interfaces."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/m;->e0(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_b

    aget-object v3, v0, v1

    invoke-static {v3, p1, p2, p3}, Lw3/t0;->a(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-static {p0, p1, p2, p3}, Lw3/t0;->a(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    :cond_c
    return-void
.end method

.method private static b(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;ZZ)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lw3/t0;->a(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/reflect/Method;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static c([Lw3/x0;Z)Lw3/x0;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    iget-object v3, v2, Lw3/x0;->b:[Ljava/lang/Class;

    array-length v3, v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lw3/x0;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Lw3/x0;->m()Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_2

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/Class;[Lw3/x0;Z)Lw3/x0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lw3/x0;",
            "Z)",
            "Lw3/x0;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_5

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v6, p1, v5

    if-eqz p2, :cond_0

    invoke-virtual {v6}, Lw3/x0;->l()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    iget-object v7, v6, Lw3/x0;->b:[Ljava/lang/Class;

    array-length v8, v7

    if-ne v8, v0, :cond_3

    if-ne v1, v0, :cond_1

    aget-object v7, v7, v4

    if-ne v7, p0, :cond_3

    return-object v6

    :cond_1
    if-eq v1, v2, :cond_2

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_2
    aget-object v7, v7, v4

    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e([Lw3/x0;Z)Lw3/x0;
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lw3/x0;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Lw3/x0;->m()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lw3/x0;->b:[Ljava/lang/Class;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private f(Ljava/lang/String;Z)Lw3/x0;
    .locals 9

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lw3/t0;->b:Ljava/util/Map;

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    iget-object p2, p0, Lw3/t0;->f:Lw3/s1;

    iget-object p2, p2, Lw3/s1;->p:[Lw3/x0;

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez p2, :cond_4

    if-nez v2, :cond_4

    iget-object p2, p0, Lw3/t0;->d:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_4
    instance-of p2, v2, Lw3/s1;

    if-eqz p2, :cond_5

    check-cast v2, Lw3/s1;

    iget-object p2, v2, Lw3/s1;->p:[Lw3/x0;

    goto :goto_2

    :cond_5
    move-object p2, v1

    :goto_2
    if-eqz p2, :cond_7

    array-length v2, p2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_7

    aget-object v5, p2, v4

    iget-object v6, v5, Lw3/x0;->b:[Ljava/lang/Class;

    invoke-static {v6}, Lw3/t0;->p([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v0, v6, v3, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_6

    return-object v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-object v1
.end method

.method private static g(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lw3/x0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lw3/x0;"
        }
    .end annotation

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lw3/s1;

    if-eqz p2, :cond_0

    check-cast p1, Lw3/s1;

    iget-object p1, p1, Lw3/s1;->p:[Lw3/x0;

    invoke-static {p1, p0}, Lw3/t0;->c([Lw3/x0;Z)Lw3/x0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private i(Z)[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lw3/t0;->a:Ljava/lang/Class;

    sget-object v0, Lw3/u2;->d:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not access constructor  of class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lw3/t0;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to lack of privileges."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/m;->e0(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lw3/t0;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method private j(ZZ)[Ljava/lang/reflect/Field;
    .locals 7

    if-nez p2, :cond_0

    if-eqz p1, :cond_6

    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lw3/t0;->a:Ljava/lang/Class;

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    if-nez p2, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/reflect/Field;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_6
    iget-object p1, p0, Lw3/t0;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method private k(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    if-eqz p4, :cond_0

    iget-object p3, p0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lw3/t0;->b:Ljava/util/Map;

    :goto_0
    invoke-direct {p0, p2, p4}, Lw3/t0;->f(Ljava/lang/String;Z)Lw3/x0;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-static {p1}, Lw3/a3;->v0(Lw3/z2;)Lw3/z2;

    move-result-object p1

    invoke-virtual {p4}, Lw3/x0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lw3/p1;

    invoke-direct {v0, p4}, Lw3/p1;-><init>(Lw3/x0;)V

    :goto_1
    invoke-virtual {v0, p1}, Lw3/a3;->A(Lw3/z2;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p4}, Lw3/x0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lw3/s1;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lw3/s1;

    iget-object v1, v1, Lw3/s1;->p:[Lw3/x0;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    new-instance v0, Lw3/s1;

    invoke-direct {v0, p4, p2}, Lw3/s1;-><init>(Lw3/x0;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return-object v0
.end method

.method static o(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "[]"

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static p([Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, "()"

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_2

    if-eqz v2, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3}, Lw3/t0;->o(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static q(Lw3/z2;Ljava/lang/Class;Ljava/lang/Class;Z)Lw3/t0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/z2;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lw3/t0;"
        }
    .end annotation

    invoke-static {p0}, Lw3/g;->c(Lw3/z2;)Lw3/g;

    move-result-object p0

    invoke-virtual {p0}, Lw3/g;->e()Ljava/util/Map;

    move-result-object v0

    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/t0;

    if-eqz v2, :cond_1

    if-eq v1, p1, :cond_0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v2, Lw3/t0;

    invoke-virtual {p0}, Lw3/g;->d()Lw3/z2;

    move-result-object v3

    invoke-direct {v2, v3, v1, p3}, Lw3/t0;-><init>(Lw3/z2;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lw3/g;->g()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v1, p1, :cond_2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2

    :catch_0
    move-exception v2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v3, Lw3/u2;->j:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    throw v2

    :cond_5
    :goto_1
    move-object v1, v3

    goto :goto_0
.end method

.method private s(Lw3/z2;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lw3/t0;->a:Ljava/lang/Class;

    invoke-static {v4, v2, v3}, Lw3/t0;->b(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_1

    :cond_0
    iget-object v9, v0, Lw3/t0;->b:Ljava/util/Map;

    :goto_1
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    instance-of v12, v11, Lw3/j2;

    if-eqz v12, :cond_2

    check-cast v11, Lw3/j2;

    goto :goto_2

    :cond_2
    instance-of v12, v11, Ljava/lang/reflect/Method;

    if-nez v12, :cond_3

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_3
    new-instance v12, Lw3/j2;

    invoke-direct {v12}, Lw3/j2;-><init>()V

    invoke-virtual {v12, v11}, Lw3/j2;->a(Ljava/lang/Object;)V

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v12

    :goto_2
    invoke-virtual {v11, v8}, Lw3/j2;->a(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_c

    if-nez v4, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_6

    iget-object v8, v0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_6

    :cond_6
    iget-object v8, v0, Lw3/t0;->b:Ljava/util/Map;

    :goto_6
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/reflect/Method;

    if-eqz v12, :cond_7

    new-array v12, v7, [Lw3/x0;

    new-instance v13, Lw3/x0;

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-direct {v13, v11}, Lw3/x0;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v13, v12, v6

    goto :goto_9

    :cond_7
    check-cast v11, Lw3/j2;

    invoke-virtual {v11}, Lw3/j2;->m()I

    move-result v12

    if-ge v12, v5, :cond_8

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_8
    new-array v13, v12, [Lw3/x0;

    const/4 v14, 0x0

    :goto_8
    if-eq v14, v12, :cond_9

    invoke-virtual {v11, v14}, Lw3/j2;->c(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Method;

    new-instance v7, Lw3/x0;

    invoke-direct {v7, v15}, Lw3/x0;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v7, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    move-object v12, v13

    :goto_9
    new-instance v7, Lw3/s1;

    invoke-direct {v7, v12}, Lw3/s1;-><init>([Lw3/x0;)V

    if-eqz v1, :cond_a

    invoke-static {v7, v1}, Lw3/u2;->w1(Lw3/c;Lw3/z2;)V

    :cond_a
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    invoke-direct {v0, v2, v3}, Lw3/t0;->j(ZZ)[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v4, :cond_15

    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    :try_start_0
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v11, v0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_b

    :cond_d
    iget-object v11, v0, Lw3/t0;->b:Ljava/util/Map;

    :goto_b
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_e

    :goto_c
    invoke-interface {v11, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_e
    instance-of v13, v12, Lw3/s1;

    if-eqz v13, :cond_12

    check-cast v12, Lw3/s1;

    new-instance v13, Lw3/c0;

    iget-object v12, v12, Lw3/s1;->p:[Lw3/x0;

    invoke-direct {v13, v1, v12, v8}, Lw3/c0;-><init>(Lw3/z2;[Lw3/x0;Ljava/lang/reflect/Field;)V

    if-eqz v10, :cond_f

    iget-object v8, v0, Lw3/t0;->e:Ljava/util/Map;

    goto :goto_d

    :cond_f
    iget-object v8, v0, Lw3/t0;->c:Ljava/util/Map;

    :goto_d
    if-nez v8, :cond_11

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v10, :cond_10

    iput-object v8, v0, Lw3/t0;->e:Ljava/util/Map;

    goto :goto_e

    :cond_10
    iput-object v8, v0, Lw3/t0;->c:Ljava/util/Map;

    :cond_11
    :goto_e
    invoke-interface {v8, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_12
    instance-of v10, v12, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_13

    check-cast v12, Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_c

    :cond_13
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not access field "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " of class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lw3/t0;->a:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " due to lack of privileges."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lw3/m;->e0(Ljava/lang/String;)V

    :cond_14
    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_10
    if-eq v1, v5, :cond_26

    if-nez v1, :cond_16

    const/4 v2, 0x1

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_17

    iget-object v4, v0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_12

    :cond_17
    iget-object v4, v0, Lw3/t0;->b:Ljava/util/Map;

    :goto_12
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_18
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "set"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "is"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v11, :cond_1a

    if-nez v15, :cond_1a

    if-eqz v13, :cond_19

    goto :goto_14

    :cond_19
    const/4 v15, 0x1

    goto :goto_13

    :cond_1a
    :goto_14
    if-eqz v15, :cond_1b

    const/4 v11, 0x2

    goto :goto_15

    :cond_1b
    const/4 v11, 0x3

    :goto_15
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_1d

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto :goto_16

    :cond_1d
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-nez v13, :cond_1e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_16

    :cond_1e
    move-object v11, v9

    :goto_16
    invoke-interface {v7, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    goto :goto_13

    :cond_1f
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_20

    if-eqz v3, :cond_18

    instance-of v15, v13, Ljava/lang/reflect/Member;

    if-eqz v15, :cond_18

    check-cast v13, Ljava/lang/reflect/Member;

    invoke-interface {v13}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v13

    if-nez v13, :cond_20

    goto/16 :goto_13

    :cond_20
    invoke-static {v2, v4, v10, v9}, Lw3/t0;->g(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lw3/x0;

    move-result-object v10

    if-nez v10, :cond_21

    invoke-static {v2, v4, v14, v9}, Lw3/t0;->g(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lw3/x0;

    move-result-object v10

    :cond_21
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_24

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v12, v9, Lw3/s1;

    if-eqz v12, :cond_24

    check-cast v9, Lw3/s1;

    if-eqz v10, :cond_22

    invoke-virtual {v10}, Lw3/x0;->m()Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    iget-object v14, v9, Lw3/s1;->p:[Lw3/x0;

    invoke-static {v12, v14, v2}, Lw3/t0;->d(Ljava/lang/Class;[Lw3/x0;Z)Lw3/x0;

    move-result-object v12

    goto :goto_17

    :cond_22
    iget-object v12, v9, Lw3/s1;->p:[Lw3/x0;

    invoke-static {v12, v2}, Lw3/t0;->e([Lw3/x0;Z)Lw3/x0;

    move-result-object v12

    :goto_17
    iget-object v14, v9, Lw3/s1;->p:[Lw3/x0;

    array-length v14, v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_23

    goto :goto_18

    :cond_23
    move-object v9, v13

    :goto_18
    move-object v13, v12

    goto :goto_19

    :cond_24
    const/4 v15, 0x1

    move-object v9, v13

    :goto_19
    new-instance v12, Lw3/d;

    invoke-direct {v12, v10, v13, v9}, Lw3/d;-><init>(Lw3/x0;Lw3/x0;Lw3/s1;)V

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_25
    const/4 v15, 0x1

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    :cond_26
    invoke-direct {v0, v3}, Lw3/t0;->i(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lw3/x0;

    :goto_1a
    array-length v3, v1

    if-eq v6, v3, :cond_27

    new-instance v3, Lw3/x0;

    aget-object v4, v1, v6

    invoke-direct {v3, v4}, Lw3/x0;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_27
    new-instance v1, Lw3/s1;

    iget-object v3, v0, Lw3/t0;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lw3/s1;-><init>([Lw3/x0;Ljava/lang/String;)V

    iput-object v1, v0, Lw3/t0;->f:Lw3/s1;

    return-void
.end method


# virtual methods
.method h(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    if-eqz p4, :cond_0

    iget-object v0, p0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/t0;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lw3/t0;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lw3/t0;->k(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1

    :cond_2
    instance-of p2, v0, Lw3/z2;

    if-eqz p2, :cond_3

    return-object v0

    :cond_3
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p2

    :try_start_0
    instance-of v1, v0, Lw3/d;

    if-eqz v1, :cond_5

    check-cast v0, Lw3/d;

    iget-object p4, v0, Lw3/d;->a:Lw3/x0;

    if-nez p4, :cond_4

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1

    :cond_4
    sget-object v1, Lw3/m;->F:[Ljava/lang/Object;

    invoke-virtual {p4, p3, v1}, Lw3/x0;->h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, v0, Lw3/d;->a:Lw3/x0;

    invoke-virtual {p4}, Lw3/x0;->m()Ljava/lang/reflect/Method;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p4

    goto :goto_1

    :cond_5
    check-cast v0, Ljava/lang/reflect/Field;

    if-eqz p4, :cond_6

    const/4 p3, 0x0

    :cond_6
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p1

    invoke-virtual {p2}, Lw3/m;->D()Lw3/z3;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lw3/z3;->b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method l(Lw3/z2;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/z2;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw3/c0;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object p3, p0, Lw3/t0;->e:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lw3/t0;->c:Ljava/util/Map;

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/c0;

    new-instance v2, Lw3/c0;

    iget-object v3, v0, Lw3/s1;->p:[Lw3/x0;

    iget-object v4, v0, Lw3/c0;->s:Ljava/lang/reflect/Field;

    invoke-direct {v2, p1, v3, v4}, Lw3/c0;-><init>(Lw3/z2;[Lw3/x0;Ljava/lang/reflect/Field;)V

    iput-object p2, v2, Lw3/c0;->t:Ljava/lang/Object;

    iget-object v0, v0, Lw3/c0;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method m(Z)[Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw3/t0;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method n(Ljava/lang/String;Z)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/t0;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lw3/t0;->f(Ljava/lang/String;Z)Lw3/x0;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method r(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 3

    if-eqz p5, :cond_0

    iget-object v0, p0, Lw3/t0;->d:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/t0;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez p5, :cond_1

    if-nez v1, :cond_1

    iget-object p5, p0, Lw3/t0;->d:Ljava/util/Map;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_a

    instance-of p5, v1, Lw3/c0;

    if-eqz p5, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lw3/c0;

    iget-object v1, p5, Lw3/c0;->s:Ljava/lang/reflect/Field;

    :cond_2
    instance-of p5, v1, Lw3/d;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p5, :cond_6

    check-cast v1, Lw3/d;

    iget-object p5, v1, Lw3/d;->b:Lw3/x0;

    if-eqz p5, :cond_5

    iget-object p2, v1, Lw3/d;->c:Lw3/s1;

    if-eqz p2, :cond_4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p4, p3, v2

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p4

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p5

    invoke-virtual {p2, p4, p5, p1, p3}, Lw3/s1;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p5, Lw3/x0;->b:[Ljava/lang/Class;

    aget-object p1, p1, v2

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p4, p1}, Lw3/m;->P(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v2

    :try_start_0
    iget-object p1, v1, Lw3/d;->b:Lw3/x0;

    invoke-virtual {p1, p3, p2}, Lw3/x0;->h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-virtual {p0, p2}, Lw3/t0;->t(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_6
    instance-of p1, v1, Ljava/lang/reflect/Field;

    if-nez p1, :cond_8

    if-nez v1, :cond_7

    const-string p1, "msg.java.internal.private"

    goto :goto_2

    :cond_7
    const-string p1, "msg.java.method.assign"

    :goto_2
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_8
    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p4, p1}, Lw3/m;->P(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :try_start_1
    invoke-virtual {v1, p3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-void

    :catch_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    aput-object v1, p1, v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "msg.java.internal.field.type"

    invoke-static {p2, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_9

    return-void

    :cond_9
    invoke-static {p1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-virtual {p0, p2}, Lw3/t0;->t(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method t(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lw3/t0;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "msg.java.member.not.found"

    invoke-static {p1, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    return-object p1
.end method
