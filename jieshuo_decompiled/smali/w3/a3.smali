.class public abstract Lw3/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/z2;
.implements Lw3/k3;
.implements Ljava/io/Serializable;
.implements Lz3/a;
.implements Lw3/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/a3$b;,
        Lw3/a3$a;,
        Lw3/a3$c;,
        Lw3/a3$d;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lw3/z2;

.field private b:Lw3/z2;

.field private transient c:Lw3/e3;

.field private volatile d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Lw3/a3;

    const-string v1, "u0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lw3/a3;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lw3/a3$b;

    invoke-direct {v0}, Lw3/a3$b;-><init>()V

    sput-object v0, Lw3/a3;->h:Ljava/util/Comparator;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/a3;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/a3;->f:Z

    invoke-static {v0}, Lw3/a3;->R(I)Lw3/e3;

    move-result-object v0

    iput-object v0, p0, Lw3/a3;->c:Lw3/e3;

    return-void
.end method

.method public constructor <init>(Lw3/z2;Lw3/z2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/a3;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/a3;->f:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lw3/a3;->b:Lw3/z2;

    iput-object p2, p0, Lw3/a3;->a:Lw3/z2;

    invoke-static {v0}, Lw3/a3;->R(I)Lw3/e3;

    move-result-object p1

    iput-object p1, p0, Lw3/a3;->c:Lw3/e3;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static B0(Lw3/z2;I)Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    :cond_0
    invoke-interface {v0, p1, p0}, Lw3/z2;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lw3/z2;->l()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1
.end method

.method public static C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    :cond_0
    invoke-interface {v0, p1, p0}, Lw3/z2;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lw3/z2;->l()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1
.end method

.method public static D0(Lw3/z2;Lw3/i3;)Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Lw3/a3;->d0(Ljava/lang/Object;)Lw3/k3;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lw3/k3;->B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lw3/z2;->l()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1
.end method

.method private static E0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p2, Lx3/c;

    if-eqz p1, :cond_3

    check-cast p2, Lx3/c;

    invoke-interface {p2}, Lx3/c;->value()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_6

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    if-le p2, v0, :cond_6

    const-string p2, "get"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of p1, p2, Lx3/b;

    if-eqz p1, :cond_4

    check-cast p2, Lx3/b;

    invoke-interface {p2}, Lx3/b;->value()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of p1, p2, Lx3/e;

    if-eqz p1, :cond_5

    check-cast p2, Lx3/e;

    invoke-interface {p2}, Lx3/e;->value()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :cond_6
    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    move-object p0, p1

    :cond_8
    :goto_1
    return-object p0
.end method

.method public static G0(Lw3/z2;)Lw3/z2;
    .locals 1

    :goto_0
    invoke-interface {p0}, Lw3/z2;->i()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static H0(Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Lw3/a3;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lw3/a3;

    invoke-virtual {v0, p1}, Lw3/a3;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static J0(Lw3/z2;I)Z
    .locals 0

    invoke-static {p0, p1}, Lw3/a3;->p0(Lw3/z2;I)Lw3/z2;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static K(Lw3/z2;Ljava/lang/Class;ZZ)Lw3/c;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lw3/z2;",
            ">(",
            "Lw3/z2;",
            "Ljava/lang/Class<",
            "TT;>;ZZ)",
            "Lw3/c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static/range {p1 .. p1}, Lw3/e0;->c2(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v5, v6, :cond_4

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "init"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    if-ne v12, v7, :cond_2

    aget-object v12, v11, v4

    sget-object v13, Lw3/u2;->n:Ljava/lang/Class;

    if-ne v12, v13, :cond_2

    aget-object v12, v11, v10

    sget-object v13, Lw3/u2;->r:Ljava/lang/Class;

    if-ne v12, v13, :cond_2

    aget-object v12, v11, v8

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_2

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v10

    if-eqz v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    aput-object v0, v2, v8

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_2
    array-length v7, v11

    if-ne v7, v10, :cond_3

    aget-object v7, v11, v4

    sget-object v8, Lw3/u2;->r:Ljava/lang/Class;

    if-ne v7, v8, :cond_3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v6, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    :goto_3
    array-length v11, v5

    if-ge v6, v11, :cond_6

    aget-object v11, v5, v6

    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-nez v11, :cond_5

    aget-object v6, v5, v6

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    move-object v6, v9

    :goto_4
    if-eqz v6, :cond_31

    sget-object v11, Lw3/u2;->y:[Ljava/lang/Object;

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw3/z2;

    invoke-interface {v6}, Lw3/z2;->m()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v12

    invoke-static {v12, v11}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lw3/c;

    if-eqz v13, :cond_7

    check-cast v12, Lw3/c;

    invoke-virtual {v12}, Lw3/c;->P1()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    return-object v12

    :cond_7
    move-object/from16 v14, p1

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lw3/u2;->r:Ljava/lang/Class;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {v12}, Lw3/a3;->f0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {v0, v12, v1, v2}, Lw3/a3;->S(Lw3/z2;Ljava/lang/Class;ZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v0, v2}, Lw3/a3;->s0(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object v2

    goto :goto_5

    :cond_9
    move-object v2, v9

    :goto_5
    if-nez v2, :cond_a

    invoke-static/range {p0 .. p0}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v2

    :cond_a
    invoke-interface {v6, v2}, Lw3/z2;->A(Lw3/z2;)V

    const-class v2, Lx3/a;

    invoke-static {v3, v2}, Lw3/a3;->g0([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v12

    if-nez v12, :cond_b

    invoke-static {v5, v2}, Lw3/a3;->g0([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v12

    :cond_b
    const-string v2, "jsConstructor"

    if-nez v12, :cond_c

    invoke-static {v3, v2}, Lw3/e0;->b2([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v12

    :cond_c
    if-nez v12, :cond_11

    array-length v13, v5

    if-ne v13, v10, :cond_d

    aget-object v12, v5, v4

    goto :goto_6

    :cond_d
    array-length v13, v5

    if-ne v13, v8, :cond_f

    aget-object v13, v5, v4

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_e

    aget-object v12, v5, v10

    goto :goto_6

    :cond_e
    aget-object v13, v5, v10

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_f

    aget-object v12, v5, v4

    :cond_f
    :goto_6
    if-eqz v12, :cond_10

    goto :goto_7

    :cond_10
    new-array v0, v10, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "msg.ctor.multiple.parms"

    invoke-static {v1, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object v0

    throw v0

    :cond_11
    :goto_7
    new-instance v5, Lw3/e0;

    invoke-direct {v5, v11, v12, v0}, Lw3/e0;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lw3/z2;)V

    invoke-virtual {v5}, Lw3/e0;->g2()Z

    move-result v11

    if-nez v11, :cond_30

    invoke-virtual {v5, v0, v6}, Lw3/e0;->e2(Lw3/z2;Lw3/z2;)V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    array-length v14, v3

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v14, :cond_2d

    aget-object v8, v3, v15

    if-ne v8, v12, :cond_12

    move-object/from16 v22, v2

    move-object/from16 p1, v11

    move-object/from16 p3, v13

    goto :goto_9

    :cond_12
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v4, "finishInit"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move-object/from16 p1, v11

    array-length v11, v4

    if-ne v11, v7, :cond_14

    const/4 v11, 0x0

    aget-object v7, v4, v11

    sget-object v11, Lw3/u2;->r:Ljava/lang/Class;

    if-ne v7, v11, :cond_14

    move-object/from16 p3, v13

    const/4 v7, 0x1

    aget-object v13, v4, v7

    const-class v7, Lw3/e0;

    if-ne v13, v7, :cond_15

    const/4 v7, 0x2

    aget-object v4, v4, v7

    if-ne v4, v11, :cond_15

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v22, v2

    move-object v9, v8

    :goto_9
    move/from16 v23, v14

    goto/16 :goto_15

    :cond_13
    move-object/from16 p1, v11

    :cond_14
    move-object/from16 p3, v13

    :cond_15
    const/16 v4, 0x24

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_17

    :cond_16
    :goto_a
    move-object/from16 v22, v2

    goto :goto_9

    :cond_17
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_a

    :cond_18
    const-class v4, Lx3/b;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_19

    :goto_b
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    goto :goto_c

    :cond_19
    const-class v4, Lx3/e;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_b

    :cond_1a
    const-class v4, Lx3/c;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_b

    :cond_1b
    const-class v4, Lx3/d;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_a

    :cond_1c
    const/4 v4, 0x0

    :goto_c
    const-string v7, "jsGet_"

    const-string v11, "jsStaticFunction_"

    if-nez v4, :cond_1f

    const-string v13, "jsFunction_"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move-object/from16 v22, v2

    goto :goto_d

    :cond_1d
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object/from16 v22, v2

    move-object v13, v11

    goto :goto_d

    :cond_1e
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v22, v2

    move-object v13, v7

    goto :goto_d

    :cond_1f
    move-object/from16 v22, v2

    const/4 v13, 0x0

    :goto_d
    instance-of v2, v4, Lx3/e;

    if-nez v2, :cond_21

    if-ne v13, v11, :cond_20

    goto :goto_e

    :cond_20
    const/4 v2, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v2, 0x1

    :goto_f
    if-eqz v2, :cond_22

    move-object/from16 v11, p1

    goto :goto_10

    :cond_22
    move-object/from16 v11, p3

    :goto_10
    move/from16 v23, v14

    invoke-static {v10, v13, v4}, Lw3/a3;->E0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2c

    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    instance-of v4, v4, Lx3/c;

    if-nez v4, :cond_28

    if-ne v13, v7, :cond_23

    goto :goto_13

    :cond_23
    if-eqz v2, :cond_25

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_11

    :cond_24
    const-string v0, "jsStaticFunction must be used with static method."

    invoke-static {v0}, Lw3/m;->b0(Ljava/lang/String;)Lw3/b0;

    move-result-object v0

    throw v0

    :cond_25
    :goto_11
    new-instance v4, Lw3/e0;

    invoke-direct {v4, v14, v8, v6}, Lw3/e0;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lw3/z2;)V

    invoke-virtual {v4}, Lw3/e0;->f2()Z

    move-result v7

    if-nez v7, :cond_27

    if-eqz v2, :cond_26

    move-object v2, v5

    goto :goto_12

    :cond_26
    move-object v2, v6

    :goto_12
    const/4 v7, 0x2

    invoke-static {v2, v14, v4, v7}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    if-eqz v1, :cond_2a

    invoke-virtual {v4}, Lw3/a3;->c1()V

    goto :goto_15

    :cond_27
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {v12}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "msg.varargs.fun"

    invoke-static {v1, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object v0

    throw v0

    :cond_28
    :goto_13
    instance-of v2, v6, Lw3/a3;

    if-eqz v2, :cond_2b

    const-string v2, "jsSet_"

    invoke-static {v3, v14, v2}, Lw3/a3;->j0([Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v20

    if-eqz v20, :cond_29

    const/4 v2, 0x0

    goto :goto_14

    :cond_29
    const/4 v2, 0x1

    :goto_14
    or-int/lit8 v21, v2, 0x6

    move-object/from16 v16, v6

    check-cast v16, Lw3/a3;

    const/16 v18, 0x0

    move-object/from16 v17, v14

    move-object/from16 v19, v8

    invoke-virtual/range {v16 .. v21}, Lw3/a3;->Y(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    :cond_2a
    :goto_15
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v2, v22

    move/from16 v14, v23

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    goto/16 :goto_8

    :cond_2b
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v4, 0x1

    aput-object v14, v0, v4

    const-string v1, "msg.extend.scriptable"

    invoke-static {v1, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object v0

    throw v0

    :cond_2c
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v10, v0, v3

    aput-object v14, v0, v4

    const-string v1, "duplicate.defineClass.name"

    invoke-static {v1, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object v0

    throw v0

    :cond_2d
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v9, :cond_2e

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v5, v7, v4

    aput-object v6, v7, v2

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    if-eqz v1, :cond_2f

    invoke-virtual {v5}, Lw3/a3;->c1()V

    instance-of v0, v6, Lw3/a3;

    if-eqz v0, :cond_2f

    check-cast v6, Lw3/a3;

    invoke-virtual {v6}, Lw3/a3;->c1()V

    :cond_2f
    return-object v5

    :cond_30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v12}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "msg.varargs.ctor"

    invoke-static {v1, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object v0

    throw v0

    :cond_31
    move-object/from16 v14, p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "msg.zero.arg.ctor"

    invoke-static {v1, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object v0

    throw v0
.end method

.method public static K0(Lw3/z2;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lw3/a3;->q0(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static L(Lw3/z2;Ljava/lang/Object;I)Lw3/a3;
    .locals 3

    new-instance v0, Lw3/x1;

    invoke-direct {v0}, Lw3/x1;-><init>()V

    sget-object v1, Lw3/u3$a;->a:Lw3/u3$a;

    invoke-static {v0, p0, v1}, Lw3/u2;->s1(Lw3/a3;Lw3/z2;Lw3/u3$a;)V

    const-string p0, "value"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 p0, p2, 0x1

    const/4 p1, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v2, "writable"

    invoke-virtual {v0, v2, p0, v1}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 p0, p2, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v2, "enumerable"

    invoke-virtual {v0, v2, p0, v1}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 p0, p2, 0x4

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "configurable"

    invoke-virtual {v0, p1, p0, v1}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static L0(Lw3/z2;Lw3/i3;)Z
    .locals 0

    invoke-static {p0, p1}, Lw3/a3;->r0(Lw3/z2;Lw3/i3;)Lw3/z2;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static M(Lw3/m;Lw3/z2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1, p2}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lw3/d0;

    if-eqz v1, :cond_1

    check-cast v0, Lw3/d0;

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p2

    if-eqz p0, :cond_0

    invoke-interface {v0, p0, p2, p1, p3}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0, v0, p2, p1, p3}, Lw3/m;->a(Lw3/o;Lw3/f;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, p2}, Lw3/u2;->g1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private N(Ljava/lang/Object;I)V
    .locals 1

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "msg.modify.sealed"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1
.end method

.method protected static P0(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lw3/a3;->S0(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static Q(I)V
    .locals 1

    and-int/lit8 v0, p0, -0x10

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static R(I)Lw3/e3;
    .locals 2

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw3/r3;

    invoke-direct {v0, p0}, Lw3/r3;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lw3/e3;

    invoke-direct {v0, p0}, Lw3/e3;-><init>(I)V

    return-object v0
.end method

.method public static S(Lw3/z2;Ljava/lang/Class;ZZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lw3/z2;",
            ">(",
            "Lw3/z2;",
            "Ljava/lang/Class<",
            "TT;>;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lw3/a3;->K(Lw3/z2;Ljava/lang/Class;ZZ)Lw3/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lw3/c;->M1()Lw3/z2;

    move-result-object p2

    invoke-interface {p2}, Lw3/z2;->m()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p0, p2, p1, p3}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p2
.end method

.method protected static S0(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static T(Lw3/z2;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Lw3/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lw3/l;

    invoke-interface {v0, p1, p0}, Lw3/l;->n(Ljava/lang/String;Lw3/z2;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-static {p0, p1, v0, v1}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method private U0(Ljava/lang/String;ILw3/z2;Ljava/lang/Object;I)Z
    .locals 3

    iget-boolean v0, p0, Lw3/a3;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    invoke-virtual {v0}, Lw3/m;->L()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "msg.not.extensible"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    if-eq p0, p3, :cond_2

    iget-object p5, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {p5, p1, p2}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_2
    invoke-virtual {p0}, Lw3/a3;->O0()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object p5, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {p5, p1, p2}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1, p4, p0, p3}, Lw3/a3$c;->e(Ljava/lang/Object;Lw3/z2;Lw3/z2;)Z

    move-result p1

    return p1

    :cond_4
    invoke-direct {p0, p1, p2}, Lw3/a3;->N(Ljava/lang/Object;I)V

    iget-object p3, p0, Lw3/a3;->c:Lw3/e3;

    sget-object v0, Lw3/a3$d;->c:Lw3/a3$d;

    invoke-virtual {p3, p1, p2, v0}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p2

    invoke-virtual {p2}, Lw3/a3$c;->a()I

    move-result p3

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_6

    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_5

    iput-object p4, p2, Lw3/a3$c;->d:Ljava/lang/Object;

    const/16 p1, 0x8

    if-eq p5, p1, :cond_5

    and-int/lit8 p1, p3, -0x9

    invoke-virtual {p2, p1}, Lw3/a3$c;->d(I)V

    :cond_5
    return v2

    :cond_6
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "msg.var.redecl"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1
.end method

.method public static V0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0, p1}, Lw3/a3;->q0(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lw3/l;

    if-eqz v1, :cond_1

    check-cast v0, Lw3/l;

    invoke-interface {v0, p1, p0, p2}, Lw3/l;->q(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private W0(Ljava/lang/Object;ILw3/z2;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "msg.not.extensible"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, p3, :cond_3

    iget-object v3, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v3, p1, p2}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    iget-boolean p2, p0, Lw3/a3;->e:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    instance-of p2, p1, Lw3/a3$a;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lw3/a3$c;->a()I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_2

    :cond_0
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p2

    invoke-virtual {p2}, Lw3/m;->L()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    if-nez p1, :cond_9

    return v2

    :cond_3
    iget-boolean v3, p0, Lw3/a3;->e:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v3, p1, p2}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of p2, p1, Lw3/a3$a;

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lw3/a3$c;->a()I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_5

    :cond_4
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p2

    invoke-virtual {p2}, Lw3/m;->L()Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    if-nez p1, :cond_9

    return v1

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_7
    iget-boolean v0, p0, Lw3/a3;->f:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lw3/a3;->N(Ljava/lang/Object;I)V

    :cond_8
    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    sget-object v1, Lw3/a3$d;->b:Lw3/a3$d;

    invoke-virtual {v0, p1, p2, v1}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    :cond_9
    invoke-virtual {p1, p4, p0, p3}, Lw3/a3$c;->e(Ljava/lang/Object;Lw3/z2;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method public static X0(Lw3/z2;ILjava/lang/Object;)V
    .locals 1

    invoke-static {p0, p1}, Lw3/a3;->p0(Lw3/z2;I)Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-interface {v0, p1, p0, p2}, Lw3/z2;->d(ILw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public static Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0, p1}, Lw3/a3;->q0(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-interface {v0, p1, p0, p2}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public static Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    instance-of v0, p0, Lw3/a3;

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p0, p2}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p0, Lw3/a3;

    invoke-virtual {p0, p1, p2, p3}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static Z0(Lw3/z2;Lw3/i3;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0, p1}, Lw3/a3;->r0(Lw3/z2;Lw3/i3;)Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Lw3/a3;->d0(Ljava/lang/Object;)Lw3/k3;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lw3/k3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public static a1(Lw3/z2;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p0, p1}, Lw3/a3;->q0(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lw3/l;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Lw3/l;

    invoke-interface {p0, p1}, Lw3/l;->x(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "msg.const.redecl"

    invoke-static {p1, p0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    return-void

    :cond_3
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "msg.var.redecl"

    invoke-static {p1, p0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method protected static b0(Ljava/lang/Object;)Lw3/z2;
    .locals 2

    instance-of v0, p0, Lw3/z2;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/z2;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lw3/u2;->r2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "msg.arg.not.object"

    invoke-static {p0, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method protected static c0(Ljava/lang/Object;)Lw3/a3;
    .locals 2

    instance-of v0, p0, Lw3/a3;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/a3;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lw3/u2;->r2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "msg.arg.not.object"

    invoke-static {p0, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method protected static d0(Ljava/lang/Object;)Lw3/k3;
    .locals 2

    instance-of v0, p0, Lw3/k3;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/k3;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lw3/u2;->r2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "msg.object.not.symbolscriptable"

    invoke-static {p0, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method private static f0(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lw3/z2;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lw3/u2;->r:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static g0([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AccessibleObject;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/reflect/Member;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private g1(Ljava/lang/String;ILw3/f;ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p5, :cond_2

    invoke-direct {p0, p1, p2}, Lw3/a3;->N(Ljava/lang/Object;I)V

    :cond_2
    invoke-virtual {p0}, Lw3/a3;->O0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    sget-object v1, Lw3/a3$d;->d:Lw3/a3$d;

    invoke-virtual {v0, p1, p2, v1}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p2

    :cond_3
    check-cast p2, Lw3/a3$a;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v0, p1, p2}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p2

    instance-of v0, p2, Lw3/a3$a;

    if-nez v0, :cond_3

    return-void

    :goto_1
    if-nez p5, :cond_6

    invoke-virtual {p2}, Lw3/a3$c;->a()I

    move-result p5

    const/4 v0, 0x1

    and-int/2addr p5, v0

    if-nez p5, :cond_5

    goto :goto_2

    :cond_5
    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "msg.modify.readonly"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_6
    :goto_2
    if-eqz p4, :cond_7

    iput-object p3, p2, Lw3/a3$a;->h:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iput-object p3, p2, Lw3/a3$a;->g:Ljava/lang/Object;

    :goto_3
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    iput-object p1, p2, Lw3/a3$c;->d:Ljava/lang/Object;

    return-void
.end method

.method private h0(Ljava/lang/String;ILw3/a3$d;)Lw3/a3$c;
    .locals 1

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v0, p1, p2, p3}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "msg.prop.not.found"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_1
    return-object p3
.end method

.method private i0(Lw3/i3;Lw3/a3$d;)Lw3/a3$c;
    .locals 2

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "msg.prop.not.found"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1
.end method

.method private static j0([Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    const-class v5, Lx3/d;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lx3/d;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lx3/d;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-interface {v5}, Lx3/d;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    array-length p2, p0

    :goto_1
    if-ge v1, p2, :cond_4

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k0(Lw3/z2;)Lw3/z2;
    .locals 1

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p0

    sget-object v0, Lw3/u3$a;->b:Lw3/u3$a;

    invoke-static {p0, v0}, Lw3/u3;->L1(Lw3/z2;Lw3/u3$a;)Lw3/z2;

    move-result-object p0

    return-object p0
.end method

.method private static p0(Lw3/z2;I)Lw3/z2;
    .locals 1

    :cond_0
    invoke-interface {p0, p1, p0}, Lw3/z2;->C(ILw3/z2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_0
    return-object p0
.end method

.method private static q0(Lw3/z2;Ljava/lang/String;)Lw3/z2;
    .locals 1

    :cond_0
    invoke-interface {p0, p1, p0}, Lw3/z2;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_0
    return-object p0
.end method

.method private static r0(Lw3/z2;Lw3/i3;)Lw3/z2;
    .locals 1

    :cond_0
    invoke-static {p0}, Lw3/a3;->d0(Ljava/lang/Object;)Lw3/k3;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lw3/k3;->k(Lw3/i3;Lw3/z2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_0
    return-object p0
.end method

.method public static s0(Lw3/z2;Ljava/lang/String;)Lw3/z2;
    .locals 1

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p0

    invoke-static {p0, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lw3/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p0, Lw3/c;

    invoke-virtual {p0}, Lw3/c;->P1()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lw3/z2;

    if-eqz p1, :cond_1

    check-cast p0, Lw3/z2;

    const-string p1, "prototype"

    invoke-interface {p0, p1, p0}, Lw3/z2;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Lw3/z2;

    if-eqz p1, :cond_1

    check-cast p0, Lw3/z2;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static t0(Lw3/z2;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/z2;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v3, :cond_9

    sget-object v3, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_0

    :goto_1
    if-eqz v4, :cond_2

    const-string v3, "toString"

    goto :goto_2

    :cond_2
    const-string v3, "valueOf"

    :goto_2
    invoke-static {p0, v3}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lw3/d0;

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    check-cast v3, Lw3/d0;

    if-nez v0, :cond_4

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    :cond_4
    invoke-interface {v3}, Lw3/z2;->i()Lw3/z2;

    move-result-object v5

    sget-object v6, Lw3/u2;->y:[Ljava/lang/Object;

    invoke-interface {v3, v0, v5, p0, v6}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    instance-of v5, v3, Lw3/z2;

    if-nez v5, :cond_5

    return-object v3

    :cond_5
    sget-object v5, Lw3/u2;->r:Ljava/lang/Class;

    if-eq p1, v5, :cond_7

    sget-object v5, Lw3/u2;->p:Ljava/lang/Class;

    if-ne p1, v5, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_8

    instance-of v4, v3, Lw3/b4;

    if-eqz v4, :cond_8

    check-cast v3, Lw3/b4;

    invoke-interface {v3}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    :cond_7
    :goto_3
    return-object v3

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    if-nez p1, :cond_a

    const-string p0, "undefined"

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_5
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "msg.default.value"

    invoke-static {p0, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method public static v0(Lw3/z2;)Lw3/z2;
    .locals 1

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p0

    sget-object v0, Lw3/u3$a;->c:Lw3/u3$a;

    invoke-static {p0, v0}, Lw3/u3;->L1(Lw3/z2;Lw3/u3$a;)Lw3/z2;

    move-result-object p0

    return-object p0
.end method

.method public static w0(Lw3/z2;)Lw3/z2;
    .locals 1

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p0

    sget-object v0, Lw3/u3$a;->j:Lw3/u3$a;

    invoke-static {p0, v0}, Lw3/u3;->L1(Lw3/z2;Lw3/u3$a;)Lw3/z2;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Lw3/z2;)Lw3/z2;
    .locals 1

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p0

    sget-object v0, Lw3/u3$a;->a:Lw3/u3$a;

    invoke-static {p0, v0}, Lw3/u3;->L1(Lw3/z2;Lw3/u3$a;)Lw3/z2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lw3/z2;)V
    .locals 0

    iput-object p1, p0, Lw3/a3;->a:Lw3/z2;

    return-void
.end method

.method protected A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;
    .locals 1

    sget-object v0, Lw3/a3$d;->a:Lw3/a3$d;

    invoke-virtual {p0, p1, p2, v0}, Lw3/a3;->F0(Lw3/m;Ljava/lang/Object;Lw3/a3$d;)Lw3/a3$c;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {p2, p1, v0}, Lw3/a3$c;->b(Lw3/m;Lw3/z2;)Lw3/a3;

    move-result-object p1

    return-object p1
.end method

.method public B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lw3/a3$c;->c(Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 1

    iget-object p2, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lw3/a3$c;->c(Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lw3/a3;->W0(Ljava/lang/Object;ILw3/z2;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p2, p0, :cond_1

    invoke-static {p2}, Lw3/a3;->d0(Ljava/lang/Object;)Lw3/k3;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lw3/k3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected F0(Lw3/m;Ljava/lang/Object;Lw3/a3$d;)Lw3/a3$c;
    .locals 2

    instance-of v0, p2, Lw3/i3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {p1, p2, v1, p3}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lw3/u2;->j2(Lw3/m;Ljava/lang/Object;)Lw3/u2$f;

    move-result-object p1

    iget-object p2, p1, Lw3/u2$f;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object p2, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v0, 0x0

    iget p1, p1, Lw3/u2$f;->b:I

    invoke-virtual {p2, v0, p1, p3}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {p1, p2, v1, p3}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    return-object p1
.end method

.method G(Ljava/lang/String;ILw3/w0;I)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lw3/a3;->N(Ljava/lang/Object;I)V

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    sget-object v1, Lw3/a3$d;->d:Lw3/a3$d;

    invoke-virtual {v0, p1, p2, v1}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    check-cast p1, Lw3/a3$a;

    invoke-virtual {p1, p4}, Lw3/a3$c;->d(I)V

    const/4 p2, 0x0

    iput-object p2, p1, Lw3/a3$a;->g:Ljava/lang/Object;

    iput-object p2, p1, Lw3/a3$a;->h:Ljava/lang/Object;

    iput-object p3, p1, Lw3/a3$c;->d:Ljava/lang/Object;

    return-void
.end method

.method protected H(ILw3/a3;)I
    .locals 2

    const-string v0, "enumerable"

    invoke-static {p2, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_0
    or-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    const-string v0, "writable"

    invoke-static {p2, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 p1, p1, -0x2

    goto :goto_1

    :cond_2
    or-int/lit8 p1, p1, 0x1

    :cond_3
    :goto_1
    const-string v0, "configurable"

    invoke-static {p2, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_5

    invoke-static {p2}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    and-int/lit8 p1, p1, -0x5

    goto :goto_2

    :cond_4
    or-int/lit8 p1, p1, 0x4

    :cond_5
    :goto_2
    return p1
.end method

.method public final declared-synchronized I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lw3/a3;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lw3/a3;->d:Ljava/util/Map;

    :cond_0
    invoke-static {v0, p1, p2}, Lw3/v0;->e(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public I0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw3/a3;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "undefined"

    goto :goto_0

    :cond_0
    const-string v0, "object"

    :goto_0
    return-object v0
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected M0(Lw3/a3;)Z
    .locals 1

    const-string v0, "get"

    invoke-static {p1, v0}, Lw3/a3;->K0(Lw3/z2;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "set"

    invoke-static {p1, v0}, Lw3/a3;->K0(Lw3/z2;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected N0(Lw3/a3;)Z
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lw3/a3;->K0(Lw3/z2;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "writable"

    invoke-static {p1, v0}, Lw3/a3;->K0(Lw3/z2;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected O(Ljava/lang/Object;Lw3/a3;Lw3/a3;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lw3/a3;->O0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "msg.not.extensible"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_1
    const-string v1, "configurable"

    invoke-virtual {p2, v1, p2}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lw3/a3;->P0(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {p3, v1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lw3/a3;->S0(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_b

    const-string v1, "enumerable"

    invoke-virtual {p2, v1, p2}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lw3/a3;->S0(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {p3, v1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lw3/a3;->S0(Ljava/lang/Object;)Z

    move-result v1

    if-ne v3, v1, :cond_a

    invoke-virtual {p0, p3}, Lw3/a3;->N0(Lw3/a3;)Z

    move-result v1

    invoke-virtual {p0, p3}, Lw3/a3;->M0(Lw3/a3;)Z

    move-result v3

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {p0, p2}, Lw3/a3;->N0(Lw3/a3;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "writable"

    invoke-virtual {p2, v1, p2}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lw3/a3;->P0(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p3, v1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lw3/a3;->S0(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "value"

    invoke-static {p3, v1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v1, p2}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lw3/a3;->b1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_0

    :cond_3
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.change.value.with.writable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_4
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.change.writable.false.to.true.with.configurable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_5
    if-eqz v3, :cond_8

    invoke-virtual {p0, p2}, Lw3/a3;->M0(Lw3/a3;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "set"

    invoke-static {p3, v1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v1, p2}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lw3/a3;->b1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "get"

    invoke-static {p3, v1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v1, p2}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lw3/a3;->b1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.change.getter.with.configurable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_7
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.change.setter.with.configurable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_8
    invoke-virtual {p0, p2}, Lw3/a3;->N0(Lw3/a3;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.change.property.data.to.accessor.with.configurable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_9
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.change.property.accessor.to.data.with.configurable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_a
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.change.enumerable.with.configurable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_b
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.change.configurable.false.to.true"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_c
    :goto_0
    return-void
.end method

.method public O0()Z
    .locals 1

    iget-boolean v0, p0, Lw3/a3;->e:Z

    return v0
.end method

.method protected P(Lw3/a3;)V
    .locals 3

    const-string v0, "get"

    invoke-static {p1, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    instance-of v2, v0, Lw3/f;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lw3/u2;->f1(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const-string v0, "set"

    invoke-static {p1, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_3

    sget-object v1, Lw3/w3;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    instance-of v1, v0, Lw3/f;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lw3/u2;->f1(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lw3/a3;->N0(Lw3/a3;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lw3/a3;->M0(Lw3/a3;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "msg.both.data.and.accessor.desc"

    invoke-static {v0, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method protected Q0(Ljava/lang/String;IZ)Z
    .locals 1

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v0, p1, p2}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    instance-of p2, p1, Lw3/a3$a;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Lw3/a3$a;

    iget-object v0, v0, Lw3/a3$a;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return p2

    :cond_0
    if-nez p3, :cond_1

    check-cast p1, Lw3/a3$a;

    iget-object p1, p1, Lw3/a3$a;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final R0()Z
    .locals 1

    iget-boolean v0, p0, Lw3/a3;->f:Z

    return v0
.end method

.method public T0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/a3;->e:Z

    return-void
.end method

.method public U(Lw3/m;Lw3/a3;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lw3/a3;->y0(ZZ)[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [Lw3/a3;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    invoke-static {p2, v5, p1}, Lw3/u2;->d0(Lw3/z2;Ljava/lang/Object;Lw3/m;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v5

    invoke-virtual {p0, v5}, Lw3/a3;->P(Lw3/a3;)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length p2, v0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v3, v0, v1

    aget-object v4, v2, v1

    invoke-virtual {p0, p1, v3, v4}, Lw3/a3;->V(Lw3/m;Ljava/lang/Object;Lw3/a3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public V(Lw3/m;Ljava/lang/Object;Lw3/a3;)V
    .locals 1

    invoke-virtual {p0, p3}, Lw3/a3;->P(Lw3/a3;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lw3/a3;->W(Lw3/m;Ljava/lang/Object;Lw3/a3;Z)V

    return-void
.end method

.method protected W(Lw3/m;Ljava/lang/Object;Lw3/a3;Z)V
    .locals 3

    sget-object v0, Lw3/a3$d;->a:Lw3/a3$d;

    invoke-virtual {p0, p1, p2, v0}, Lw3/a3;->F0(Lw3/m;Ljava/lang/Object;Lw3/a3$d;)Lw3/a3$c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p4, :cond_2

    if-nez v0, :cond_1

    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p0}, Lw3/a3$c;->b(Lw3/m;Lw3/z2;)Lw3/a3;

    move-result-object p4

    :goto_1
    invoke-virtual {p0, p2, p4, p3}, Lw3/a3;->O(Ljava/lang/Object;Lw3/a3;Lw3/a3;)V

    :cond_2
    invoke-virtual {p0, p3}, Lw3/a3;->M0(Lw3/a3;)Z

    move-result p4

    if-nez v0, :cond_4

    if-eqz p4, :cond_3

    sget-object v0, Lw3/a3$d;->d:Lw3/a3$d;

    goto :goto_2

    :cond_3
    sget-object v0, Lw3/a3$d;->b:Lw3/a3$d;

    :goto_2
    invoke-virtual {p0, p1, p2, v0}, Lw3/a3;->F0(Lw3/m;Ljava/lang/Object;Lw3/a3$d;)Lw3/a3$c;

    move-result-object v0

    const/4 v2, 0x7

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lw3/a3$c;->a()I

    move-result v2

    :goto_3
    invoke-virtual {p0, v2, p3}, Lw3/a3;->H(ILw3/a3;)I

    move-result v2

    if-eqz p4, :cond_8

    instance-of p4, v0, Lw3/a3$a;

    if-nez p4, :cond_5

    sget-object p4, Lw3/a3$d;->d:Lw3/a3$d;

    invoke-virtual {p0, p1, p2, p4}, Lw3/a3;->F0(Lw3/m;Ljava/lang/Object;Lw3/a3$d;)Lw3/a3$c;

    move-result-object v0

    :cond_5
    check-cast v0, Lw3/a3$a;

    const-string p1, "get"

    invoke-static {p3, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p1, p2, :cond_6

    iput-object p1, v0, Lw3/a3$a;->g:Ljava/lang/Object;

    :cond_6
    const-string p1, "set"

    invoke-static {p3, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_7

    iput-object p1, v0, Lw3/a3$a;->h:Ljava/lang/Object;

    :cond_7
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    :goto_4
    iput-object p1, v0, Lw3/a3$c;->d:Ljava/lang/Object;

    goto :goto_6

    :cond_8
    instance-of p4, v0, Lw3/a3$a;

    if-eqz p4, :cond_9

    invoke-virtual {p0, p3}, Lw3/a3;->N0(Lw3/a3;)Z

    move-result p4

    if-eqz p4, :cond_9

    sget-object p4, Lw3/a3$d;->e:Lw3/a3$d;

    invoke-virtual {p0, p1, p2, p4}, Lw3/a3;->F0(Lw3/m;Ljava/lang/Object;Lw3/a3$d;)Lw3/a3$c;

    move-result-object v0

    :cond_9
    const-string p1, "value"

    invoke-static {p3, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p1, p2, :cond_a

    :goto_5
    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_5

    :cond_b
    :goto_6
    invoke-virtual {v0, v2}, Lw3/a3$c;->d(I)V

    return-void
.end method

.method public X(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw3/a3;->N(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p0, p2}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lw3/a3;->d1(Ljava/lang/String;I)V

    return-void
.end method

.method public Y(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    new-instance v3, Lw3/x0;

    invoke-direct {v3, p3}, Lw3/x0;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-object p2, v3, Lw3/x0;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v4, v3, Lw3/x0;->f:Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    if-nez v6, :cond_3

    if-eqz v4, :cond_2

    const-string v4, "msg.obj.getter.parms"

    goto :goto_3

    :cond_2
    move-object v4, v2

    goto :goto_3

    :cond_3
    array-length v6, v5

    const-string v7, "msg.bad.getter.parms"

    if-ne v6, v1, :cond_5

    aget-object v5, v5, v0

    sget-object v6, Lw3/u2;->r:Ljava/lang/Class;

    if-eq v5, v6, :cond_4

    sget-object v6, Lw3/u2;->q:Ljava/lang/Class;

    if-eq v5, v6, :cond_4

    goto :goto_2

    :cond_4
    if-nez v4, :cond_2

    :cond_5
    :goto_2
    move-object v4, v7

    :goto_3
    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {v4, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_7
    move-object v3, v2

    :goto_4
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p3, v4, :cond_f

    new-instance p3, Lw3/x0;

    invoke-direct {p3, p4}, Lw3/x0;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz p2, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    iput-object p2, p3, Lw3/x0;->f:Ljava/lang/Object;

    goto :goto_6

    :cond_9
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object p2, p3, Lw3/x0;->f:Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_6
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length v5, p2

    if-ne v5, v1, :cond_a

    if-eqz v4, :cond_d

    const-string v2, "msg.setter2.expected"

    goto :goto_8

    :cond_a
    array-length v5, p2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    aget-object p2, p2, v0

    sget-object v5, Lw3/u2;->r:Ljava/lang/Class;

    if-eq p2, v5, :cond_b

    sget-object v5, Lw3/u2;->q:Ljava/lang/Class;

    if-eq p2, v5, :cond_b

    const-string p2, "msg.setter2.parms"

    goto :goto_7

    :cond_b
    if-nez v4, :cond_d

    const-string p2, "msg.setter1.parms"

    :goto_7
    move-object v2, p2

    goto :goto_8

    :cond_c
    const-string v2, "msg.setter.parms"

    :cond_d
    :goto_8
    if-nez v2, :cond_e

    move-object v2, p3

    goto :goto_9

    :cond_e
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {v2, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_f
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "msg.setter.return"

    invoke-static {p2, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_10
    :goto_9
    iget-object p2, p0, Lw3/a3;->c:Lw3/e3;

    sget-object p3, Lw3/a3$d;->d:Lw3/a3$d;

    invoke-virtual {p2, p1, v0, p3}, Lw3/e3;->u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    check-cast p1, Lw3/a3$a;

    invoke-virtual {p1, p5}, Lw3/a3$c;->d(I)V

    iput-object v3, p1, Lw3/a3$a;->g:Ljava/lang/Object;

    iput-object v2, p1, Lw3/a3$a;->h:Ljava/lang/Object;

    return-void
.end method

.method public a0(Lw3/i3;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw3/a3;->N(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p0, p2}, Lw3/a3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lw3/a3;->e1(Lw3/i3;I)V

    return-void
.end method

.method public b(Lw3/z2;)Z
    .locals 0

    invoke-static {p1, p0}, Lw3/u2;->K0(Lw3/z2;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method protected b1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    if-ne p2, v0, :cond_1

    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v6, v2, v0

    if-nez v6, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-static {p2, p1}, Lw3/u2;->G1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c1()V
    .locals 6

    iget-boolean v0, p0, Lw3/a3;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v0}, Lw3/e3;->d()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v2}, Lw3/e3;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw3/a3$c;

    iget-object v4, v3, Lw3/a3$c;->d:Ljava/lang/Object;

    instance-of v5, v4, Lw3/w0;

    if-eqz v5, :cond_0

    check-cast v4, Lw3/w0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Lw3/w0;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Lw3/w0;->e()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lw3/a3$c;->d:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v4}, Lw3/w0;->e()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lw3/a3$c;->d:Ljava/lang/Object;

    throw v2

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lw3/a3;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v2, v0, v1}, Lw3/e3;->e(J)V

    goto :goto_1

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v3, v0, v1}, Lw3/e3;->e(J)V

    throw v2

    :cond_2
    :goto_1
    return-void
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lw3/a3;->W0(Ljava/lang/Object;ILw3/z2;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p2, p0, :cond_1

    invoke-interface {p2, p1, p2, p3}, Lw3/z2;->d(ILw3/z2;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public d1(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw3/a3;->N(Ljava/lang/Object;I)V

    sget-object v1, Lw3/a3$d;->b:Lw3/a3$d;

    invoke-direct {p0, p1, v0, v1}, Lw3/a3;->h0(Ljava/lang/String;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lw3/a3$c;->d(I)V

    return-void
.end method

.method public e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lw3/a3;->t0(Lw3/z2;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected e0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-ne p0, p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public e1(Lw3/i3;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw3/a3;->N(Ljava/lang/Object;I)V

    sget-object v0, Lw3/a3$d;->b:Lw3/a3$d;

    invoke-direct {p0, p1, v0}, Lw3/a3;->i0(Lw3/i3;Lw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lw3/a3$c;->d(I)V

    return-void
.end method

.method public f(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lw3/a3;->N(Ljava/lang/Object;I)V

    iget-object v1, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v1, v0, p1}, Lw3/e3;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public f1(Ljava/lang/String;ILw3/f;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lw3/a3;->g1(Ljava/lang/String;ILw3/f;ZZ)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lw3/i3;

    if-eqz v0, :cond_1

    check-cast p1, Lw3/i3;

    invoke-virtual {p0, p1, p0}, Lw3/a3;->B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p0}, Lw3/a3;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p1, v0, :cond_5

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lw3/b4;

    if-eqz v0, :cond_4

    check-cast p1, Lw3/b4;

    invoke-interface {p1}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lw3/a3;->y0(ZZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(Lw3/z2;)V
    .locals 0

    iput-object p1, p0, Lw3/a3;->b:Lw3/z2;

    return-void
.end method

.method public i()Lw3/z2;
    .locals 1

    iget-object v0, p0, Lw3/a3;->b:Lw3/z2;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v0}, Lw3/e3;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public k(Lw3/i3;Lw3/z2;)Z
    .locals 1

    iget-object p2, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public l()Lw3/z2;
    .locals 1

    iget-object v0, p0, Lw3/a3;->a:Lw3/z2;

    return-object v0
.end method

.method public final l0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/a3;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public m0(I)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lw3/a3$d;->a:Lw3/a3$d;

    invoke-direct {p0, v0, p1, v1}, Lw3/a3;->h0(Ljava/lang/String;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    invoke-virtual {p1}, Lw3/a3$c;->a()I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/String;Lw3/z2;)V
    .locals 6

    const/4 v2, 0x0

    sget-object v4, Lw3/w3;->a:Ljava/lang/Object;

    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lw3/a3;->U0(Ljava/lang/String;ILw3/z2;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p2, p0, :cond_2

    instance-of v0, p2, Lw3/l;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lw3/l;

    invoke-interface {v0, p1, p2}, Lw3/l;->n(Ljava/lang/String;Lw3/z2;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public n0(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lw3/a3$d;->a:Lw3/a3$d;

    invoke-direct {p0, p1, v0, v1}, Lw3/a3;->h0(Ljava/lang/String;ILw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    invoke-virtual {p1}, Lw3/a3$c;->a()I

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw3/a3;->N(Ljava/lang/Object;I)V

    iget-object v1, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v1, p1, v0}, Lw3/e3;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public o0(Lw3/i3;)I
    .locals 1

    sget-object v0, Lw3/a3$d;->a:Lw3/a3$d;

    invoke-direct {p0, p1, v0}, Lw3/a3;->i0(Lw3/i3;Lw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    invoke-virtual {p1}, Lw3/a3$c;->a()I

    move-result p1

    return p1
.end method

.method public q(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lw3/a3;->U0(Ljava/lang/String;ILw3/z2;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p2, p0, :cond_2

    instance-of v0, p2, Lw3/l;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lw3/l;

    invoke-interface {v0, p1, p2, p3}, Lw3/l;->q(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1, p2, p3}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public r(Ljava/lang/String;Lw3/z2;)Z
    .locals 1

    iget-object p2, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public s()[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lw3/a3;->y0(ZZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v0}, Lw3/e3;->size()I

    move-result v0

    return v0
.end method

.method public u0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lw3/a3;->W0(Ljava/lang/Object;ILw3/z2;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p2, p0, :cond_1

    invoke-interface {p2, p1, p2, p3}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lw3/a3$c;->c(Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lw3/a3$c;->a()I

    move-result p1

    const/4 v0, 0x5

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public x0(Ljava/lang/String;IZ)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iget-object v0, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v0, p1, p2}, Lw3/e3;->g(Ljava/lang/Object;I)Lw3/a3$c;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    instance-of p2, p1, Lw3/a3$a;

    if-eqz p2, :cond_5

    check-cast p1, Lw3/a3$a;

    if-eqz p3, :cond_3

    iget-object p1, p1, Lw3/a3$a;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lw3/a3$a;->g:Ljava/lang/Object;

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    :goto_2
    return-object p1

    :cond_5
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1
.end method

.method y0(ZZ)[Ljava/lang/Object;
    .locals 9

    sget-object v0, Lw3/u2;->y:[Ljava/lang/Object;

    iget-object v1, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v1}, Lw3/e3;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v1}, Lw3/e3;->d()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v3}, Lw3/e3;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw3/a3$c;

    if-nez p1, :cond_2

    invoke-virtual {v6}, Lw3/a3$c;->a()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    :cond_2
    if-nez p2, :cond_3

    iget-object v7, v6, Lw3/a3$c;->a:Ljava/lang/Object;

    instance-of v7, v7, Lw3/i3;

    if-nez v7, :cond_1

    :cond_3
    if-nez v5, :cond_5

    iget-object v7, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v7}, Lw3/e3;->b()I

    move-result v7

    add-int/2addr v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-static {v0, v4, v7, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v0, v7

    :cond_5
    add-int/lit8 v7, v5, 0x1

    iget-object v8, v6, Lw3/a3$c;->a:Ljava/lang/Object;

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    iget v6, v6, Lw3/a3$c;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_1
    aput-object v8, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {p1, v1, v2}, Lw3/e3;->e(J)V

    array-length p1, v0

    add-int/2addr p1, v4

    if-ne v5, p1, :cond_8

    goto :goto_2

    :cond_8
    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :goto_2
    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object p1

    if-eqz p1, :cond_9

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lw3/m;->E(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lw3/a3;->h:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_9
    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {p2, v1, v2}, Lw3/e3;->e(J)V

    throw p1
.end method

.method public z(Lw3/i3;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw3/a3;->N(Ljava/lang/Object;I)V

    iget-object v1, p0, Lw3/a3;->c:Lw3/e3;

    invoke-virtual {v1, p1, v0}, Lw3/e3;->c(Ljava/lang/Object;I)V

    return-void
.end method
