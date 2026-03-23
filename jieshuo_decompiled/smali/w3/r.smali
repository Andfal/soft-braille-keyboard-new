.class public Lw3/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lw3/r;->a:[C

    return-void
.end method

.method private g(C)V
    .locals 2

    iget v0, p0, Lw3/r;->b:I

    iget-object v1, p0, Lw3/r;->a:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lw3/r;->n(I)V

    :cond_0
    iget-object v0, p0, Lw3/r;->a:[C

    iget v1, p0, Lw3/r;->b:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lw3/r;->b:I

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x8000

    if-lt v0, v2, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lw3/r;->b:I

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    iget-object v3, p0, Lw3/r;->a:[C

    array-length v3, v3

    if-le v4, v3, :cond_1

    invoke-direct {p0, v4}, Lw3/r;->n(I)V

    :cond_1
    if-lt v0, v2, :cond_2

    iget-object v3, p0, Lw3/r;->a:[C

    iget v5, p0, Lw3/r;->b:I

    ushr-int/lit8 v6, v0, 0x10

    or-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lw3/r;->b:I

    :cond_2
    iget-object v2, p0, Lw3/r;->a:[C

    iget v3, p0, Lw3/r;->b:I

    int-to-char v5, v0

    aput-char v5, v2, v3

    add-int/2addr v3, v1

    iput v3, p0, Lw3/r;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v4, p0, Lw3/r;->b:I

    return-void
.end method

.method public static i(Ljava/lang/String;ILw3/v3;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lw3/v3;->d(II)I

    move-result v5

    if-ltz v5, :cond_24

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Lw3/v3;->d(II)I

    move-result v8

    if-ltz v8, :cond_23

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v6}, Lw3/v3;->d(II)I

    move-result v1

    if-ltz v1, :cond_22

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    and-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x8b

    if-ne v12, v13, :cond_3

    const/4 v12, -0x1

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x0

    :goto_2
    const/16 v14, 0x28

    const/16 v15, 0xa

    const/16 v4, 0x20

    if-nez v11, :cond_4

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v5, :cond_5

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    if-ne v12, v6, :cond_5

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_4
    if-ge v13, v2, :cond_1f

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v6, 0x27

    if-eq v14, v3, :cond_15

    if-eq v14, v7, :cond_e

    const/16 v7, 0x34

    if-eq v14, v7, :cond_14

    const/16 v7, 0x35

    if-eq v14, v7, :cond_13

    const/16 v7, 0x92

    if-eq v14, v7, :cond_12

    const/16 v7, 0x93

    if-eq v14, v7, :cond_11

    const/16 v7, 0x95

    if-eq v14, v7, :cond_10

    const/16 v7, 0x96

    if-eq v14, v7, :cond_f

    sparse-switch v14, :sswitch_data_0

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    packed-switch v14, :pswitch_data_2

    packed-switch v14, :pswitch_data_3

    packed-switch v14, :pswitch_data_4

    packed-switch v14, :pswitch_data_5

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lw3/s3;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v6, "yield *"

    goto/16 :goto_a

    :pswitch_1
    const-string v6, " => "

    goto/16 :goto_a

    :pswitch_2
    const-string v6, "const "

    goto/16 :goto_a

    :pswitch_3
    const-string v6, "let "

    goto/16 :goto_a

    :pswitch_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x9a

    if-ne v6, v7, :cond_6

    const-string v6, "get "

    :goto_5
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x9b

    if-ne v6, v7, :cond_7

    const-string v6, "set "

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v3

    const/4 v6, 0x0

    invoke-static {v0, v13, v6, v9}, Lw3/r;->r(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v7

    add-int/lit8 v13, v7, 0x1

    goto/16 :goto_17

    :pswitch_5
    const-string v6, "void "

    goto/16 :goto_a

    :pswitch_6
    const-string v6, "finally "

    goto/16 :goto_a

    :pswitch_7
    const-string v6, "catch "

    goto/16 :goto_a

    :pswitch_8
    const-string v6, "with "

    goto/16 :goto_a

    :pswitch_9
    const-string v6, "var "

    goto/16 :goto_a

    :pswitch_a
    const-string v7, "continue"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lw3/r;->l(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_9

    goto :goto_7

    :pswitch_b
    const-string v7, "break"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lw3/r;->l(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_9

    :goto_7
    goto/16 :goto_b

    :pswitch_c
    const-string v6, "for "

    goto/16 :goto_a

    :pswitch_d
    const-string v6, "do "

    goto/16 :goto_a

    :pswitch_e
    const-string v6, "while "

    goto/16 :goto_a

    :pswitch_f
    const-string v6, "default"

    goto/16 :goto_a

    :pswitch_10
    const-string v6, "case "

    goto/16 :goto_a

    :pswitch_11
    const-string v6, "switch "

    goto/16 :goto_a

    :pswitch_12
    const-string v6, "else "

    goto/16 :goto_a

    :pswitch_13
    const-string v6, "if "

    goto :goto_a

    :pswitch_14
    add-int/lit8 v13, v13, 0x1

    const-string v6, "function "

    :goto_8
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :pswitch_15
    const/16 v6, 0x2e

    :goto_9
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_16
    const-string v6, "--"

    goto :goto_a

    :pswitch_17
    const-string v6, "++"

    goto :goto_a

    :pswitch_18
    const-string v6, " && "

    goto :goto_a

    :pswitch_19
    const-string v6, " || "

    goto :goto_a

    :pswitch_1a
    invoke-static {v0, v2, v13}, Lw3/r;->l(Ljava/lang/String;II)I

    move-result v6

    if-ne v3, v6, :cond_8

    const/16 v6, 0x3a

    goto :goto_9

    :cond_8
    const-string v6, " : "

    goto :goto_a

    :pswitch_1b
    const-string v6, " ? "

    goto :goto_a

    :pswitch_1c
    const-string v6, " %= "

    goto :goto_a

    :pswitch_1d
    const-string v6, " /= "

    goto :goto_a

    :pswitch_1e
    const-string v6, " *= "

    goto :goto_a

    :pswitch_1f
    const-string v6, " -= "

    goto :goto_a

    :pswitch_20
    const-string v6, " += "

    goto :goto_a

    :pswitch_21
    const-string v6, " >>>= "

    goto :goto_a

    :pswitch_22
    const-string v6, " >>= "

    goto :goto_a

    :pswitch_23
    const-string v6, " <<= "

    goto :goto_a

    :pswitch_24
    const-string v6, " &= "

    goto :goto_a

    :pswitch_25
    const-string v6, " ^= "

    goto :goto_a

    :pswitch_26
    const-string v6, " |= "

    goto :goto_a

    :pswitch_27
    const-string v6, " = "

    goto :goto_a

    :pswitch_28
    const-string v6, ", "

    :goto_a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :pswitch_29
    const/16 v6, 0x29

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x57

    invoke-static {v0, v2, v13}, Lw3/r;->l(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_9

    :goto_b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    :goto_c
    :sswitch_0
    const/16 v7, 0x28

    goto/16 :goto_17

    :pswitch_2a
    const/16 v7, 0x28

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :pswitch_2b
    const/16 v7, 0x28

    add-int/lit8 v15, v15, -0x1

    if-eqz v10, :cond_a

    if-nez v15, :cond_a

    goto/16 :goto_17

    :cond_a
    const/16 v6, 0x7d

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lw3/r;->l(Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v3, :cond_c

    const/16 v14, 0x74

    if-eq v6, v14, :cond_b

    const/16 v14, 0x78

    if-eq v6, v14, :cond_b

    const/16 v14, 0xaa

    if-eq v6, v14, :cond_c

    goto/16 :goto_17

    :cond_b
    sub-int/2addr v5, v8

    :goto_d
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :cond_c
    sub-int/2addr v5, v8

    goto/16 :goto_17

    :pswitch_2c
    const/16 v7, 0x28

    add-int/lit8 v15, v15, 0x1

    invoke-static {v0, v2, v13}, Lw3/r;->l(Ljava/lang/String;II)I

    move-result v6

    if-ne v3, v6, :cond_d

    add-int/2addr v5, v8

    :cond_d
    const/16 v6, 0x7b

    :goto_e
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :pswitch_2d
    const/16 v7, 0x28

    const/16 v6, 0x5d

    goto :goto_e

    :pswitch_2e
    const/16 v7, 0x28

    const/16 v6, 0x5b

    goto :goto_e

    :pswitch_2f
    const/16 v7, 0x28

    const/16 v6, 0x3b

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lw3/r;->l(Ljava/lang/String;II)I

    move-result v6

    if-eq v3, v6, :cond_1e

    goto/16 :goto_11

    :pswitch_30
    const/16 v7, 0x28

    const-string v6, "try "

    goto/16 :goto_8

    :pswitch_31
    const/16 v7, 0x28

    const-string v6, " !== "

    goto/16 :goto_8

    :pswitch_32
    const/16 v7, 0x28

    const-string v6, " === "

    goto/16 :goto_8

    :pswitch_33
    const/16 v7, 0x28

    const-string v6, "true"

    goto/16 :goto_8

    :pswitch_34
    const/16 v7, 0x28

    const-string v6, "false"

    goto/16 :goto_8

    :pswitch_35
    const/16 v7, 0x28

    const-string v6, "this"

    goto/16 :goto_8

    :pswitch_36
    const/16 v7, 0x28

    const-string v6, "null"

    goto/16 :goto_8

    :pswitch_37
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    invoke-static {v0, v13, v3, v9}, Lw3/r;->r(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v13

    goto :goto_f

    :pswitch_38
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    invoke-static {v0, v13, v9}, Lw3/r;->q(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v13

    goto :goto_f

    :pswitch_39
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v13, v6, v9}, Lw3/r;->r(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v13

    :goto_f
    const/4 v7, 0x4

    const/16 v14, 0x28

    goto/16 :goto_4

    :sswitch_1
    const/16 v7, 0x28

    const-string v6, "debugger;\n"

    goto/16 :goto_8

    :sswitch_2
    const/16 v7, 0x28

    const-string v6, " ** "

    goto/16 :goto_8

    :sswitch_3
    const/16 v7, 0x28

    const-string v6, "yield "

    goto/16 :goto_8

    :sswitch_4
    const/16 v7, 0x28

    const-string v6, ": "

    goto/16 :goto_8

    :sswitch_5
    const/16 v7, 0x28

    const-string v6, "throw "

    goto/16 :goto_8

    :sswitch_6
    const/16 v7, 0x28

    const-string v6, "typeof "

    goto/16 :goto_8

    :sswitch_7
    const/16 v7, 0x28

    const-string v6, "delete "

    goto/16 :goto_8

    :sswitch_8
    const/16 v7, 0x28

    const-string v6, "new "

    goto/16 :goto_8

    :sswitch_9
    const/16 v7, 0x28

    const/16 v6, 0x2d

    goto/16 :goto_e

    :sswitch_a
    const/16 v7, 0x28

    const/16 v6, 0x2b

    goto/16 :goto_e

    :sswitch_b
    const/16 v7, 0x28

    const/16 v6, 0x7e

    goto/16 :goto_e

    :sswitch_c
    const/16 v7, 0x28

    const/16 v6, 0x21

    goto/16 :goto_e

    :sswitch_d
    const/16 v7, 0x28

    const-string v6, " % "

    goto/16 :goto_8

    :sswitch_e
    const/16 v7, 0x28

    const-string v6, " / "

    goto/16 :goto_8

    :sswitch_f
    const/16 v7, 0x28

    const-string v6, " * "

    goto/16 :goto_8

    :sswitch_10
    const/16 v7, 0x28

    const-string v6, " - "

    goto/16 :goto_8

    :sswitch_11
    const/16 v7, 0x28

    const-string v6, " + "

    goto/16 :goto_8

    :sswitch_12
    const/16 v7, 0x28

    const-string v6, " >>> "

    goto/16 :goto_8

    :sswitch_13
    const/16 v7, 0x28

    const-string v6, " >> "

    goto/16 :goto_8

    :sswitch_14
    const/16 v7, 0x28

    const-string v6, " << "

    goto/16 :goto_8

    :sswitch_15
    const/16 v7, 0x28

    const-string v6, " >= "

    goto/16 :goto_8

    :sswitch_16
    const/16 v7, 0x28

    const-string v6, " > "

    goto/16 :goto_8

    :sswitch_17
    const/16 v7, 0x28

    const-string v6, " <= "

    goto/16 :goto_8

    :sswitch_18
    const/16 v7, 0x28

    const-string v6, " < "

    goto/16 :goto_8

    :sswitch_19
    const/16 v7, 0x28

    const-string v6, " != "

    goto/16 :goto_8

    :sswitch_1a
    const/16 v7, 0x28

    const-string v6, " == "

    goto/16 :goto_8

    :sswitch_1b
    const/16 v7, 0x28

    const-string v6, " & "

    goto/16 :goto_8

    :sswitch_1c
    const/16 v7, 0x28

    const-string v6, " ^ "

    goto/16 :goto_8

    :sswitch_1d
    const/16 v7, 0x28

    const-string v6, " | "

    goto/16 :goto_8

    :cond_e
    :sswitch_1e
    const/16 v7, 0x28

    goto :goto_10

    :cond_f
    const/16 v7, 0x28

    const/16 v6, 0x40

    goto/16 :goto_e

    :cond_10
    const/16 v7, 0x28

    const-string v6, ".("

    goto/16 :goto_8

    :cond_11
    const/16 v7, 0x28

    const-string v6, "::"

    goto/16 :goto_8

    :cond_12
    const/16 v7, 0x28

    const-string v6, ".."

    goto/16 :goto_8

    :cond_13
    const/16 v7, 0x28

    const-string v6, " instanceof "

    goto/16 :goto_8

    :cond_14
    const/16 v7, 0x28

    const-string v6, " in "

    goto/16 :goto_8

    :goto_10
    const-string v6, "return"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x54

    invoke-static {v0, v2, v13}, Lw3/r;->l(Ljava/lang/String;II)I

    move-result v14

    if-eq v6, v14, :cond_1e

    :goto_11
    goto/16 :goto_d

    :cond_15
    const/16 v7, 0x28

    if-eqz v11, :cond_16

    goto :goto_17

    :cond_16
    const/4 v14, 0x0

    if-nez v17, :cond_18

    if-eqz v10, :cond_17

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int/2addr v5, v8

    const/16 v16, 0x0

    goto :goto_12

    :cond_17
    const/16 v16, 0x1

    :goto_12
    const/16 v17, 0x1

    goto :goto_13

    :cond_18
    const/16 v16, 0x1

    :goto_13
    if-eqz v16, :cond_19

    const/16 v7, 0xa

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    add-int/lit8 v7, v13, 0x1

    if-ge v7, v2, :cond_1e

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v14, 0x76

    if-eq v7, v14, :cond_1d

    const/16 v14, 0x77

    if-ne v7, v14, :cond_1a

    goto :goto_15

    :cond_1a
    const/16 v14, 0x58

    if-ne v7, v14, :cond_1b

    goto :goto_14

    :cond_1b
    if-ne v7, v6, :cond_1c

    add-int/lit8 v6, v13, 0x2

    invoke-static {v0, v6}, Lw3/r;->m(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x6a

    if-ne v6, v7, :cond_1c

    :goto_14
    move v6, v8

    goto :goto_16

    :cond_1c
    const/4 v6, 0x0

    goto :goto_16

    :cond_1d
    :goto_15
    sub-int v6, v8, v1

    :goto_16
    if-ge v6, v5, :cond_1e

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1e
    :goto_17
    add-int/2addr v13, v3

    goto/16 :goto_f

    :cond_1f
    if-nez v11, :cond_20

    if-nez v10, :cond_21

    const/16 v0, 0xa

    goto :goto_18

    :cond_20
    const/4 v0, 0x2

    if-ne v12, v0, :cond_21

    const/16 v0, 0x29

    :goto_18
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1e
        0x9 -> :sswitch_1d
        0xa -> :sswitch_1c
        0xb -> :sswitch_1b
        0xc -> :sswitch_1a
        0xd -> :sswitch_19
        0xe -> :sswitch_18
        0xf -> :sswitch_17
        0x10 -> :sswitch_16
        0x11 -> :sswitch_15
        0x12 -> :sswitch_14
        0x13 -> :sswitch_13
        0x14 -> :sswitch_12
        0x15 -> :sswitch_11
        0x16 -> :sswitch_10
        0x17 -> :sswitch_f
        0x18 -> :sswitch_e
        0x19 -> :sswitch_d
        0x1a -> :sswitch_c
        0x1b -> :sswitch_b
        0x1c -> :sswitch_a
        0x1d -> :sswitch_9
        0x1e -> :sswitch_8
        0x1f -> :sswitch_7
        0x20 -> :sswitch_6
        0x32 -> :sswitch_5
        0x43 -> :sswitch_4
        0x49 -> :sswitch_3
        0x4b -> :sswitch_2
        0xa3 -> :sswitch_1
        0xaa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_39
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x69
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x73
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
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9a
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa6
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static l(Ljava/lang/String;II)I
    .locals 0

    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static m(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lw3/r;->r(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p0

    return p0
.end method

.method private n(I)V
    .locals 3

    iget-object v0, p0, Lw3/r;->a:[C

    array-length v0, v0

    if-gt p1, v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/r;->a:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    new-array p1, p1, [C

    iget v1, p0, Lw3/r;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lw3/r;->a:[C

    return-void
.end method

.method private static q(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 7

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x53

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-double v2, p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    const/16 v4, 0x44

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-long v4, p0

    or-long/2addr v2, v4

    if-ne v0, v1, :cond_4

    long-to-double v2, v2

    goto :goto_1

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x4

    :goto_2
    if-eqz p2, :cond_6

    const/16 p0, 0xa

    invoke-static {v2, v3, p0}, Lw3/u2;->j1(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return p1
.end method

.method private static r(Ljava/lang/String;IZLjava/lang/StringBuilder;)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    and-int/lit16 v0, v0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    :cond_0
    if-eqz p3, :cond_2

    add-int v1, p1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p2, 0x22

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lw3/u2;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    add-int/2addr p1, v0

    return p1
.end method

.method private s(I)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lw3/r;->b:I

    if-ge v0, p1, :cond_1

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lw3/r;->a:[C

    iget v2, p0, Lw3/r;->b:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa9

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lw3/r;->f(I)V

    invoke-direct {p0, p1}, Lw3/r;->h(Ljava/lang/String;)V

    return-void
.end method

.method c(D)V
    .locals 8

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lw3/r;->f(I)V

    double-to-long v0, p1

    long-to-double v2, v0

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x30

    cmpl-double v7, v2, p1

    if-eqz v7, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lw3/r;->g(C)V

    shr-long v0, p1, v6

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lw3/r;->g(C)V

    shr-long v0, p1, v5

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lw3/r;->g(C)V

    shr-long v0, p1, v4

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lw3/r;->g(C)V

    long-to-int p2, p1

    int-to-char p1, p2

    :goto_0
    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    goto :goto_2

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_1
    const-wide/32 p1, 0xffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_2

    const/16 p1, 0x53

    goto :goto_1

    :cond_2
    const/16 p1, 0x4a

    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    shr-long p1, v0, v6

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    shr-long p1, v0, v5

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    shr-long p1, v0, v4

    long-to-int p2, p1

    int-to-char p1, p2

    :goto_1
    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    long-to-int p1, v0

    int-to-char p1, p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lw3/r;->f(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lw3/r;->h(Ljava/lang/String;)V

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lw3/r;->f(I)V

    invoke-direct {p0, p1}, Lw3/r;->h(Ljava/lang/String;)V

    return-void
.end method

.method f(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa9

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method j()I
    .locals 1

    iget v0, p0, Lw3/r;->b:I

    return v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lw3/r;->s(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o(I)I
    .locals 1

    invoke-virtual {p0}, Lw3/r;->j()I

    move-result p1

    const/16 v0, 0xaa

    invoke-direct {p0, v0}, Lw3/r;->g(C)V

    return p1
.end method

.method p(I)I
    .locals 2

    invoke-virtual {p0}, Lw3/r;->j()I

    move-result v0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x70

    invoke-virtual {p0, v1}, Lw3/r;->f(I)V

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lw3/r;->g(C)V

    :cond_0
    return v0
.end method
