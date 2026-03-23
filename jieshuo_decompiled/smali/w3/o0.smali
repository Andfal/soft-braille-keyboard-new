.class public Lw3/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lw3/o;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/o;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw3/y3;->a:Lw3/y3;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lw3/y3;->b(Lw3/o;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lw3/o0;->a:Ljava/lang/Object;

    return-void
.end method

.method static a(Lw3/m;Ljava/lang/Class;Lw3/a3;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/m;",
            "Ljava/lang/Class<",
            "*>;",
            "Lw3/a3;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lw3/u2;->m0(Lw3/m;)Lw3/z2;

    move-result-object v6

    invoke-static {v6}, Lw3/g;->c(Lw3/z2;)Lw3/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw3/g;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/o0;

    invoke-virtual {p0}, Lw3/m;->u()Lw3/o;

    move-result-object v3

    if-nez v1, :cond_7

    instance-of p0, p2, Lw3/f;

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v4, p0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v4, :cond_2

    aget-object v9, p0, v7

    invoke-static {v9}, Lw3/o0;->b(Ljava/lang/reflect/Method;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v9

    if-le v9, v8, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p0

    if-eq p0, v8, :cond_4

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result p0

    if-ne p0, v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x1

    :goto_3
    if-nez p0, :cond_6

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    new-array p0, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v5

    const-string p1, "msg.no.empty.interface.conversion"

    invoke-static {p1, p0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p0

    throw p0

    :cond_5
    new-array p0, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v5

    const-string p1, "msg.no.function.interface.conversion"

    invoke-static {p1, p0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p0

    throw p0

    :cond_6
    new-instance p0, Lw3/o0;

    invoke-direct {p0, v3, p1}, Lw3/o0;-><init>(Lw3/o;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, p0}, Lw3/g;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v4, p0

    goto :goto_4

    :cond_7
    move-object v4, v1

    :goto_4
    sget-object v1, Lw3/y3;->a:Lw3/y3;

    iget-object v2, v4, Lw3/o0;->a:Ljava/lang/Object;

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lw3/y3;->e(Ljava/lang/Object;Lw3/o;Lw3/o0;Ljava/lang/Object;Lw3/z2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(Ljava/lang/reflect/Method;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
