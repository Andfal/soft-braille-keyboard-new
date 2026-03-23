.class final Lw3/v1;
.super Lw3/n0;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/Object;

.field private static final k:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Math"

    sput-object v0, Lw3/v1;->j:Ljava/lang/Object;

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lw3/v1;->k:Ljava/lang/Double;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    return-void
.end method

.method static I1(Lw3/z2;Z)V
    .locals 2

    new-instance v0, Lw3/v1;

    invoke-direct {v0}, Lw3/v1;-><init>()V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lw3/n0;->h1(I)V

    invoke-static {p0}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/a3;->A(Lw3/z2;)V

    invoke-virtual {v0, p0}, Lw3/a3;->h(Lw3/z2;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lw3/a3;->c1()V

    :cond_0
    const-string p1, "Math"

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static J1([Ljava/lang/Object;)D
    .locals 10

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v6, p0, v3

    invoke-static {v6}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    mul-double v6, v6, v6

    add-double/2addr v0, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_4
    if-eqz v5, :cond_5

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static K1([Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0, v0}, Lw3/u2;->S1([Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lw3/u2;->S1([Ljava/lang/Object;I)I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method private static L1(DD)D
    .locals 21

    move-wide/from16 v0, p2

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v15, v0

    goto/16 :goto_4

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_1

    move-wide v15, v2

    goto/16 :goto_4

    :cond_1
    const-wide/high16 v7, -0x8000000000000000L

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x1

    const-wide/high16 v13, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v15, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v17, p0, v4

    if-nez v17, :cond_6

    div-double v2, v2, p0

    cmpl-double v17, v2, v4

    if-lez v17, :cond_2

    if-lez v6, :cond_10

    goto/16 :goto_3

    :cond_2
    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v18, v4, v0

    if-nez v18, :cond_4

    and-long v0, v2, v11

    cmp-long v2, v0, v9

    if-eqz v2, :cond_4

    if-lez v6, :cond_3

    goto :goto_0

    :cond_3
    move-wide v7, v13

    :goto_0
    move-wide v4, v7

    goto/16 :goto_3

    :cond_4
    if-lez v6, :cond_5

    const-wide/16 v4, 0x0

    goto/16 :goto_3

    :cond_5
    move-wide v4, v15

    goto/16 :goto_3

    :cond_6
    invoke-static/range {p0 .. p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_f

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    cmpl-double v20, v0, v15

    if-nez v20, :cond_8

    cmpg-double v0, p0, v18

    if-ltz v0, :cond_10

    cmpg-double v0, v2, p0

    if-gez v0, :cond_7

    goto :goto_4

    :cond_7
    cmpg-double v0, v18, p0

    if-gez v0, :cond_f

    cmpg-double v0, p0, v2

    if-gez v0, :cond_f

    goto :goto_1

    :cond_8
    cmpl-double v20, v0, v13

    if-nez v20, :cond_b

    cmpg-double v0, p0, v18

    if-ltz v0, :cond_a

    cmpg-double v0, v2, p0

    if-gez v0, :cond_9

    goto :goto_1

    :cond_9
    cmpg-double v0, v18, p0

    if-gez v0, :cond_f

    cmpg-double v0, p0, v2

    if-gez v0, :cond_f

    goto :goto_4

    :cond_a
    :goto_1
    const-wide/16 v15, 0x0

    goto :goto_4

    :cond_b
    cmpl-double v2, p0, v15

    if-nez v2, :cond_c

    if-lez v6, :cond_a

    goto :goto_4

    :cond_c
    cmpl-double v2, p0, v13

    if-nez v2, :cond_f

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v18, v4, v0

    if-nez v18, :cond_e

    and-long v0, v2, v11

    cmp-long v2, v0, v9

    if-eqz v2, :cond_e

    if-lez v6, :cond_d

    goto :goto_2

    :cond_d
    move-wide v13, v7

    :goto_2
    move-wide v15, v13

    goto :goto_4

    :cond_e
    if-lez v6, :cond_a

    goto :goto_4

    :cond_f
    :goto_3
    move-wide v15, v4

    :cond_10
    :goto_4
    return-wide v15
.end method

.method private static M1(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Math"

    return-object v0
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "trunc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v24, 0x2b

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "round"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v24, 0x2a

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "log1p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x29

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "log10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v24, 0x28

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "hypot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x27

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "floor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v24, 0x26

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "expm1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x25

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "clz32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x24

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "atanh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v24, 0x23

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "atan2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v24, 0x22

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "asinh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x21

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "acosh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x20

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "SQRT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0x1f

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "LOG2E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0x1e

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "tanh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0x1d

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "sqrt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0x1c

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "sinh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v24, 0x1b

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "sign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v24, 0x1a

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "log2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x19

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "imul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v24, 0x18

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "cosh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v24, 0x17

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "ceil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v24, 0x16

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "cbrt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v24, 0x15

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "atan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v24, 0x14

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "asin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v24, 0x13

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "acos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v24, 0x12

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "LN10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v24, 0x11

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "tan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v24, 0x10

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "sin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v24, 0xf

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "pow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v24, 0xe

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v24, 0xd

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v24, 0xc

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v24, 0xb

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "exp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v24, 0xa

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "cos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v24, 0x9

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "abs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v24, 0x8

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "LN2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_0

    :cond_24
    const/16 v24, 0x7

    goto :goto_0

    :sswitch_25
    const-string v1, "PI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_0

    :cond_25
    const/16 v24, 0x6

    goto :goto_0

    :sswitch_26
    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_0

    :cond_26
    const/16 v24, 0x5

    goto :goto_0

    :sswitch_27
    const-string v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_0

    :cond_27
    const/16 v24, 0x4

    goto :goto_0

    :sswitch_28
    const-string v1, "SQRT1_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_0

    :cond_28
    const/16 v24, 0x3

    goto :goto_0

    :sswitch_29
    const-string v1, "fround"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_0

    :cond_29
    const/16 v24, 0x2

    goto :goto_0

    :sswitch_2a
    const-string v1, "toSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_0

    :cond_2a
    const/16 v24, 0x1

    goto :goto_0

    :sswitch_2b
    const-string v1, "LOG10E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_0

    :cond_2b
    const/16 v24, 0x0

    :goto_0
    packed-switch v24, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :pswitch_0
    const/16 v2, 0x1d

    goto/16 :goto_1

    :pswitch_1
    const/16 v2, 0x10

    goto/16 :goto_1

    :pswitch_2
    const/16 v2, 0x18

    goto/16 :goto_1

    :pswitch_3
    const/16 v2, 0x19

    goto/16 :goto_1

    :pswitch_4
    const/16 v2, 0x17

    goto/16 :goto_1

    :pswitch_5
    const/16 v2, 0xa

    goto/16 :goto_1

    :pswitch_6
    const/16 v2, 0x16

    goto/16 :goto_1

    :pswitch_7
    const/16 v2, 0x24

    goto/16 :goto_1

    :pswitch_8
    const/16 v2, 0x20

    goto/16 :goto_1

    :pswitch_9
    const/4 v2, 0x6

    goto/16 :goto_1

    :pswitch_a
    const/16 v2, 0x1f

    goto/16 :goto_1

    :pswitch_b
    const/16 v2, 0x1e

    goto/16 :goto_1

    :pswitch_c
    const/16 v2, 0x2c

    goto/16 :goto_1

    :pswitch_d
    const/16 v2, 0x29

    goto/16 :goto_1

    :pswitch_e
    const/16 v2, 0x1b

    goto/16 :goto_1

    :pswitch_f
    const/16 v2, 0x12

    goto/16 :goto_1

    :pswitch_10
    const/16 v2, 0x1a

    goto :goto_1

    :pswitch_11
    const/16 v2, 0x21

    goto :goto_1

    :pswitch_12
    const/16 v2, 0x22

    goto :goto_1

    :pswitch_13
    const/16 v2, 0x1c

    goto :goto_1

    :pswitch_14
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_15
    const/16 v2, 0x14

    goto :goto_1

    :pswitch_16
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_17
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_18
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_19
    const/16 v2, 0x27

    goto :goto_1

    :pswitch_1a
    const/16 v2, 0x13

    goto :goto_1

    :pswitch_1b
    const/16 v2, 0x11

    goto :goto_1

    :pswitch_1c
    const/16 v2, 0xe

    goto :goto_1

    :pswitch_1d
    const/16 v2, 0xd

    goto :goto_1

    :pswitch_1e
    const/16 v2, 0xc

    goto :goto_1

    :pswitch_1f
    const/16 v2, 0xb

    goto :goto_1

    :pswitch_20
    const/16 v2, 0x9

    goto :goto_1

    :pswitch_21
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_22
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_23
    const/16 v2, 0x28

    goto :goto_1

    :pswitch_24
    const/16 v2, 0x26

    goto :goto_1

    :pswitch_25
    const/16 v2, 0x25

    goto :goto_1

    :pswitch_26
    const/16 v2, 0xf

    goto :goto_1

    :pswitch_27
    const/16 v2, 0x2b

    goto :goto_1

    :pswitch_28
    const/16 v2, 0x23

    goto :goto_1

    :pswitch_29
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2a
    const/16 v2, 0x2a

    :goto_1
    :pswitch_2b
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d56b9e -> :sswitch_2b
        -0x6a2ea58a -> :sswitch_2a
        -0x4b76ff18 -> :sswitch_29
        -0x4a77c57c -> :sswitch_28
        -0x37ed1b3d -> :sswitch_27
        0x45 -> :sswitch_26
        0x9f9 -> :sswitch_25
        0x126f0 -> :sswitch_24
        0x17872 -> :sswitch_23
        0x18187 -> :sswitch_22
        0x18a1d -> :sswitch_21
        0x1a344 -> :sswitch_20
        0x1a564 -> :sswitch_1f
        0x1a652 -> :sswitch_1e
        0x1b258 -> :sswitch_1d
        0x1bcd8 -> :sswitch_1c
        0x1bfa1 -> :sswitch_1b
        0x23b721 -> :sswitch_1a
        0x2d9986 -> :sswitch_19
        0x2dd4d7 -> :sswitch_18
        0x2dd7a0 -> :sswitch_17
        0x2e7ee1 -> :sswitch_16
        0x2e8905 -> :sswitch_15
        0x2eafc1 -> :sswitch_14
        0x3162bb -> :sswitch_13
        0x32c56e -> :sswitch_12
        0x35ddbd -> :sswitch_11
        0x35de90 -> :sswitch_10
        0x35fd20 -> :sswitch_f
        0x3634e7 -> :sswitch_e
        0x453f477 -> :sswitch_d
        0x4b7af12 -> :sswitch_c
        0x58597a2 -> :sswitch_b
        0x58cc671 -> :sswitch_a
        0x58d1c92 -> :sswitch_9
        0x58d1cc8 -> :sswitch_8
        0x5a5ff50 -> :sswitch_7
        0x5c78441 -> :sswitch_6
        0x5d0240c -> :sswitch_5
        0x5f23fa4 -> :sswitch_4
        0x625e863 -> :sswitch_3
        0x625e8a3 -> :sswitch_2
        0x67ab18e -> :sswitch_1
        0x6983dac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_2b
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p5

    sget-object v1, Lw3/v1;->j:Ljava/lang/Object;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lw3/l0;->h2()I

    move-result v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x3ff71547652b82feL    # 1.4426950408889634

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v12, 0x1

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/16 v17, 0x0

    const/4 v13, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v6, v0, v17

    if-eqz v6, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lw3/u2;->l2(D)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    sget-object v0, Lw3/v1;->k:Ljava/lang/Double;

    return-object v0

    :cond_2
    ushr-long/2addr v0, v13

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    sget-object v0, Lw3/v1;->k:Ljava/lang/Double;

    return-object v0

    :pswitch_1
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v13, v0

    goto/16 :goto_6

    :pswitch_2
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpg-double v2, v0, v17

    if-gez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    :cond_5
    :goto_1
    move-wide v13, v0

    goto/16 :goto_6

    :pswitch_3
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_8

    cmpl-double v2, v0, v17

    if-nez v2, :cond_7

    div-double/2addr v15, v0

    cmpl-double v0, v15, v17

    if-lez v0, :cond_6

    sget-object v0, Lw3/u2;->v:Ljava/lang/Double;

    return-object v0

    :cond_6
    sget-object v0, Lw3/u2;->w:Ljava/lang/Double;

    return-object v0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_8
    sget-object v0, Lw3/u2;->t:Ljava/lang/Double;

    return-object v0

    :pswitch_4
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_b

    cmpg-double v2, v8, v0

    if-gtz v2, :cond_b

    cmpg-double v2, v0, v15

    if-gtz v2, :cond_b

    cmpl-double v2, v0, v17

    if-nez v2, :cond_a

    div-double/2addr v15, v0

    cmpl-double v0, v15, v17

    if-lez v0, :cond_9

    sget-object v0, Lw3/u2;->v:Ljava/lang/Double;

    return-object v0

    :cond_9
    sget-object v0, Lw3/u2;->w:Ljava/lang/Double;

    return-object v0

    :cond_a
    add-double v2, v0, v15

    sub-double/2addr v0, v15

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Lw3/u2;->t:Ljava/lang/Double;

    return-object v0

    :pswitch_5
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_f

    cmpl-double v2, v0, v17

    if-nez v2, :cond_e

    div-double/2addr v15, v0

    cmpl-double v0, v15, v17

    if-lez v0, :cond_d

    sget-object v0, Lw3/u2;->v:Ljava/lang/Double;

    return-object v0

    :cond_d
    sget-object v0, Lw3/u2;->w:Ljava/lang/Double;

    return-object v0

    :cond_e
    mul-double v2, v0, v0

    add-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_f
    sget-object v0, Lw3/u2;->t:Ljava/lang/Double;

    return-object v0

    :pswitch_6
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_10

    mul-double v2, v0, v0

    sub-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_10
    sget-object v0, Lw3/u2;->t:Ljava/lang/Double;

    return-object v0

    :pswitch_7
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lw3/v1;->M1(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_8
    invoke-static/range {p5 .. p5}, Lw3/v1;->K1([Ljava/lang/Object;)I

    move-result v0

    int-to-double v13, v0

    goto/16 :goto_6

    :pswitch_9
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_a
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_b
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_c
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_d
    invoke-static/range {p5 .. p5}, Lw3/v1;->J1([Ljava/lang/Object;)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_e
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_f
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_10
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_11
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_12
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_13
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_5

    :cond_11
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto/16 :goto_1

    :pswitch_14
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    long-to-double v0, v0

    goto/16 :goto_1

    :cond_12
    cmpg-double v0, v13, v17

    if-gez v0, :cond_13

    sget-wide v0, Lw3/u2;->u:D

    goto/16 :goto_1

    :cond_13
    cmpl-double v0, v13, v17

    if-eqz v0, :cond_1e

    :goto_2
    move-wide/from16 v13, v17

    goto/16 :goto_6

    :pswitch_15
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_16
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v1

    invoke-static {v0, v12}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lw3/v1;->L1(DD)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_17
    const/16 v2, 0xc

    if-ne v1, v2, :cond_14

    goto :goto_3

    :cond_14
    move-wide v6, v10

    :goto_3
    array-length v3, v0

    if-eq v13, v3, :cond_16

    aget-object v3, v0, v13

    invoke-static {v3}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v3

    if-ne v1, v2, :cond_15

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_4

    :cond_15
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    :goto_4
    move-wide v6, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_16
    move-wide v13, v6

    goto/16 :goto_6

    :pswitch_18
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpg-double v2, v0, v17

    if-gez v2, :cond_17

    goto/16 :goto_5

    :cond_17
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto/16 :goto_1

    :pswitch_19
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    goto/16 :goto_6

    :pswitch_1a
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v10

    if-nez v2, :cond_18

    goto/16 :goto_1

    :cond_18
    cmpl-double v2, v0, v6

    if-nez v2, :cond_19

    goto :goto_2

    :cond_19
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    goto/16 :goto_1

    :pswitch_1b
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_5

    :cond_1a
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    goto :goto_6

    :pswitch_1d
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v1

    invoke-static {v0, v12}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v13

    goto :goto_6

    :pswitch_1e
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    goto :goto_6

    :pswitch_1f
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1c

    cmpg-double v0, v8, v2

    if-gtz v0, :cond_1c

    cmpg-double v0, v2, v15

    if-gtz v0, :cond_1c

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1b

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    goto/16 :goto_1

    :cond_1b
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    goto/16 :goto_1

    :cond_1c
    :goto_5
    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    goto :goto_6

    :pswitch_20
    invoke-static {v0, v13}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v17

    if-nez v2, :cond_1d

    goto/16 :goto_2

    :cond_1d
    cmpg-double v2, v0, v17

    if-gez v2, :cond_5

    neg-double v0, v0

    goto/16 :goto_1

    :cond_1e
    :goto_6
    invoke-static {v13, v14}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_21
    const-string v0, "Math"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method protected y1(I)V
    .locals 3

    const/16 v0, 0x24

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "clz32"

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "fround"

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "log2"

    goto/16 :goto_2

    :pswitch_3
    const-string v0, "sign"

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "atanh"

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "asinh"

    goto/16 :goto_2

    :pswitch_6
    const-string v0, "acosh"

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "trunc"

    goto/16 :goto_2

    :pswitch_8
    const-string v0, "imul"

    goto :goto_0

    :pswitch_9
    const-string v0, "tanh"

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "sinh"

    goto/16 :goto_2

    :pswitch_b
    const-string v0, "log10"

    goto :goto_2

    :pswitch_c
    const-string v0, "log1p"

    goto :goto_2

    :pswitch_d
    const-string v0, "hypot"

    goto :goto_0

    :pswitch_e
    const-string v0, "expm1"

    goto :goto_2

    :pswitch_f
    const-string v0, "cosh"

    goto :goto_2

    :pswitch_10
    const-string v0, "cbrt"

    goto :goto_2

    :pswitch_11
    const-string v0, "tan"

    goto :goto_2

    :pswitch_12
    const-string v0, "sqrt"

    goto :goto_2

    :pswitch_13
    const-string v0, "sin"

    goto :goto_2

    :pswitch_14
    const-string v0, "round"

    goto :goto_2

    :pswitch_15
    const-string v1, "random"

    goto :goto_1

    :pswitch_16
    const-string v0, "pow"

    goto :goto_0

    :pswitch_17
    const-string v0, "min"

    goto :goto_0

    :pswitch_18
    const-string v0, "max"

    goto :goto_0

    :pswitch_19
    const-string v0, "log"

    goto :goto_2

    :pswitch_1a
    const-string v0, "floor"

    goto :goto_2

    :pswitch_1b
    const-string v0, "exp"

    goto :goto_2

    :pswitch_1c
    const-string v0, "cos"

    goto :goto_2

    :pswitch_1d
    const-string v0, "ceil"

    goto :goto_2

    :pswitch_1e
    const-string v0, "atan2"

    :goto_0
    const/4 v2, 0x2

    goto :goto_2

    :pswitch_1f
    const-string v0, "atan"

    goto :goto_2

    :pswitch_20
    const-string v0, "asin"

    goto :goto_2

    :pswitch_21
    const-string v0, "acos"

    goto :goto_2

    :pswitch_22
    const-string v0, "abs"

    goto :goto_2

    :pswitch_23
    const-string v1, "toSource"

    :goto_1
    move-object v0, v1

    const/4 v2, 0x0

    :goto_2
    sget-object v1, Lw3/v1;->j:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    goto :goto_4

    :cond_0
    packed-switch p1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    const-wide v0, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    const-string v2, "SQRT2"

    goto :goto_3

    :pswitch_25
    const-wide v0, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    const-string v2, "SQRT1_2"

    goto :goto_3

    :pswitch_26
    const-wide v0, 0x3fdbcb7b1526e50eL    # 0.4342944819032518

    const-string v2, "LOG10E"

    goto :goto_3

    :pswitch_27
    const-wide v0, 0x3ff71547652b82feL    # 1.4426950408889634

    const-string v2, "LOG2E"

    goto :goto_3

    :pswitch_28
    const-wide v0, 0x3fe62e42fefa39efL    # 0.6931471805599453

    const-string v2, "LN2"

    goto :goto_3

    :pswitch_29
    const-wide v0, 0x40026bb1bbb55516L    # 2.302585092994046

    const-string v2, "LN10"

    goto :goto_3

    :pswitch_2a
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-string v2, "PI"

    goto :goto_3

    :pswitch_2b
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    const-string v2, "E"

    :goto_3
    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v2, v0, v1}, Lw3/n0;->C1(ILjava/lang/String;Ljava/lang/Object;I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method
