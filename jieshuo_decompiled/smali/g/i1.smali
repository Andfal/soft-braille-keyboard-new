.class public Lg/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/j1;


# static fields
.field public static final a:Lg/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/i1;

    invoke-direct {v0}, Lg/i1;-><init>()V

    sput-object v0, Lg/i1;->a:Lg/i1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    iget-object v0, p1, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Byte;

    const-class v4, Ljava/lang/Short;

    const-class v5, Ljava/lang/Double;

    const/16 v6, 0x10

    if-ne v1, v2, :cond_9

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_8

    if-ne p2, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v0}, Lf/c;->e()J

    move-result-wide v1

    invoke-interface {v0, v6}, Lf/c;->x(I)V

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string p3, "short overflow : "

    if-eq p2, p1, :cond_6

    if-ne p2, v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_4

    if-ne p2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-wide/32 p1, -0x80000000

    cmp-long p3, v1, p1

    if-ltz p3, :cond_3

    const-wide/32 p1, 0x7fffffff

    cmp-long p3, v1, p1

    if-gtz p3, :cond_3

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const-wide/16 p1, 0x7f

    cmp-long v0, v1, p1

    if-gtz v0, :cond_5

    const-wide/16 p1, -0x80

    cmp-long v0, v1, p1

    if-ltz v0, :cond_5

    long-to-int p1, v1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    const-wide/16 p1, 0x7fff

    cmp-long v0, v1, p1

    if-gtz v0, :cond_7

    const-wide/16 p1, -0x8000

    cmp-long v0, v1, p1

    if-ltz v0, :cond_7

    long-to-int p1, v1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-interface {v0}, Lf/c;->h0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v6}, Lf/c;->x(I)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_f

    if-ne p2, v5, :cond_a

    goto :goto_5

    :cond_a
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_e

    if-ne p2, v4, :cond_b

    goto :goto_4

    :cond_b
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_d

    if-ne p2, v3, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {v0}, Lf/c;->y()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-interface {v0, v6}, Lf/c;->x(I)V

    return-object p1

    :cond_d
    :goto_3
    invoke-interface {v0}, Lf/c;->y()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-interface {v0, v6}, Lf/c;->x(I)V

    invoke-static {p1}, Ll/l;->e(Ljava/math/BigDecimal;)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_4
    invoke-interface {v0}, Lf/c;->y()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-interface {v0, v6}, Lf/c;->x(I)V

    invoke-static {p1}, Ll/l;->L0(Ljava/math/BigDecimal;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_5
    invoke-interface {v0}, Lf/c;->h0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v6}, Lf/c;->x(I)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0x12

    const/4 v6, 0x0

    if-ne v1, v2, :cond_13

    const-string v1, "NaN"

    invoke-interface {v0}, Lf/c;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Lf/c;->nextToken()V

    if-ne p2, v5, :cond_11

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_6

    :cond_11
    const-class p1, Ljava/lang/Float;

    if-ne p2, p1, :cond_12

    const/high16 p1, 0x7fc00000    # Float.NaN

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :cond_12
    :goto_6
    return-object v6

    :cond_13
    invoke-virtual {p1}, Lf/a;->H()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    return-object v6

    :cond_14
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1a

    if-ne p2, v5, :cond_15

    goto :goto_9

    :cond_15
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_19

    if-ne p2, v4, :cond_16

    goto :goto_8

    :cond_16
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_18

    if-ne p2, v3, :cond_17

    goto :goto_7

    :cond_17
    invoke-static {p1}, Ll/l;->i(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_18
    :goto_7
    :try_start_0
    invoke-static {p1}, Ll/l;->l(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseByte error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_19
    :goto_8
    :try_start_1
    invoke-static {p1}, Ll/l;->x(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseShort error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1a
    :goto_9
    :try_start_2
    invoke-static {p1}, Ll/l;->q(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance p2, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseDouble error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
