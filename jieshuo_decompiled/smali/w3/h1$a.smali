.class final Lw3/h1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final c:Ljava/lang/reflect/Method;

.field static final d:Ljava/lang/reflect/Method;

.field static final e:Ljava/lang/reflect/Method;

.field static final f:Ljava/lang/reflect/Method;


# instance fields
.field private a:I

.field private b:Lw3/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Ljava/lang/Object;

    const-class v1, Lw3/z2;

    const-class v2, Lw3/h1$a;

    :try_start_0
    const-string v3, "d"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lw3/h1$a;->c:Ljava/lang/reflect/Method;

    const-string v3, "f"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v6

    aput-object v0, v7, v4

    invoke-virtual {v2, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lw3/h1$a;->d:Ljava/lang/reflect/Method;

    const-string v3, "a"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v1, v7, v6

    invoke-virtual {v2, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lw3/h1$a;->e:Ljava/lang/reflect/Method;

    const-string v3, "e"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v1, v5, v6

    aput-object v0, v5, v4

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lw3/h1$a;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw3/h1$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lw3/g1;)V
    .locals 0

    invoke-direct {p0}, Lw3/h1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw3/z2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lw3/h1$a;->b()Lw3/d0;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public b()Lw3/d0;
    .locals 1

    iget-object v0, p0, Lw3/h1$a;->b:Lw3/d0;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lw3/h1$a;->a:I

    return v0
.end method

.method public d(Lw3/z2;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Lw3/h1$a;->a:I

    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public e(Lw3/z2;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_1

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lw3/d0;

    if-eqz p1, :cond_2

    check-cast p2, Lw3/d0;

    iput-object p2, p0, Lw3/h1$a;->b:Lw3/d0;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lw3/h1$a;->b:Lw3/d0;

    :cond_2
    :goto_1
    return-void
.end method

.method public f(Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p2}, Lw3/m;->j0(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    double-to-int p1, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lw3/h1$a;->a:I

    return-void
.end method
