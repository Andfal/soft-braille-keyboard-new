.class public Lw3/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lw3/k0;


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Global"

    sput-object v0, Lw3/k1;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eq v4, v1, :cond_18

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_1

    if-eqz v2, :cond_0

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v2, v5

    move v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    new-array v2, v1, [C

    invoke-virtual {v0, v3, v4, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    move v5, v4

    :cond_2
    add-int/lit8 v6, v4, 0x3

    if-gt v6, v1, :cond_17

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8, v9}, Lw3/k1;->n(CC)I

    move-result v8

    if-ltz v8, :cond_16

    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_4

    :cond_3
    int-to-char v7, v8

    goto/16 :goto_5

    :cond_4
    and-int/lit16 v9, v8, 0xc0

    const/16 v10, 0x80

    if-eq v9, v10, :cond_15

    and-int/lit8 v9, v8, 0x20

    const/high16 v11, 0x10000

    if-nez v9, :cond_5

    and-int/lit8 v8, v8, 0x1f

    const/4 v9, 0x1

    const/16 v12, 0x80

    goto :goto_1

    :cond_5
    and-int/lit8 v9, v8, 0x10

    if-nez v9, :cond_6

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x2

    const/16 v12, 0x800

    goto :goto_1

    :cond_6
    and-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_7

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x3

    const/high16 v12, 0x10000

    goto :goto_1

    :cond_7
    and-int/lit8 v9, v8, 0x4

    if-nez v9, :cond_8

    and-int/lit8 v8, v8, 0x3

    const/4 v9, 0x4

    const/high16 v12, 0x200000

    goto :goto_1

    :cond_8
    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_14

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x5

    const/high16 v12, 0x4000000

    :goto_1
    mul-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v6

    if-gt v13, v1, :cond_13

    const/4 v13, 0x0

    :goto_2
    if-eq v13, v9, :cond_b

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v7, :cond_a

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v15, v6, 0x2

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v14, v15}, Lw3/k1;->n(CC)I

    move-result v14

    if-ltz v14, :cond_9

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v10, :cond_9

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v8, v14

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object v0

    throw v0

    :cond_a
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object v0

    throw v0

    :cond_b
    const v7, 0xd800

    if-lt v8, v12, :cond_e

    if-lt v8, v7, :cond_c

    const v9, 0xdfff

    if-gt v8, v9, :cond_c

    goto :goto_3

    :cond_c
    const v9, 0xfffe

    if-eq v8, v9, :cond_d

    const v9, 0xffff

    if-ne v8, v9, :cond_f

    :cond_d
    const v8, 0xfffd

    goto :goto_4

    :cond_e
    :goto_3
    const v8, 0x7fffffff

    :cond_f
    :goto_4
    if-lt v8, v11, :cond_3

    sub-int/2addr v8, v11

    const v9, 0xfffff

    if-gt v8, v9, :cond_10

    ushr-int/lit8 v9, v8, 0xa

    add-int/2addr v9, v7

    int-to-char v7, v9

    and-int/lit16 v8, v8, 0x3ff

    const v9, 0xdc00

    add-int/2addr v8, v9

    int-to-char v8, v8

    add-int/lit8 v9, v5, 0x1

    aput-char v7, v2, v5

    move v7, v8

    move v5, v9

    goto :goto_5

    :cond_10
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object v0

    throw v0

    :goto_5
    if-eqz p1, :cond_11

    const-string v8, ";/?:@&=+$,#"

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_11

    :goto_6
    if-eq v4, v6, :cond_12

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_6

    :cond_11
    add-int/lit8 v4, v5, 0x1

    aput-char v7, v2, v5

    move v5, v4

    :cond_12
    move v4, v6

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object v0

    throw v0

    :cond_15
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object v0

    throw v0

    :cond_16
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object v0

    throw v0

    :cond_17
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object v0

    throw v0

    :cond_18
    if-nez v2, :cond_19

    goto :goto_7

    :cond_19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    :goto_7
    return-object v0
