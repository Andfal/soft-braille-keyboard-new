.class public Lw3/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Lw3/z2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw3/w3;

    invoke-direct {v0}, Lw3/w3;-><init>()V

    sput-object v0, Lw3/w3;->a:Ljava/lang/Object;

    const-class v0, Lw3/w3;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lw3/z2;

    aput-object v3, v1, v2

    new-instance v2, Lw3/w3$a;

    invoke-direct {v2}, Lw3/w3$a;-><init>()V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/z2;

    sput-object v0, Lw3/w3;->b:Lw3/z2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_1

    sget-object v0, Lw3/w3;->b:Lw3/z2;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
