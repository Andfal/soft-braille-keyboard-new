.class public Lw3/c1;
.super Lw3/n0;
.source "SourceFile"


# instance fields
.field private j:Lw3/y2;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    return-void
.end method

.method private static I1(Lw3/z2;)Ljava/lang/Object;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lw3/c1;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p0

    :cond_1
    check-cast p0, Lw3/c1;

    iget-object p0, p0, Lw3/c1;->j:Lw3/y2;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lw3/y2;->a:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method private static J1(Lw3/z2;)Ljava/lang/Object;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lw3/c1;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p0

    :cond_1
    check-cast p0, Lw3/c1;

    iget-object p0, p0, Lw3/c1;->j:Lw3/y2;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lw3/y2;->b:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method private static K1(Lw3/z2;)Ljava/lang/Object;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lw3/c1;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p0

    :cond_1
    check-cast p0, Lw3/c1;

    iget-object p0, p0, Lw3/c1;->j:Lw3/y2;

    if-eqz p0, :cond_3

    iget p0, p0, Lw3/y2;->c:I

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lw3/w3;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static L1(Lw3/z2;Z)V
    .locals 2

    new-instance v0, Lw3/c1;

    invoke-direct {v0}, Lw3/c1;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    return-void
.end method

.method private static M1(Lw3/z2;)Ljava/lang/Object;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lw3/c1;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p0

    :cond_1
    check-cast p0, Lw3/c1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lw3/c1;->j:Lw3/y2;

    invoke-virtual {p0, v0}, Lw3/y2;->b(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static N1(Lw3/z2;Lw3/z2;)Lw3/c1;
    .locals 2

    new-instance v0, Lw3/c1;

    invoke-direct {v0}, Lw3/c1;-><init>()V

    const-string v1, "prototype"

    invoke-interface {p1, v1, p1}, Lw3/z2;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/z2;

    invoke-virtual {v0, p0}, Lw3/a3;->h(Lw3/z2;)V

    invoke-virtual {v0, p1}, Lw3/a3;->A(Lw3/z2;)V

    return-object v0
.end method


# virtual methods
.method O1(Lw3/y2;)V
    .locals 0

    iput-object p1, p0, Lw3/c1;->j:Lw3/y2;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "CallSite"

    return-object v0
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 18

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "getFunctionName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v17, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "getTypeName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "getFileName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v17, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "isConstructor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "getColumnNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "getThis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "isNative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "getEvalOrigin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v17, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "getLineNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v17, 0x6

    goto :goto_0

    :sswitch_9
    const-string v1, "getFunction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v17, 0x5

    goto :goto_0

    :sswitch_a
    const-string v1, "getMethodName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/16 v17, 0x4

    goto :goto_0

    :sswitch_b
    const-string v1, "isEval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/16 v17, 0x3

    goto :goto_0

    :sswitch_c
    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/16 v17, 0x2

    goto :goto_0

    :sswitch_d
    const-string v1, "isToplevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/16 v17, 0x1

    goto :goto_0

    :sswitch_e
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/16 v17, 0x0

    :goto_0
    packed-switch v17, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x9

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_5
    const/16 v2, 0xd

    goto :goto_1

    :pswitch_6
    const/16 v2, 0xa

    goto :goto_1

    :pswitch_7
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_8
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_9
    const/4 v2, 0x6

    goto :goto_1

    :pswitch_a
    const/16 v2, 0xc

    goto :goto_1

    :pswitch_b
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_c
    const/16 v2, 0xb

    goto :goto_1

    :pswitch_d
    const/16 v2, 0xf

    :goto_1
    :pswitch_e
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_e
        -0x682bf167 -> :sswitch_d
        -0x5ead2806 -> :sswitch_c
        -0x465d731a -> :sswitch_b
        -0x3cd9e0fe -> :sswitch_a
        -0x31d64eb2 -> :sswitch_9
        -0x255d97ad -> :sswitch_8
        -0x1e80e128 -> :sswitch_7
        -0x1690be1f -> :sswitch_6
        -0x47a48ec -> :sswitch_5
        0x3d9cd4b5 -> :sswitch_4
        0x4d477470 -> :sswitch_3
        0x5000039d -> :sswitch_2
        0x53878e5b -> :sswitch_1
        0x545948f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "CallSite"

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p4}, Lw3/c1;->M1(Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_2
    invoke-static {p4}, Lw3/c1;->K1(Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p4}, Lw3/c1;->I1(Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    const/4 p1, 0x0

    return-object p1

    :pswitch_5
    invoke-static {p4}, Lw3/c1;->J1(Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_7
    invoke-static {p3, p1}, Lw3/c1;->N1(Lw3/z2;Lw3/z2;)Lw3/c1;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/c1;->j:Lw3/y2;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lw3/y2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected y1(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "toString"

    goto :goto_0

    :pswitch_1
    const-string v0, "isConstructor"

    goto :goto_0

    :pswitch_2
    const-string v0, "isNative"

    goto :goto_0

    :pswitch_3
    const-string v0, "isEval"

    goto :goto_0

    :pswitch_4
    const-string v0, "isToplevel"

    goto :goto_0

    :pswitch_5
    const-string v0, "getEvalOrigin"

    goto :goto_0

    :pswitch_6
    const-string v0, "getColumnNumber"

    goto :goto_0

    :pswitch_7
    const-string v0, "getLineNumber"

    goto :goto_0

    :pswitch_8
    const-string v0, "getFileName"

    goto :goto_0

    :pswitch_9
    const-string v0, "getMethodName"

    goto :goto_0

    :pswitch_a
    const-string v0, "getFunctionName"

    goto :goto_0

    :pswitch_b
    const-string v0, "getFunction"

    goto :goto_0

    :pswitch_c
    const-string v0, "getTypeName"

    goto :goto_0

    :pswitch_d
    const-string v0, "getThis"

    goto :goto_0

    :pswitch_e
    const-string v0, "constructor"

    :goto_0
    const/4 v1, 0x0

    const-string v2, "CallSite"

    invoke-virtual {p0, v2, p1, v0, v1}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
