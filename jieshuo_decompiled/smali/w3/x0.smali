.class final Lw3/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final g:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private transient a:Ljava/lang/reflect/Member;

.field transient b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field transient c:Z

.field transient d:Lw3/d0;

.field transient e:Lw3/d0;

.field transient f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lw3/x0;->g:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lw3/x0;->f(Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lw3/x0;->g(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private f(Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lw3/x0;->b:[Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result p1

    iput-boolean p1, p0, Lw3/x0;->c:Z

    return-void
.end method

.method private g(Ljava/lang/reflect/Method;)V
    .locals 1

    iput-object p1, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lw3/x0;->b:[Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result p1

    iput-boolean p1, p0, Lw3/x0;->c:Z

    return-void
.end method

.method private static o(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v4, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_1

    return-object v1

    :catch_1
    nop

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Lw3/z2;)Lw3/d0;
    .locals 2

    iget-object v0, p0, Lw3/x0;->d:Lw3/d0;

    if-nez v0, :cond_0

    new-instance v0, Lw3/x0$a;

    invoke-static {p2}, Lw3/a3;->v0(Lw3/z2;)Lw3/z2;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lw3/x0$a;-><init>(Lw3/x0;Lw3/z2;Lw3/z2;Ljava/lang/String;)V

    iput-object v0, p0, Lw3/x0;->d:Lw3/d0;

    :cond_0
    iget-object p1, p0, Lw3/x0;->d:Lw3/d0;

    return-object p1
.end method

.method b(Ljava/lang/String;Lw3/z2;)Lw3/d0;
    .locals 2

    iget-object v0, p0, Lw3/x0;->e:Lw3/d0;

    if-nez v0, :cond_0

    new-instance v0, Lw3/x0$b;

    invoke-static {p2}, Lw3/a3;->v0(Lw3/z2;)Lw3/z2;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lw3/x0$b;-><init>(Lw3/x0;Lw3/z2;Lw3/z2;Ljava/lang/String;)V

    iput-object v0, p0, Lw3/x0;->e:Lw3/d0;

    :cond_0
    iget-object p1, p0, Lw3/x0;->e:Lw3/d0;

    return-object p1
.end method

.method c()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lw3/x0;->m()Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lw3/x0;->b:[Ljava/lang/Class;

    invoke-static {v0, v2}, Lw3/x0;->o(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v2, Lw3/y3;->a:Lw3/y3;

    invoke-virtual {v2, v0}, Lw3/y3;->g(Ljava/lang/reflect/AccessibleObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {p1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_2
    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-nez p2, :cond_2

    instance-of p2, p1, Lw3/p;

    if-eqz p2, :cond_3

    check-cast p1, Lw3/p;

    throw p1

    :cond_3
    invoke-static {p1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    return v0
.end method

.method j()Z
    .locals 1

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Method;

    return v0
.end method

.method k()Z
    .locals 1

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method l()Z
    .locals 1

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method m()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method n([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lw3/x0;->c()Ljava/lang/reflect/Constructor;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_1
    sget-object v2, Lw3/y3;->a:Lw3/y3;

    invoke-virtual {v2, v0}, Lw3/y3;->g(Ljava/lang/reflect/AccessibleObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-static {p1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method p()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lw3/x0;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lw3/x0;->m()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lw3/x0;->c()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lw3/x0;->b:[Ljava/lang/Class;

    invoke-static {v1}, Lw3/t0;->p([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/x0;->a:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
