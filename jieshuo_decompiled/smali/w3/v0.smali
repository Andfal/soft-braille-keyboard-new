.class public Lw3/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/v0$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FAILED ASSERTION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILED ASSERTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    throw v0
.end method

.method public static d(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_3

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    instance-of p1, p0, [Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    check-cast p0, [Ljava/lang/Object;

    array-length p1, p0

    if-lt p1, v0, :cond_2

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    instance-of p1, p0, [Ljava/lang/Object;

    if-nez p1, :cond_5

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, v2

    return-object p0

    :cond_6
    check-cast p0, [Ljava/lang/Object;

    array-length v2, p0

    if-lt v2, v0, :cond_8

    if-ne p1, v2, :cond_7

    return-object v1

    :cond_7
    aget-object p0, p0, p1

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static e(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lw3/v0$a;

    invoke-direct {v0, p0, p1}, Lw3/v0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(II)I
    .locals 1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x30

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    add-int/lit8 p0, p0, -0x37

    goto :goto_0

    :cond_1
    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    add-int/lit8 p0, p0, -0x57

    :goto_0
    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method
