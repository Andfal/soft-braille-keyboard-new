.class public Lg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/j1;


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lg/g;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
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

    const-string p2, "parse enum error"

    iget-object p3, p0, Lg/g;->b:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Lf/a;->S(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    iget-object p3, p0, Lg/g;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lc/d;

    invoke-direct {p3, p2, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    new-instance p3, Lc/d;

    invoke-direct {p3, p2, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
