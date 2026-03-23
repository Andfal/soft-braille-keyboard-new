.class final Lw3/w1;
.super Lw3/n0;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/Object;


# instance fields
.field private j:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Number"

    sput-object v0, Lw3/w1;->k:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    iput-wide p1, p0, Lw3/w1;->j:D

    return-void
.end method

.method private static I1(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    array-length p0, p1

    if-eqz p0, :cond_2

    sget-object p0, Lw3/w3;->a:Ljava/lang/Object;

    aget-object p1, p1, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lw3/w1;->O1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    array-length p0, p1

    if-eqz p0, :cond_5

    sget-object p0, Lw3/w3;->a:Ljava/lang/Object;

    aget-object p1, p1, v0

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lw3/w1;->Q1(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2
    array-length p0, p1

    if-eqz p0, :cond_8

    sget-object p0, Lw3/w3;->a:Ljava/lang/Object;

    aget-object p1, p1, v0

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_7

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lw3/w1;->P1(Ljava/lang/Number;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_3
    array-length p0, p1

    if-eqz p0, :cond_b

    sget-object p0, Lw3/w3;->a:Ljava/lang/Object;

    aget-object p1, p1, v0

    if-ne p0, p1, :cond_9

    goto :goto_3

    :cond_9
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_a

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lw3/w1;->R1(Ljava/lang/Number;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    invoke-static {p1}, Lw3/k1;->h([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Lw3/k1;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static J1(Lw3/z2;Z)V
    .locals 3

    new-instance v0, Lw3/w1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lw3/w1;-><init>(D)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    return-void
.end method

.method private static K1(D)Z
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static L1(Ljava/lang/Double;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static M1(D)Z
    .locals 3

    invoke-static {p0, p1}, Lw3/w1;->K1(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const-wide v0, -0x3cc0000000000001L    # -9.007199254740991E15

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static N1(Ljava/lang/Double;)Z
    .locals 5

    invoke-static {p0}, Lw3/w1;->L1(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3cc0000000000001L    # -9.007199254740991E15

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static O1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static P1(Ljava/lang/Number;)Z
    .locals 2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lw3/w1;->L1(Ljava/lang/Double;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lw3/w1;->K1(D)Z

    move-result p0

    return p0
.end method

.method private static Q1(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    goto :goto_0
.end method

.method private static R1(Ljava/lang/Number;)Z
    .locals 2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lw3/w1;->N1(Ljava/lang/Double;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lw3/w1;->M1(D)Z

    move-result p0

    return p0
.end method

.method private static S1(D[Ljava/lang/Object;IIII)Ljava/lang/String;
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p3, p2, v1

    invoke-static {p3}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v2

    int-to-double v4, p5

    cmpg-double p3, v2, v4

    if-ltz p3, :cond_1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double p3, v2, v4

    if-gtz p3, :cond_1

    invoke-static {v2, v3}, Lw3/u2;->Q1(D)I

    move-result v1

    move p3, p4

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v1, p6

    invoke-static {p2, p3, v1, p0, p1}, Lw3/q;->d(Ljava/lang/StringBuilder;IID)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    aget-object p1, p2, v1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "msg.bad.precision"

    invoke-static {p1, p0}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Number"

    return-object v0
.end method

.method protected o1(Lw3/l0;)V
    .locals 9

    sget-object v0, Lw3/u2;->t:Ljava/lang/Double;

    const-string v1, "NaN"

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v0, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "POSITIVE_INFINITY"

    invoke-virtual {p1, v1, v0, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "NEGATIVE_INFINITY"

    invoke-virtual {p1, v1, v0, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MAX_VALUE"

    invoke-virtual {p1, v1, v0, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MIN_VALUE"

    invoke-virtual {p1, v1, v0, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, 0x433fffffffffffffL    # 9.007199254740991E15

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MAX_SAFE_INTEGER"

    invoke-virtual {p1, v1, v0, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, -0x3cc0000000000001L    # -9.007199254740991E15

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MIN_SAFE_INTEGER"

    invoke-virtual {p1, v1, v0, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object v0, Lw3/w1;->k:Ljava/lang/Object;

    const/4 v6, -0x1

    const-string v7, "isFinite"

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x2

    const-string v7, "isNaN"

    invoke-virtual/range {v3 .. v8}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x3

    const-string v7, "isInteger"

    invoke-virtual/range {v3 .. v8}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x4

    const-string v7, "isSafeInteger"

    invoke-virtual/range {v3 .. v8}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x5

    const-string v7, "parseFloat"

    invoke-virtual/range {v3 .. v8}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x6

    const-string v7, "parseInt"

    invoke-virtual/range {v3 .. v8}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lw3/n0;->o1(Lw3/l0;)V

    return-void
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "toExponential"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "valueOf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "toFixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "toSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "toPrecision"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "toLocaleString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    :goto_0
    packed-switch v9, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x3

    :goto_1
    :pswitch_7
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7866ceda -> :sswitch_7
        -0x771b9fbd -> :sswitch_6
        -0x6a2ea58a -> :sswitch_5
        -0x69e9ad94 -> :sswitch_4
        -0x5ead2806 -> :sswitch_3
        -0x46374247 -> :sswitch_2
        0xdce0328 -> :sswitch_1
        0x639537ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p1

    move-object v1, p4

    move-object/from16 v2, p5

    sget-object v3, Lw3/w1;->k:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v6, :cond_3

    array-length v0, v2

    if-lt v0, v6, :cond_1

    aget-object v0, v2, v7

    invoke-static {v0}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v4

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Lw3/w1;

    invoke-direct {v0, v4, v5}, Lw3/w1;-><init>(D)V

    return-object v0

    :cond_2
    invoke-static {v4, v5}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_3
    if-ge v3, v6, :cond_4

    invoke-static {v3, v2}, Lw3/w1;->I1(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const-class v6, Lw3/w1;

    invoke-static {p4, v6, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/w1;

    iget-wide v0, v0, Lw3/w1;->j:D

    const-string v6, "Infinity"

    const-string v8, "-Infinity"

    const-string v9, "NaN"

    const/16 v10, 0xa

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    array-length v3, v2

    if-eqz v3, :cond_9

    aget-object v3, v2, v7

    sget-object v7, Lw3/w3;->a:Ljava/lang/Object;

    if-ne v3, v7, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v9

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_8

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_7

    return-object v6

    :cond_7
    return-object v8

    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lw3/w1;->S1(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_0
    invoke-static {v0, v1, v10}, Lw3/u2;->j1(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_a

    return-object v9

    :cond_a
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_c

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_b

    return-object v6

    :cond_b
    return-object v8

    :cond_c
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lw3/w1;->S1(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object v3, p2

    iget v3, v3, Lw3/m;->k:I

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_d

    const/16 v3, -0x14

    const/16 v5, -0x14

    goto :goto_1

    :cond_d
    const/4 v5, 0x0

    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lw3/w1;->S1(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(new Number("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lw3/u2;->g2(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "))"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    array-length v3, v2

    if-eqz v3, :cond_f

    aget-object v2, v2, v7

    sget-object v3, Lw3/w3;->a:Ljava/lang/Object;

    if-ne v2, v3, :cond_e

    goto :goto_2

    :cond_e
    invoke-static {v2}, Lw3/u2;->R1(Ljava/lang/Object;)I

    move-result v10

    :cond_f
    :goto_2
    invoke-static {v0, v1, v10}, Lw3/u2;->j1(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lw3/w1;->j:D

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lw3/u2;->j1(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected y1(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "toPrecision"

    goto :goto_1

    :pswitch_1
    const-string v0, "toExponential"

    goto :goto_1

    :pswitch_2
    const-string v0, "toFixed"

    goto :goto_1

    :pswitch_3
    const-string v1, "valueOf"

    goto :goto_0

    :pswitch_4
    const-string v1, "toSource"

    :goto_0
    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_5
    const-string v0, "toLocaleString"

    goto :goto_1

    :pswitch_6
    const-string v0, "toString"

    goto :goto_1

    :pswitch_7
    const-string v0, "constructor"

    :goto_1
    sget-object v2, Lw3/w1;->k:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