.end method

.method private static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Lw3/k1;->c(CZ)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v3, 0x6

    new-array v3, v3, [B

    :cond_1
    const v6, 0xdfff

    const v7, 0xdc00

    if-gt v7, v5, :cond_3

    if-le v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const v8, 0xd800

    if-lt v5, v8, :cond_7

    const v9, 0xdbff

    if-ge v9, v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    if-eq v4, v0, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v7, v9, :cond_5

    if-gt v9, v6, :cond_5

    sub-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0xa

    sub-int/2addr v9, v7

    add-int/2addr v5, v9

    const/high16 v6, 0x10000

    add-int/2addr v5, v6

    goto :goto_2

    :cond_5
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Lw3/k1;->o()Lw3/w;

    move-result-object p0

    throw p0

    :cond_7
    :goto_2
    invoke-static {v3, v5}, Lw3/k1;->k([BI)I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    aget-byte v7, v3, v6

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x25

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v8, v7, 0x4

    invoke-static {v8}, Lw3/k1;->l(I)C

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Lw3/k1;->l(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method private static c(CZ)Z
    .locals 2

    const/16 v0, 0x41

    const/4 v1, 0x1

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const-string v0, "-_.!~*\'()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string p1, ";/?:@&=+$,#"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_6
    return v0
.end method

.method public static d(Lw3/m;Lw3/z2;Z)V
    .locals 16

    move-object/from16 v7, p1

    new-instance v8, Lw3/k1;

    invoke-direct {v8}, Lw3/k1;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_0
    const/16 v0, 0xd

    const/4 v11, 0x2

    if-gt v10, v0, :cond_1

    packed-switch v10, :pswitch_data_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "uneval"

    goto :goto_1

    :pswitch_1
    const-string v0, "unescape"

    goto :goto_1

    :pswitch_2
    const-string v0, "parseInt"

    move-object v4, v0

    const/4 v5, 0x2

    goto :goto_2

    :pswitch_3
    const-string v0, "parseFloat"

    goto :goto_1

    :pswitch_4
    const-string v0, "isXMLName"

    goto :goto_1

    :pswitch_5
    const-string v0, "isNaN"

    goto :goto_1

    :pswitch_6
    const-string v0, "isFinite"

    goto :goto_1

    :pswitch_7
    const-string v0, "eval"

    goto :goto_1

    :pswitch_8
    const-string v0, "escape"

    goto :goto_1

    :pswitch_9
    const-string v0, "encodeURIComponent"

    goto :goto_1

    :pswitch_a
    const-string v0, "encodeURI"

    goto :goto_1

    :pswitch_b
    const-string v0, "decodeURIComponent"

    goto :goto_1

    :pswitch_c
    const-string v0, "decodeURI"

    :goto_1
    move-object v4, v0

    const/4 v5, 0x1

    :goto_2
    new-instance v11, Lw3/l0;

    sget-object v2, Lw3/k1;->a:Ljava/lang/Object;

    move-object v0, v11

    move-object v1, v8

    move v3, v10

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lw3/l0;-><init>(Lw3/k0;Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)V

    if-eqz p2, :cond_0

    invoke-virtual {v11}, Lw3/a3;->c1()V

    :cond_0
    invoke-virtual {v11}, Lw3/l0;->c2()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "NaN"

    sget-object v1, Lw3/u2;->t:Ljava/lang/Double;

    const/4 v2, 0x7

    invoke-static {v7, v0, v1, v2}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "Infinity"

    invoke-static {v7, v1, v0, v2}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "undefined"

    sget-object v1, Lw3/w3;->a:Ljava/lang/Object;

    invoke-static {v7, v0, v1, v2}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {}, Lw3/u3$b;->values()[Lw3/u3$b;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v10, :cond_4

    aget-object v0, v9, v12

    sget-object v1, Lw3/u3$b;->a:Lw3/u3$b;

    if-ne v0, v1, :cond_2

    move-object/from16 v13, p0

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lw3/u3$a;->h:Lw3/u3$a;

    sget-object v1, Lw3/u2;->y:[Ljava/lang/Object;

    move-object/from16 v13, p0

    invoke-static {v13, v7, v0, v1}, Lw3/u2;->X0(Lw3/m;Lw3/z2;Lw3/u3$a;[Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lw3/a3;

    const-string v0, "name"

    invoke-virtual {v14, v0, v14, v4}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, ""

    invoke-virtual {v14, v0, v14, v1}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    new-instance v15, Lw3/l0;

    sget-object v2, Lw3/k1;->a:Ljava/lang/Object;

    const/16 v3, 0xe

    const/4 v5, 0x1

    move-object v0, v15

    move-object v1, v8

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lw3/l0;-><init>(Lw3/k0;Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)V

    invoke-virtual {v15, v14}, Lw3/l0;->g2(Lw3/z2;)V

    const-string v0, "constructor"

    invoke-virtual {v14, v0, v14, v15}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    invoke-virtual {v14, v0, v11}, Lw3/a3;->d1(Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    invoke-virtual {v14}, Lw3/a3;->c1()V

    invoke-virtual {v15}, Lw3/a3;->c1()V

    :cond_3
    invoke-virtual {v15}, Lw3/l0;->c2()V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static e(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lw3/l0;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/l0;

    sget-object v0, Lw3/k1;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw3/l0;->h2()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object p0, p0, v3

    invoke-static {p0}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    double-to-int p0, v4

    int-to-double v6, p0

    cmpl-double v2, v6, v4

    if-nez v2, :cond_0

    and-int/lit8 v2, p0, -0x8

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "msg.bad.esc.mask"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x7

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-eq v0, v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eqz p0, :cond_6

    const/16 v7, 0x30

    if-lt v5, v7, :cond_2

    const/16 v7, 0x39

    if-le v5, v7, :cond_5

    :cond_2
    const/16 v7, 0x41

    if-lt v5, v7, :cond_3

    const/16 v7, 0x5a

    if-le v5, v7, :cond_5

    :cond_3
    const/16 v7, 0x61

    if-lt v5, v7, :cond_4

    const/16 v7, 0x7a

    if-le v5, v7, :cond_5

    :cond_4
    const/16 v7, 0x40

    if-eq v5, v7, :cond_5

    const/16 v7, 0x2a

    if-eq v5, v7, :cond_5

    const/16 v7, 0x5f

    if-eq v5, v7, :cond_5

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_5

    const/16 v7, 0x2e

    if-eq v5, v7, :cond_5

    and-int/lit8 v7, p0, 0x4

    if-eqz v7, :cond_6

    const/16 v7, 0x2f

    if-eq v5, v7, :cond_5

    if-ne v5, v6, :cond_6

    :cond_5
    if-eqz v4, :cond_b

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x3

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_7
    const/16 v7, 0x100

    const/16 v8, 0x25

    const/4 v9, 0x4

    if-ge v5, v7, :cond_9

    const/16 v7, 0x20

    const/4 v10, 0x2

    if-ne v5, v7, :cond_8

    if-ne p0, v10, :cond_8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x75

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x4

    :goto_2
    sub-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0x4

    :goto_3
    if-ltz v10, :cond_b

    shr-int v6, v5, v10

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0xa

    if-ge v6, v7, :cond_a

    add-int/lit8 v6, v6, 0x30

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v6, 0x37

    :goto_4
    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, -0x4

    goto :goto_3

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    return-object v1
.end method

.method private static g(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v2

    const-string v4, "eval code"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v2

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lw3/u2;->P(Lw3/m;Lw3/z2;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static h([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lw3/u2;->t:Ljava/lang/Double;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ne v3, v2, :cond_1

    sget-object p0, Lw3/u2;->t:Ljava/lang/Double;

    return-object p0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lw3/u2;->G0(I)Z

    move-result v5

    if-nez v5, :cond_12

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eq v4, v5, :cond_3

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    move v7, v3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v3, 0x1

    if-ne v4, v2, :cond_4

    sget-object p0, Lw3/u2;->t:Ljava/lang/Double;

    return-object p0

    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v12, v7

    move v7, v4

    move v4, v12

    :goto_2
    const/16 v8, 0x49

    if-ne v4, v8, :cond_7

    add-int/lit8 v1, v7, 0x8

    if-gt v1, v2, :cond_6

    const-string v1, "Infinity"

    const/16 v2, 0x8

    invoke-virtual {p0, v7, v1, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v6, :cond_5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_3

    :cond_5
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_3
    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lw3/u2;->t:Ljava/lang/Double;

    return-object p0

    :cond_7
    const/4 v4, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_4
    if-ge v7, v2, :cond_10

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v5, :cond_d

    const/16 v11, 0x45

    if-eq v10, v11, :cond_a

    const/16 v11, 0x65

    if-eq v10, v11, :cond_a

    if-eq v10, v6, :cond_d

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_8

    packed-switch v10, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-eq v8, v4, :cond_f

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    if-eq v9, v4, :cond_9

    goto :goto_6

    :cond_9
    move v9, v7

    goto :goto_5

    :cond_a
    if-eq v8, v4, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v2, -0x1

    if-ne v7, v10, :cond_c

    goto :goto_6

    :cond_c
    move v8, v7

    goto :goto_5

    :cond_d
    add-int/lit8 v10, v7, -0x1

    if-eq v8, v10, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v10, v2, -0x1

    if-ne v7, v10, :cond_f

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_10
    :goto_6
    if-eq v8, v4, :cond_11

    if-nez v0, :cond_11

    goto :goto_7

    :cond_11
    move v8, v7

    :goto_7
    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lw3/u2;->t:Ljava/lang/Double;

    return-object p0

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lw3/u2;->S1([Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lw3/u2;->t:Ljava/lang/Double;

    return-object p0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lw3/u2;->G0(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_1

    :goto_0
    const/16 v6, 0x2b

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    const/16 v5, 0x58

    const/16 v6, 0x78

    const/16 v7, 0x10

    const/4 v8, -0x1

    const/16 v9, 0x30

    if-nez p0, :cond_6

    const/4 p0, -0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x2

    if-lt p0, v10, :cond_10

    const/16 v10, 0x24

    if-le p0, v10, :cond_7

    goto :goto_4

    :cond_7
    if-ne p0, v7, :cond_9

    sub-int v10, v3, v4

    if-le v10, v2, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_9

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v6, :cond_8

    if-ne v10, v5, :cond_9

    :cond_8
    add-int/lit8 v4, v4, 0x2

    :cond_9
    :goto_1
    if-ne p0, v8, :cond_e

    sub-int/2addr v3, v4

    if-le v3, v2, :cond_d

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v9, :cond_d

    add-int/lit8 p0, v4, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_c

    if-ne v2, v5, :cond_a

    goto :goto_2

    :cond_a
    if-gt v9, v2, :cond_d

    const/16 v3, 0x39

    if-gt v2, v3, :cond_d

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lw3/m;->v()I

    move-result v2

    const/16 v3, 0x96

    if-ge v2, v3, :cond_d

    :cond_b
    const/16 v7, 0x8

    move v4, p0

    goto :goto_3

    :cond_c
    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_d
    const/16 v7, 0xa

    goto :goto_3

    :cond_e
    move v7, p0

    :goto_3
    invoke-static {v1, v4, v7}, Lw3/u2;->K1(Ljava/lang/String;II)D

    move-result-wide v1

    if-eqz v0, :cond_f

    neg-double v1, v1

    :cond_f
    invoke-static {v1, v2}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_4
    sget-object p0, Lw3/u2;->t:Ljava/lang/Double;

    return-object p0
.end method

.method private static j([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    move v4, v2

    :goto_0
    if-eq v2, v3, :cond_3

    aget-char v5, p0, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v5, v1, :cond_2

    if-eq v2, v3, :cond_2

    aget-char v6, p0, v2

    const/16 v7, 0x75

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x5

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v2, 0x2

    move v6, v2

    :goto_1
    if-gt v7, v3, :cond_2

    const/4 v8, 0x0

    :goto_2
    if-eq v6, v7, :cond_1

    aget-char v9, p0, v6

    invoke-static {v9, v8}, Lw3/v0;->h(II)I

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    if-ltz v8, :cond_2

    int-to-char v5, v8

    move v2, v7

    :cond_2
    aput-char v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0, v4}, Ljava/lang/String;-><init>([CII)V

    move-object p0, v1

    :cond_4
    return-object p0
.end method

.method private static k([BI)I
    .locals 5

    and-int/lit8 v0, p1, -0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    goto :goto_2

    :cond_0
    ushr-int/lit8 v0, p1, 0xb

    const/4 v3, 0x2

    :goto_0
    if-eqz v0, :cond_1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    and-int/lit8 v4, p1, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    ushr-int/lit8 p1, p1, 0x6

    goto :goto_1

    :cond_2
    rsub-int/lit8 v0, v3, 0x8

    shl-int v0, v2, v0

    rsub-int v0, v0, 0x100

    add-int/2addr v0, p1

    int-to-byte p1, v0

    aput-byte p1, p0, v1

    move v2, v3

    :goto_2
    return v2
.end method

.method private static l(I)C
    .locals 1

    shr-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x41

    :goto_0
    int-to-char p0, p0

    return p0
.end method

.method private static m(C)I
    .locals 2

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v1, 0x46

    if-gt p0, v1, :cond_0

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static n(CC)I
    .locals 0

    invoke-static {p0}, Lw3/k1;->m(C)I

    move-result p0

    invoke-static {p1}, Lw3/k1;->m(C)I

    move-result p1

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static o()Lw3/w;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "msg.bad.uri"

    invoke-static {v1, v0}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "URIError"

    invoke-static {v1, v0}, Lw3/u2;->l(Ljava/lang/String;Ljava/lang/String;)Lw3/w;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p4, Lw3/k1;->a:Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-static {p2, p3, p1, p5}, Lw3/h1;->O1(Lw3/m;Lw3/z2;Lw3/l0;[Ljava/lang/Object;)Lw3/h1;

    move-result-object p1

    return-object p1

    :pswitch_1
    array-length p1, p5

    if-eqz p1, :cond_0

    aget-object p1, p5, v1

    goto :goto_0

    :cond_0
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-static {p2, p3, p1}, Lw3/u2;->x2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p5}, Lw3/k1;->j([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p5}, Lw3/k1;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p5}, Lw3/k1;->h([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    array-length p1, p5

    if-nez p1, :cond_1

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    aget-object p1, p5, v1

    :goto_1
    invoke-static {p3}, Lc4/a;->c(Lw3/z2;)Lc4/a;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lc4/a;->e(Lw3/m;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_6
    array-length p1, p5

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    aget-object p1, p5, v1

    invoke-static {p1}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    :goto_2
    invoke-static {v0}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_7
    array-length p1, p5

    if-ge p1, v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    aget-object p1, p5, v1

    invoke-static {p1}, Lw3/w1;->O1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p2, p3, p5}, Lw3/k1;->g(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p5}, Lw3/k1;->f([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p5, v1}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    if-ne p4, p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-static {p1, v0}, Lw3/k1;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p5, v1}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    if-ne p4, v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {p1, v0}, Lw3/k1;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_5
    invoke-virtual {p1}, Lw3/l0;->i2()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
