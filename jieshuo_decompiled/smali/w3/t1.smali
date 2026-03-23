.class public Lw3/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/z2;
.implements Lw3/k3;
.implements Lw3/b4;
.implements Ljava/io/Serializable;


# static fields
.field private static final h:Ljava/lang/Object;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;


# instance fields
.field protected a:Lw3/z2;

.field protected b:Lw3/z2;

.field protected transient c:Ljava/lang/Object;

.field protected transient d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected transient e:Lw3/t0;

.field private transient f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw3/c0;",
            ">;"
        }
    .end annotation
.end field

.field protected transient g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "Coerced Interface"

    sput-object v0, Lw3/t1;->h:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "org.mozilla.javascript.JavaAdapter"

    invoke-static {v1}, Lw3/v0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Lw3/u2;->j:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "java.io.ObjectOutputStream"

    invoke-static {v2}, Lw3/v0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "writeAdapterObject"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lw3/t1;->i:Ljava/lang/reflect/Method;

    sget-object v2, Lw3/u2;->r:Ljava/lang/Class;

    aput-object v2, v0, v3

    const-string v2, "java.io.ObjectInputStream"

    invoke-static {v2}, Lw3/v0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "readAdapterObject"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lw3/t1;->j:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lw3/t1;->i:Ljava/lang/reflect/Method;

    sput-object v0, Lw3/t1;->j:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/z2;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lw3/t1;-><init>(Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/z2;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/t1;->b:Lw3/z2;

    iput-object p2, p0, Lw3/t1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw3/t1;->d:Ljava/lang/Class;

    iput-boolean p4, p0, Lw3/t1;->g:Z

    invoke-virtual {p0}, Lw3/t1;->y()V

    return-void
.end method

.method static E(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1}, Lw3/t0;->o(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "msg.conversion.not.allowed"

    invoke-static {p0, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p0

    throw p0
.end method

.method private static G(Ljava/lang/Object;)D
    .locals 3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lw3/u2;->Z1(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_1
    instance-of v0, p0, Lw3/z2;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lw3/b4;

    if-eqz v0, :cond_2

    check-cast p0, Lw3/b4;

    invoke-interface {p0}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lw3/t1;->G(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-static {p0}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "doubleValue"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/u2;->Z1(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static H(Ljava/lang/Object;Ljava/lang/Class;DD)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;DD)J"
        }
    .end annotation

    invoke-static {p0}, Lw3/t1;->G(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    cmpg-double v2, v0, p2

    if-ltz v2, :cond_3

    cmpl-double p2, v0, p4

    if-lez p2, :cond_4

    :cond_3
    invoke-static {p0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_4
    double-to-long p0, v0

    return-wide p0
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lw3/t1;->t(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p0

    const/16 p1, 0x63

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static n(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_19

    sget-object v1, Lw3/u2;->c:Ljava/lang/Class;

    if-ne p0, v1, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v1, Lw3/u2;->j:Ljava/lang/Class;

    if-eq p0, v1, :cond_17

    sget-object v1, Lw3/u2;->e:Ljava/lang/Class;

    if-eq p0, v1, :cond_17

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    goto/16 :goto_8

    :cond_1
    sget-object v1, Lw3/u2;->f:Ljava/lang/Class;

    if-eq p0, v1, :cond_f

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-object v4, Lw3/u2;->g:Ljava/lang/Class;

    if-eq p0, v4, :cond_d

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    sget-object v6, Lw3/u2;->h:Ljava/lang/Class;

    if-eq p0, v6, :cond_b

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v8, Lw3/u2;->k:Ljava/lang/Class;

    if-eq p0, v8, :cond_9

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    goto :goto_1

    :cond_5
    sget-object v3, Lw3/u2;->b:Ljava/lang/Class;

    if-eq p0, v3, :cond_7

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lw3/t1;->G(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    if-ne v0, v3, :cond_8

    return-object p1

    :cond_8
    const-wide/high16 v4, -0x3fa0000000000000L    # -128.0

    const-wide v6, 0x405fc00000000000L    # 127.0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lw3/t1;->H(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    if-ne v0, v8, :cond_a

    return-object p1

    :cond_a
    const-wide/high16 v9, -0x3f20000000000000L    # -32768.0

    const-wide v11, 0x40dfffc000000000L    # 32767.0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lw3/t1;->H(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-short p0, p1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_2
    if-ne v0, v6, :cond_c

    return-object p1

    :cond_c
    const-wide v0, 0x43dfffffffffffffL    # 9.223372036854775E18

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lw3/t1;->H(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_3
    if-ne v0, v4, :cond_e

    return-object p1

    :cond_e
    const-wide/high16 v5, -0x3e20000000000000L    # -2.147483648E9

    const-wide v7, 0x41dfffffffc00000L    # 2.147483647E9

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lw3/t1;->H(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_4
    if-ne v0, v1, :cond_10

    return-object p1

    :cond_10
    invoke-static {p1}, Lw3/t1;->G(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_16

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpg-double v5, v0, v3

    if-gez v5, :cond_13

    if-lez v2, :cond_12

    const/4 p0, 0x0

    goto :goto_5

    :cond_12
    const/high16 p0, -0x80000000

    :goto_5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_13
    const-wide v3, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v5, v0, v3

    if-lez v5, :cond_15

    if-lez v2, :cond_14

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_6

    :cond_14
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_6
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_15
    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_7
    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_17
    :goto_8
    sget-object p0, Lw3/u2;->e:Ljava/lang/Class;

    if-ne v0, p0, :cond_18

    goto :goto_9

    :cond_18
    invoke-static {p1}, Lw3/t1;->G(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_9
    return-object p1

    :cond_19
    :goto_a
    sget-object v1, Lw3/u2;->c:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    return-object p1

    :cond_1a
    const-wide/16 v2, 0x0

    const-wide v4, 0x40efffe000000000L    # 65535.0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lw3/t1;->H(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-char p0, p1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method static q(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lw3/t1;->u(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    invoke-static {p1, p0}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_2
    invoke-static {p0, p1}, Lw3/t1;->n(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    :cond_4
    sget-object v0, Lw3/u2;->m:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    instance-of v0, p1, Lw3/f1;

    if-eqz v0, :cond_5

    check-cast p1, Lw3/f1;

    invoke-virtual {p1}, Lw3/f1;->l2()D

    move-result-wide p0

    new-instance v0, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Lw3/y0;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lw3/y0;

    invoke-virtual {v0}, Lw3/y0;->T1()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    long-to-int v5, v2

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    int-to-long v6, v1

    cmp-long v8, v6, v2

    if-gez v8, :cond_6

    :try_start_0
    invoke-virtual {v0, v1, v0}, Lw3/y0;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Lw3/t1;->q(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v1, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Lw3/b0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {p1, p0}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v5

    :cond_7
    instance-of v0, p1, Lw3/b4;

    if-eqz v0, :cond_8

    check-cast p1, Lw3/b4;

    invoke-interface {p1}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of v0, p1, Lw3/x1;

    if-nez v0, :cond_9

    instance-of v0, p1, Lw3/f;

    if-eqz v0, :cond_10

    instance-of v0, p1, Lw3/a3;

    if-eqz v0, :cond_10

    :cond_9
    check-cast p1, Lw3/a3;

    invoke-static {p0, p1}, Lw3/t1;->s(Ljava/lang/Class;Lw3/a3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    instance-of v0, p1, Lw3/b4;

    if-eqz v0, :cond_a

    check-cast p1, Lw3/b4;

    invoke-interface {p1}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p1

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_b

    invoke-static {p1, p0}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_b
    invoke-static {p0, p1}, Lw3/t1;->n(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p1

    :pswitch_2
    instance-of v0, p1, Lw3/b4;

    if-eqz v0, :cond_e

    check-cast p1, Lw3/b4;

    invoke-interface {p1}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p1

    :cond_e
    sget-object v0, Lw3/u2;->d:Ljava/lang/Class;

    if-eq p0, v0, :cond_11

    sget-object v0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p0, v0, :cond_f

    goto :goto_2

    :cond_f
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-static {p1, p0}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_7

    :cond_11
    :goto_2
    return-object p1

    :pswitch_3
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-eq p0, v0, :cond_18

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4

    :cond_12
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_16

    sget-object v0, Lw3/u2;->c:Ljava/lang/Class;

    if-ne p0, v0, :cond_13

    goto :goto_3

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    :cond_14
    sget-object v0, Lw3/u2;->i:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_15
    invoke-static {p0, p1}, Lw3/t1;->n(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_3
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-static {p0, p1}, Lw3/t1;->n(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    sget-object v0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lw3/m;->E(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {p1}, Lw3/t1;->G(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p1}, Lw3/t1;->G(Ljava/lang/Object;)D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1a

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1}, Lw3/t1;->n(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1}, Lw3/t1;->n(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1d

    :cond_1c
    sget-object v0, Lw3/u2;->i:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_1d
    invoke-static {p0, p1}, Lw3/t1;->n(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1f

    sget-object v0, Lw3/u2;->a:Ljava/lang/Class;

    if-eq p0, v0, :cond_1f

    sget-object v0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p0, v0, :cond_1e

    goto :goto_5

    :cond_1e
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    :goto_5
    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1, p0}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_20
    const/4 p0, 0x0

    return-object p0

    :pswitch_7
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    const-string v1, "undefined"

    if-eq p0, v0, :cond_22

    sget-object v0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p0, v0, :cond_21

    goto :goto_6

    :cond_21
    invoke-static {v1, p0}, Lw3/t1;->E(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_7

    :cond_22
    :goto_6
    return-object v1

    :goto_7
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static s(Ljava/lang/Class;Lw3/a3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lw3/a3;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lw3/t1;->h:Ljava/lang/Object;

    invoke-static {v0, p0}, Lw3/v0;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw3/a3;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lw3/o0;->a(Lw3/m;Ljava/lang/Class;Lw3/a3;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lw3/a3;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static t(Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    invoke-static {p0}, Lw3/t1;->u(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x63

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object v0, Lw3/u2;->j:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    instance-of p0, p0, Lw3/y0;

    if-eqz p0, :cond_19

    return v4

    :cond_1
    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    return v3

    :cond_3
    sget-object v0, Lw3/u2;->m:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    instance-of p0, p0, Lw3/f1;

    if-eqz p0, :cond_19

    return v5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of p1, p0, Lw3/i1;

    if-eqz p1, :cond_5

    return v5

    :cond_5
    instance-of p0, p0, Lw3/x1;

    if-eqz p0, :cond_6

    return v4

    :cond_6
    const/16 p0, 0xc

    return p0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p0, :cond_19

    invoke-static {p1}, Lw3/t1;->x(Ljava/lang/Class;)I

    move-result p0

    add-int/2addr p0, v3

    return p0

    :pswitch_1
    instance-of v2, p0, Lw3/b4;

    if-eqz v2, :cond_8

    check-cast p0, Lw3/b4;

    invoke-interface {p0}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p0

    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    sget-object p0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, p0, :cond_a

    return v4

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p0, :cond_19

    const/4 p0, 0x7

    if-ne v0, p0, :cond_b

    goto :goto_0

    :cond_b
    invoke-static {p1}, Lw3/t1;->x(Ljava/lang/Class;)I

    move-result p0

    add-int/lit8 v1, p0, 0x2

    :goto_0
    return v1

    :pswitch_2
    sget-object p0, Lw3/u2;->d:Ljava/lang/Class;

    if-ne p1, p0, :cond_c

    return v5

    :cond_c
    sget-object p0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p1, p0, :cond_d

    return v2

    :cond_d
    sget-object p0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, p0, :cond_19

    return v3

    :pswitch_3
    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    return v5

    :cond_e
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v4

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_10

    return v2

    :cond_10
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p0, :cond_19

    return v3

    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_11

    return v5

    :cond_11
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p0, :cond_19

    invoke-static {p1}, Lw3/t1;->x(Ljava/lang/Class;)I

    move-result p0

    add-int/2addr p0, v5

    return p0

    :cond_12
    sget-object p0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, p0, :cond_13

    const/16 p0, 0x9

    return p0

    :cond_13
    sget-object p0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p1, p0, :cond_14

    const/16 p0, 0xa

    return p0

    :cond_14
    sget-object p0, Lw3/u2;->i:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_19

    return v4

    :pswitch_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_15

    return v5

    :cond_15
    sget-object p0, Lw3/u2;->a:Ljava/lang/Class;

    if-ne p1, p0, :cond_16

    return v4

    :cond_16
    sget-object p0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p1, p0, :cond_17

    return v2

    :cond_17
    sget-object p0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, p0, :cond_19

    return v3

    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-nez p0, :cond_19

    return v5

    :pswitch_7
    sget-object p0, Lw3/u2;->l:Ljava/lang/Class;

    if-eq p1, p0, :cond_18

    sget-object p0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p1, p0, :cond_19

    :cond_18
    return v5

    :cond_19
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static u(Ljava/lang/Object;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    instance-of v0, p0, Lw3/z2;

    const/4 v1, 0x7

    const/4 v2, 0x6

    if-eqz v0, :cond_7

    instance-of v0, p0, Lw3/n1;

    if-eqz v0, :cond_5

    return v1

    :cond_5
    instance-of p0, p0, Lw3/b4;

    if-eqz p0, :cond_6

    return v2

    :cond_6
    const/16 p0, 0x8

    return p0

    :cond_7
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    const/4 p0, 0x5

    return p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_9

    return v1

    :cond_9
    return v2
.end method

.method static x(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const/16 p0, 0x63

    return p0

    :cond_7
    const/16 p0, 0x8

    return p0
.end method


# virtual methods
.method public A(Lw3/z2;)V
    .locals 0

    iput-object p1, p0, Lw3/t1;->a:Lw3/z2;

    return-void
.end method

.method public B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lw3/t1;->e:Lw3/t0;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lw3/t0;->t(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lw3/t1;->a:Lw3/z2;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lw3/t1;->e:Lw3/t0;

    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0}, Lw3/t0;->n(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lw3/t1;->a:Lw3/z2;

    instance-of v0, p2, Lw3/k3;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1, p2, p3}, Lw3/k3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lw3/t1;->e:Lw3/t0;

    iget-object v3, p0, Lw3/t1;->c:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lw3/t0;->r(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lw3/z2;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/t1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lw3/t1;->e:Lw3/t0;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lw3/t0;->t(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lw3/t1;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object p1, Lw3/u2;->a:Ljava/lang/Class;

    :cond_0
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    sget-object p1, Lw3/u2;->i:Ljava/lang/Class;

    :cond_1
    if-eqz p1, :cond_7

    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lw3/u2;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const-string v0, "booleanValue"

    goto :goto_0

    :cond_3
    sget-object v0, Lw3/u2;->i:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const-string v0, "doubleValue"

    :goto_0
    invoke-virtual {p0, v0, p0}, Lw3/t1;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lw3/d0;

    if-eqz v1, :cond_4

    check-cast v0, Lw3/d0;

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p1

    invoke-interface {v0}, Lw3/z2;->i()Lw3/z2;

    move-result-object v1

    sget-object v2, Lw3/u2;->y:[Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p0, v2}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    sget-object v0, Lw3/u2;->i:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lw3/t1;->c:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object p1

    goto :goto_2

    :cond_5
    sget-object p1, Lw3/u2;->v:Ljava/lang/Double;

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "msg.default.value"

    invoke-static {v0, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    iget-object p1, p0, Lw3/t1;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/t1;->e:Lw3/t0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw3/t0;->m(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(Lw3/z2;)V
    .locals 0

    iput-object p1, p0, Lw3/t1;->b:Lw3/z2;

    return-void
.end method

.method public i()Lw3/z2;
    .locals 1

    iget-object v0, p0, Lw3/t1;->b:Lw3/z2;

    return-object v0
.end method

.method public k(Lw3/i3;Lw3/z2;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l()Lw3/z2;
    .locals 2

    iget-object v0, p0, Lw3/t1;->a:Lw3/z2;

    if-nez v0, :cond_0

    iget-object v1, p0, Lw3/t1;->c:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lw3/t1;->b:Lw3/z2;

    invoke-static {v0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v0

    sget-object v1, Lw3/u3$a;->d:Lw3/u3$a;

    invoke-static {v0, v1}, Lw3/u3;->L1(Lw3/z2;Lw3/u3$a;)Lw3/z2;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "JavaObject"

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public r(Ljava/lang/String;Lw3/z2;)Z
    .locals 1

    iget-object p2, p0, Lw3/t1;->e:Lw3/t0;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lw3/t0;->n(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 6

    iget-object p2, p0, Lw3/t1;->a:Lw3/z2;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lw3/t1;->e:Lw3/t0;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lw3/t0;->n(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lw3/t1;->a:Lw3/z2;

    invoke-interface {p2, p1, p2, p3}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lw3/t1;->e:Lw3/t0;

    iget-object v3, p0, Lw3/t1;->c:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lw3/t0;->r(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_1
    return-void
.end method

.method public w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p0, Lw3/t1;->f:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lw3/t1;->e:Lw3/t0;

    iget-object v0, p0, Lw3/t1;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v0, v1}, Lw3/t0;->h(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected y()V
    .locals 4

    iget-object v0, p0, Lw3/t1;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/t1;->d:Ljava/lang/Class;

    :goto_0
    iget-object v1, p0, Lw3/t1;->b:Lw3/z2;

    iget-object v2, p0, Lw3/t1;->d:Ljava/lang/Class;

    iget-boolean v3, p0, Lw3/t1;->g:Z

    invoke-static {v1, v0, v2, v3}, Lw3/t0;->q(Lw3/z2;Ljava/lang/Class;Ljava/lang/Class;Z)Lw3/t0;

    move-result-object v0

    iput-object v0, p0, Lw3/t1;->e:Lw3/t0;

    iget-object v1, p0, Lw3/t1;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lw3/t0;->l(Lw3/z2;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lw3/t1;->f:Ljava/util/Map;

    return-void
.end method

.method public z(Lw3/i3;)V
    .locals 0

    return-void
.end method
