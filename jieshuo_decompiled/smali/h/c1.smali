.class public Lh/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lh/c1;

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z


# instance fields
.field private a:Z

.field private b:Lh/a;

.field protected c:Ljava/lang/String;

.field public d:Lc/l;

.field private final e:Ll/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/f<",
            "Ljava/lang/reflect/Type;",
            "Lh/v0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ll/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/f<",
            "Ljava/lang/reflect/Type;",
            "Ll/f<",
            "Ljava/lang/reflect/Type;",
            "Lh/v0;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Z

.field private h:[J

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/c1;

    invoke-direct {v0}, Lh/c1;-><init>()V

    sput-object v0, Lh/c1;->j:Lh/c1;

    const/4 v0, 0x0

    sput-boolean v0, Lh/c1;->k:Z

    sput-boolean v0, Lh/c1;->l:Z

    sput-boolean v0, Lh/c1;->m:Z

    sput-boolean v0, Lh/c1;->n:Z

    sput-boolean v0, Lh/c1;->o:Z

    sput-boolean v0, Lh/c1;->p:Z

    sput-boolean v0, Lh/c1;->q:Z

    sput-boolean v0, Lh/c1;->r:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lh/c1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/c1;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Ll/b;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lh/c1;->a:Z

    sget-object v0, Lc/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lh/c1;->c:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lh/c1;->h:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/c1;->i:Ljava/util/List;

    iput-boolean p2, p0, Lh/c1;->g:Z

    new-instance p2, Ll/f;

    invoke-direct {p2, p1}, Ll/f;-><init>(I)V

    iput-object p2, p0, Lh/c1;->e:Ll/f;

    new-instance p1, Ll/f;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Ll/f;-><init>(I)V

    iput-object p1, p0, Lh/c1;->f:Ll/f;

    :try_start_0
    iget-boolean p1, p0, Lh/c1;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lh/a;

    invoke-direct {p1}, Lh/a;-><init>()V

    iput-object p1, p0, Lh/c1;->b:Lh/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lh/c1;->a:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lh/c1;->j()V

    return-void

    nop

    :array_0
    .array-data 8
        0x39ce554cca9aab53L    # 2.991084746524151E-30
        0x3db5c2961aadf5f3L    # 1.9790698305390406E-11
    .end array-data
.end method

.method private final a(Lh/b1;)Lh/l0;
    .locals 4

    iget-object v0, p0, Lh/c1;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->z(Lh/b1;)Lh/l0;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lh/l0;->k:[Lh/c0;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget-object v2, v2, Lh/c0;->a:Ll/c;

    iget-object v2, v2, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lh/c1;->h(Ljava/lang/Class;)Lh/v0;

    move-result-object v2

    instance-of v2, v2, Lh/a0;

    if-nez v2, :cond_0

    iput-boolean v0, p1, Lh/e1;->i:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static f(Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    :goto_0
    const-class v6, Ld/b;

    if-ge v4, v1, :cond_3

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Void;

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ld/b;

    if-eqz v6, :cond_2

    if-eqz v5, :cond_1

    return-object v2

    :cond_1
    move-object v5, v7

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    :goto_2
    if-ge v3, v0, :cond_6

    aget-object v1, p0, v3

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ld/b;

    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    return-object v2

    :cond_4
    move-object v5, v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v5
.end method

.method public static g()Lh/c1;
    .locals 1

    sget-object v0, Lh/c1;->j:Lh/c1;

    return-object v0
.end method

.method private j()V
    .locals 3

    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lh/p;->a:Lh/p;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/Character;

    sget-object v1, Lh/t;->a:Lh/t;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lh/f0;->a:Lh/f0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/Short;

    sget-object v1, Lh/f0;->a:Lh/f0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lh/f0;->a:Lh/f0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/Long;

    sget-object v1, Lh/q0;->a:Lh/q0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/Float;

    sget-object v1, Lh/d0;->b:Lh/d0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/Double;

    sget-object v1, Lh/z;->b:Lh/z;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lh/n;->c:Lh/n;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lh/o;->c:Lh/o;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/String;

    sget-object v1, Lh/h1;->a:Lh/h1;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [B

    sget-object v1, Lh/w0;->a:Lh/w0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [S

    sget-object v1, Lh/w0;->a:Lh/w0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [I

    sget-object v1, Lh/w0;->a:Lh/w0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [J

    sget-object v1, Lh/w0;->a:Lh/w0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [F

    sget-object v1, Lh/w0;->a:Lh/w0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [D

    sget-object v1, Lh/w0;->a:Lh/w0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [Z

    sget-object v1, Lh/w0;->a:Lh/w0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [C

    sget-object v1, Lh/w0;->a:Lh/w0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, [Ljava/lang/Object;

    sget-object v1, Lh/u0;->a:Lh/u0;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    sget-object v0, Lh/s0;->b:Lh/s0;

    const-class v1, Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    new-instance v1, Lh/s0;

    invoke-direct {v1}, Lh/s0;-><init>()V

    const-class v2, Ljava/util/Currency;

    invoke-virtual {p0, v2, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/util/TimeZone;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/net/Inet4Address;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/net/Inet6Address;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/io/File;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    sget-object v0, Lh/g;->a:Lh/g;

    const-class v1, Ljava/lang/Appendable;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    sget-object v0, Lh/i1;->a:Lh/i1;

    const-class v1, Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/util/Locale;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/net/URI;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/net/URL;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/util/UUID;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    sget-object v0, Lh/i;->a:Lh/i;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v1, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    sget-object v1, Lh/z0;->a:Lh/z0;

    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, v2, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0, v2, v0}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    const-class v0, Ljava/util/LinkedList;

    sget-object v1, Lh/v;->a:Lh/v;

    invoke-virtual {p0, v0, v1}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    return-void
.end method


# virtual methods
.method public b(Lh/b1;)Lh/v0;
    .locals 14

    iget-object v0, p1, Lh/b1;->d:Ld/d;

    iget-boolean v1, p0, Lh/c1;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lh/c1;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-class v3, Ljava/lang/Void;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ld/d;->serializer()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lh/v0;

    if-eqz v5, :cond_1

    check-cast v4, Lh/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    nop

    :cond_1
    invoke-interface {v0}, Ld/d;->asm()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_5

    invoke-interface {v0}, Ld/d;->serialzeFeatures()[Lh/g1;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    sget-object v8, Lh/g1;->B:Lh/g1;

    if-eq v8, v7, :cond_4

    sget-object v8, Lh/g1;->e:Lh/g1;

    if-eq v8, v7, :cond_4

    sget-object v8, Lh/g1;->y:Lh/g1;

    if-eq v8, v7, :cond_4

    sget-object v8, Lh/g1;->s:Lh/g1;

    if-ne v8, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v0}, Ld/d;->serialzeFilters()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :cond_6
    iget-object v0, p1, Lh/b1;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v0, Lh/l0;

    invoke-direct {v0, p1}, Lh/l0;-><init>(Lh/b1;)V

    return-object v0

    :cond_7
    if-eqz v1, :cond_8

    iget-object v4, p0, Lh/c1;->b:Lh/a;

    iget-object v4, v4, Lh/a;->a:Ll/a;

    invoke-virtual {v4, v0}, Ll/a;->c(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    const-class v4, Ljava/io/Serializable;

    if-eq v0, v4, :cond_9

    const-class v4, Ljava/lang/Object;

    if-ne v0, v4, :cond_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ll/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v1, 0x0

    :cond_b
    if-eqz v1, :cond_c

    iget-object v4, p1, Lh/b1;->a:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v1, 0x0

    :cond_c
    if-eqz v1, :cond_18

    iget-object v4, p1, Lh/b1;->e:[Ll/c;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_18

    aget-object v7, v4, v6

    iget-object v8, v7, Ll/c;->c:Ljava/lang/reflect/Field;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto/16 :goto_7

    :cond_d
    iget-object v8, v7, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    iget-object v10, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_7

    :cond_e
    iget-object v9, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {p0, v9}, Lh/c1;->d(Ljava/lang/reflect/Type;)Lh/v0;

    move-result-object v9

    sget-object v10, Lh/a0;->b:Lh/a0;

    if-eq v9, v10, :cond_f

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v7}, Ll/c;->d()Ld/b;

    move-result-object v9

    if-nez v9, :cond_10

    goto/16 :goto_6

    :cond_10
    invoke-interface {v9}, Ld/b;->format()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_11

    iget-object v7, v7, Ll/c;->e:Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    if-ne v7, v11, :cond_19

    const-string v7, "trim"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    :cond_11
    invoke-interface {v9}, Ld/b;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ll/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v9}, Ld/b;->jsonDirect()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-interface {v9}, Ld/b;->serializeUsing()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, v3, :cond_19

    invoke-interface {v9}, Ld/b;->unwrapped()Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_7

    :cond_12
    invoke-interface {v9}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_15

    aget-object v12, v7, v11

    sget-object v13, Lh/g1;->B:Lh/g1;

    if-eq v13, v12, :cond_14

    sget-object v13, Lh/g1;->e:Lh/g1;

    if-eq v13, v12, :cond_14

    sget-object v13, Lh/g1;->y:Lh/g1;

    if-eq v13, v12, :cond_14

    sget-object v13, Lh/g1;->s:Lh/g1;

    if-eq v13, v12, :cond_14

    sget-object v13, Lh/g1;->p:Lh/g1;

    if-ne v13, v12, :cond_13

    goto :goto_5

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_14
    :goto_5
    const/4 v1, 0x0

    :cond_15
    invoke-static {v8}, Ll/l;->m0(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-static {v8}, Ll/l;->l0(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_7

    :cond_16
    invoke-interface {v9}, Ld/b;->defaultValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    const-string v7, ""

    invoke-interface {v9}, Ld/b;->defaultValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto :goto_7

    :cond_17
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_18
    move v2, v1

    :cond_19
    :goto_7
    if-eqz v2, :cond_1b

    :try_start_1
    invoke-direct {p0, p1}, Lh/c1;->a(Lh/b1;)Lh/l0;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassFormatError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1b

    return-object v0

    :catchall_1
    move-exception p1

    new-instance v1, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create asm serializer error, verson 1.2.71, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Metaspace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    goto :goto_8

    :cond_1a
    throw v0

    :catch_1
    :cond_1b
    :goto_8
    new-instance v0, Lh/l0;

    invoke-direct {v0, p1}, Lh/l0;-><init>(Lh/b1;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Class;)Lh/v0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lh/v0;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lh/c1;->h:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v0, p0, Lh/c1;->d:Lc/l;

    iget-boolean v1, p0, Lh/c1;->g:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Ll/l;->d(Ljava/lang/Class;Ljava/util/Map;Lc/l;Z)Lh/b1;

    move-result-object v0

    iget-object v1, v0, Lh/b1;->e:[Ll/c;

    array-length v1, v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lh/s0;->b:Lh/s0;

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Lh/c1;->b(Lh/b1;)Lh/v0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/reflect/Type;)Lh/v0;
    .locals 2

    invoke-static {p1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/c1;->e:Ll/f;

    invoke-virtual {v0, p1}, Ll/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lh/v0;

    return-object p1

    :cond_0
    iget-object v1, p0, Lh/c1;->f:Ll/f;

    invoke-virtual {v1, p1}, Ll/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll/f;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1, v0}, Ll/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method protected e()Lh/v0;
    .locals 1

    sget-object v0, Lh/a0;->b:Lh/a0;

    return-object v0
.end method

.method public h(Ljava/lang/Class;)Lh/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lh/v0;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lh/c1;->i(Ljava/lang/Class;Z)Lh/v0;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Class;Z)Lh/v0;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lh/v0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lh/j;

    invoke-virtual/range {p0 .. p1}, Lh/c1;->d(Ljava/lang/reflect/Type;)Lh/v0;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Ll/k;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lh/j;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    check-cast v4, Lh/j;

    invoke-interface {v4}, Lh/j;->a()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    invoke-virtual {v0, v6, v4}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lh/c1;->d(Ljava/lang/reflect/Type;)Lh/v0;

    move-result-object v3

    if-nez v3, :cond_7

    const-class v4, Lc/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eq v4, v5, :cond_7

    :try_start_1
    invoke-static {v2, v4}, Ll/k;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lh/j;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    check-cast v3, Lh/j;

    invoke-interface {v3}, Lh/j;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lh/c1;->d(Ljava/lang/reflect/Type;)Lh/v0;

    move-result-object v3

    :cond_7
    iget-object v2, v0, Lh/c1;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/a;

    invoke-interface {v3, v0, v1}, Li/a;->b(Lh/c1;Ljava/lang/Class;)Lh/v0;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v1, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    return-object v3

    :cond_9
    if-nez v3, :cond_43

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v2, Lh/r0;->j:Lh/r0;

    :goto_4
    invoke-virtual {v0, v1, v2}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    move-object v3, v2

    goto/16 :goto_15

    :cond_a
    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v2, Lh/p0;->a:Lh/p0;

    goto :goto_4

    :cond_b
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v2, Lh/v;->a:Lh/v;

    goto :goto_4

    :cond_c
    const-class v4, Ljava/util/Date;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v2, Lh/y;->a:Lh/y;

    goto :goto_4

    :cond_d
    const-class v4, Lc/c;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v2, Lh/g0;->a:Lh/g0;

    goto :goto_4

    :cond_e
    const-class v4, Lh/i0;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v2, Lh/j0;->a:Lh/j0;

    goto :goto_4

    :cond_f
    const-class v4, Lc/j;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    :goto_5
    sget-object v2, Lh/s0;->b:Lh/s0;

    goto :goto_4

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    const-class v5, Ld/d;

    const/4 v6, 0x0

    if-eqz v4, :cond_17

    invoke-static/range {p1 .. p1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_12

    invoke-static {v2, v5}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    goto :goto_6

    :cond_12
    invoke-static {v1, v5}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    :goto_6
    check-cast v3, Ld/d;

    if-eqz v3, :cond_13

    invoke-interface {v3}, Ld/d;->serializeEnumAsJavaBean()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p1}, Lh/c1;->c(Ljava/lang/Class;)Lh/v0;

    move-result-object v2

    goto :goto_4

    :cond_13
    if-eqz v2, :cond_14

    invoke-static {v2}, Lh/c1;->f(Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v2

    if-eqz v2, :cond_15

    :try_start_2
    instance-of v3, v2, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_15

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v2

    goto :goto_7

    :catch_2
    nop

    goto :goto_7

    :cond_14
    invoke-static/range {p1 .. p1}, Lh/c1;->f(Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v6

    :cond_15
    :goto_7
    if-eqz v6, :cond_16

    new-instance v2, Lh/a0;

    invoke-direct {v2, v6}, Lh/a0;-><init>(Ljava/lang/reflect/Member;)V

    goto/16 :goto_4

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lh/c1;->e()Lh/v0;

    move-result-object v2

    goto/16 :goto_4

    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {v4, v5}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ld/d;

    if-eqz v2, :cond_18

    invoke-interface {v2}, Ld/d;->serializeEnumAsJavaBean()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual/range {p0 .. p1}, Lh/c1;->c(Ljava/lang/Class;)Lh/v0;

    move-result-object v2

    goto/16 :goto_4

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lh/c1;->e()Lh/v0;

    move-result-object v2

    goto/16 :goto_4

    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh/c1;->h(Ljava/lang/Class;)Lh/v0;

    move-result-object v3

    new-instance v4, Lh/h;

    invoke-direct {v4, v2, v3}, Lh/h;-><init>(Ljava/lang/Class;Lh/v0;)V

    invoke-virtual {v0, v1, v4}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    move-object v3, v4

    goto/16 :goto_15

    :cond_1a
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v2, v0, Lh/c1;->d:Lc/l;

    invoke-static {v1, v6, v2}, Ll/l;->c(Ljava/lang/Class;Ljava/util/Map;Lc/l;)Lh/b1;

    move-result-object v2

    iget v3, v2, Lh/b1;->g:I

    sget-object v4, Lh/g1;->p:Lh/g1;

    iget v4, v4, Lh/g1;->a:I

    or-int/2addr v3, v4

    iput v3, v2, Lh/b1;->g:I

    new-instance v3, Lh/l0;

    invoke-direct {v3, v2}, Lh/l0;-><init>(Lh/b1;)V

    invoke-virtual {v0, v1, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    goto/16 :goto_15

    :cond_1b
    const-class v4, Ljava/util/TimeZone;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_10

    const-class v4, Ljava/util/Map$Entry;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto/16 :goto_5

    :cond_1c
    const-class v4, Ljava/lang/Appendable;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v2, Lh/g;->a:Lh/g;

    goto/16 :goto_4

    :cond_1d
    const-class v4, Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :goto_8
    sget-object v2, Lh/i1;->a:Lh/i1;

    goto/16 :goto_4

    :cond_1e
    const-class v4, Ljava/util/Enumeration;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v2, Lh/b0;->a:Lh/b0;

    goto/16 :goto_4

    :cond_1f
    const-class v4, Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_41

    const-class v4, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto/16 :goto_14

    :cond_20
    invoke-static/range {p1 .. p1}, Ll/l;->n0(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_21

    sget-object v2, Lh/u;->a:Lh/u;

    goto/16 :goto_4

    :cond_21
    invoke-static/range {p1 .. p1}, Ll/l;->v0(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_8

    :cond_22
    const-class v4, Ljava/util/Iterator;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto/16 :goto_5

    :cond_23
    const-class v4, Lorg/w3c/dom/Node;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto/16 :goto_5

    :cond_24
    const-string v4, "java.awt."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_26

    invoke-static/range {p1 .. p1}, Lh/k;->k(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_26

    sget-boolean v4, Lh/c1;->k:Z

    if-nez v4, :cond_26

    :try_start_3
    const-string v4, "java.awt.Color"

    const-string v9, "java.awt.Font"

    const-string v10, "java.awt.Point"

    const-string v11, "java.awt.Rectangle"

    filled-new-array {v4, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v5, :cond_26

    aget-object v10, v4, v9

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lh/k;->a:Lh/k;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    :cond_25
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :catchall_0
    sput-boolean v8, Lh/c1;->k:Z

    :cond_26
    sget-boolean v4, Lh/c1;->l:Z

    const/16 v9, 0xb

    const/4 v10, 0x2

    if-nez v4, :cond_2d

    const-string v4, "java.time."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v11, "java.util.Optional"

    if-nez v4, :cond_27

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "java.util.concurrent.atomic.LongAdder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "java.util.concurrent.atomic.DoubleAdder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_27
    :try_start_4
    const-string v12, "java.time.LocalDateTime"

    const-string v13, "java.time.LocalDate"

    const-string v14, "java.time.LocalTime"

    const-string v15, "java.time.ZonedDateTime"

    const-string v16, "java.time.OffsetDateTime"

    const-string v17, "java.time.OffsetTime"

    const-string v18, "java.time.ZoneOffset"

    const-string v19, "java.time.ZoneRegion"

    const-string v20, "java.time.Period"

    const-string v21, "java.time.Duration"

    const-string v22, "java.time.Instant"

    filled-new-array/range {v12 .. v22}, [Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v9, :cond_29

    aget-object v13, v4, v12

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lg/g1;->a:Lg/g1;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    return-object v3

    :cond_28
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_29
    const-string v4, "java.util.OptionalDouble"

    const-string v12, "java.util.OptionalInt"

    const-string v13, "java.util.OptionalLong"

    filled-new-array {v11, v4, v12, v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v5, :cond_2b

    aget-object v12, v4, v11

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lg/w1;->a:Lg/w1;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    return-object v3

    :cond_2a
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_2b
    const-string v4, "java.util.concurrent.atomic.LongAdder"

    const-string v5, "java.util.concurrent.atomic.DoubleAdder"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v10, :cond_2d

    aget-object v11, v4, v5

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lh/d;->a:Lh/d;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v3

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :catchall_1
    sput-boolean v8, Lh/c1;->l:Z

    :cond_2d
    sget-boolean v4, Lh/c1;->m:Z

    if-nez v4, :cond_2f

    const-string v4, "oracle.sql."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    :try_start_5
    const-string v4, "oracle.sql.DATE"

    const-string v5, "oracle.sql.TIMESTAMP"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v10, :cond_2f

    aget-object v11, v4, v5

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lh/y;->a:Lh/y;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v3

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :catchall_2
    sput-boolean v8, Lh/c1;->m:Z

    :cond_2f
    sget-boolean v4, Lh/c1;->n:Z

    if-nez v4, :cond_30

    const-string v4, "springfox.documentation.spring.web.json.Json"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    :try_start_6
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lk/a;->a:Lk/a;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    return-object v3

    :catch_3
    sput-boolean v8, Lh/c1;->n:Z

    :cond_30
    sget-boolean v4, Lh/c1;->o:Z

    if-nez v4, :cond_32

    const-string v4, "com.google.common.collect."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    :try_start_7
    const-string v4, "com.google.common.collect.HashMultimap"

    const-string v5, "com.google.common.collect.LinkedListMultimap"

    const-string v11, "com.google.common.collect.LinkedHashMultimap"

    const-string v12, "com.google.common.collect.ArrayListMultimap"

    const-string v13, "com.google.common.collect.TreeMultimap"

    filled-new-array {v4, v5, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_e
    const/4 v11, 0x5

    if-ge v5, v11, :cond_32

    aget-object v11, v4, v5

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lh/e0;->a:Lh/e0;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    return-object v3

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :catch_4
    sput-boolean v8, Lh/c1;->o:Z

    :cond_32
    sget-boolean v4, Lh/c1;->p:Z

    if-nez v4, :cond_33

    const-string v4, "net.sf.json.JSONNull"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    :try_start_8
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lh/s0;->b:Lh/s0;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    return-object v3

    :catch_5
    sput-boolean v8, Lh/c1;->p:Z

    :cond_33
    sget-boolean v4, Lh/c1;->q:Z

    if-nez v4, :cond_34

    const-string v4, "org.json.JSONObject"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    :try_start_9
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lh/h0;->a:Lh/h0;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    return-object v3

    :catch_6
    sput-boolean v8, Lh/c1;->q:Z

    :cond_34
    sget-boolean v4, Lh/c1;->r:Z

    if-nez v4, :cond_36

    const-string v4, "org.joda."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    :try_start_a
    const-string v11, "org.joda.time.LocalDate"

    const-string v12, "org.joda.time.LocalDateTime"

    const-string v13, "org.joda.time.LocalTime"

    const-string v14, "org.joda.time.Instant"

    const-string v15, "org.joda.time.DateTime"

    const-string v16, "org.joda.time.Period"

    const-string v17, "org.joda.time.Duration"

    const-string v18, "org.joda.time.DateTimeZone"

    const-string v19, "org.joda.time.UTCDateTimeZone"

    const-string v20, "org.joda.time.tz.CachedDateTimeZone"

    const-string v21, "org.joda.time.tz.FixedDateTimeZone"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v9, :cond_36

    aget-object v11, v4, v5

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lh/m0;->a:Lh/m0;

    invoke-virtual {v0, v4, v3}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_7

    return-object v3

    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :catch_7
    sput-boolean v8, Lh/c1;->r:Z

    :cond_36
    const-string v4, "java.nio.HeapByteBuffer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    sget-object v2, Lh/q;->a:Lh/q;

    :goto_10
    invoke-virtual {v0, v1, v2}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    return-object v2

    :cond_37
    const-string v4, "org.javamoney.moneta.Money"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    sget-object v2, Lj/a;->a:Lj/a;

    goto :goto_10

    :cond_38
    const-string v4, "com.google.protobuf.Descriptors$FieldDescriptor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Lh/i1;->a:Lh/i1;

    goto :goto_10

    :cond_39
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v4, v2

    if-ne v4, v8, :cond_3a

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/Class;->isAnnotation()Z

    move-result v4

    if-eqz v4, :cond_3a

    sget-object v2, Lh/f;->e:Lh/f;

    invoke-virtual {v0, v1, v2}, Lh/c1;->k(Ljava/lang/reflect/Type;Lh/v0;)Z

    sget-object v1, Lh/f;->e:Lh/f;

    return-object v1

    :cond_3a
    invoke-static/range {p1 .. p1}, Ll/l;->w0(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh/c1;->h(Ljava/lang/Class;)Lh/v0;

    move-result-object v2

    goto :goto_10

    :cond_3b
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_40

    array-length v4, v2

    if-ne v4, v10, :cond_3c

    aget-object v6, v2, v8

    goto :goto_13

    :cond_3c
    array-length v4, v2

    move-object v5, v6

    :goto_11
    if-ge v7, v4, :cond_3f

    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "org.springframework.aop."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    goto :goto_12

    :cond_3d
    if-eqz v5, :cond_3e

    goto :goto_13

    :cond_3e
    move-object v5, v8

    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_3f
    move-object v6, v5

    :goto_13
    if-eqz v6, :cond_40

    invoke-virtual {v0, v6}, Lh/c1;->h(Ljava/lang/Class;)Lh/v0;

    move-result-object v2

    goto :goto_10

    :cond_40
    if-eqz p2, :cond_42

    invoke-virtual/range {p0 .. p1}, Lh/c1;->c(Ljava/lang/Class;)Lh/v0;

    move-result-object v2

    goto/16 :goto_4

    :cond_41
    :goto_14
    sget-object v2, Lh/r;->b:Lh/r;

    goto/16 :goto_4

    :cond_42
    :goto_15
    if-nez v3, :cond_43

    invoke-virtual/range {p0 .. p1}, Lh/c1;->d(Ljava/lang/reflect/Type;)Lh/v0;

    move-result-object v3

    :cond_43
    return-object v3
.end method

.method public k(Ljava/lang/reflect/Type;Lh/v0;)Z
    .locals 3

    invoke-static {p1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh/c1;->f:Ll/f;

    invoke-virtual {v1, p1}, Ll/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/f;

    if-nez v1, :cond_0

    new-instance v1, Ll/f;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ll/f;-><init>(I)V

    iget-object v2, p0, Lh/c1;->f:Ll/f;

    invoke-virtual {v2, p1, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1, v0, p2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lh/c1;->e:Ll/f;

    invoke-virtual {v0, p1, p2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(Z)V
    .locals 1

    sget-boolean v0, Ll/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lh/c1;->a:Z

    return-void
.end method
