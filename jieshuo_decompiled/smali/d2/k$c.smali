.class Ld2/k$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Ld2/k;

.field private final b:Ld2/g;

.field private c:Z

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld2/n;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Ld2/k;


# direct methods
.method public constructor <init>(Ld2/k;Ld2/k;)V
    .locals 0

    iput-object p1, p0, Ld2/k$c;->f:Ld2/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld2/k$c;->c:Z

    const/16 p1, 0x10

    iput p1, p0, Ld2/k$c;->d:I

    iput-object p2, p0, Ld2/k$c;->a:Ld2/k;

    new-instance p1, Ld2/g;

    invoke-direct {p1}, Ld2/g;-><init>()V

    iput-object p1, p0, Ld2/k$c;->b:Ld2/g;

    return-void
.end method

.method private c()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Ld2/k$c;->f:Ld2/k;

    invoke-virtual {v0}, Ld2/k;->c()Ld2/f;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f;->k()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x2004

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lcom/androlua/LuaLexer;

    invoke-direct {v4, v0}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Ld2/k;->d()Ld2/h;

    move-result-object v8

    invoke-virtual {v8}, Ld2/h;->c()V

    :try_start_0
    const-string v0, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const/4 v13, -0x1

    move-object v13, v11

    move-object v14, v13

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    :goto_0
    iget-object v9, v1, Ld2/k$c;->b:Ld2/g;

    invoke-virtual {v9}, Ld2/g;->b()Z

    move-result v9

    if-nez v9, :cond_16

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v12

    if-eqz v16, :cond_2

    sget-object v1, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v1, :cond_2

    if-eq v9, v1, :cond_2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    move-object/from16 v19, v6

    const/4 v6, 0x2

    if-le v10, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    invoke-virtual {v1, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ld2/h;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v19, v6

    :goto_1
    sget-object v1, Ld2/k$a;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "require"

    move-object/from16 v20, v9

    const/16 v9, 0x270f

    packed-switch v1, :pswitch_data_0

    move/from16 v18, v2

    move-object/from16 v6, v19

    const/4 v2, 0x1

    :try_start_1
    new-instance v1, Ld2/n;

    const/4 v9, 0x0

    goto/16 :goto_b

    :pswitch_0
    new-instance v1, Ld2/n;

    const/4 v6, 0x4

    invoke-direct {v1, v12, v6}, Ld2/n;-><init>(II)V

    :goto_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_1
    new-instance v1, Ld2/n;

    const/16 v6, 0x1e

    invoke-direct {v1, v12, v6}, Ld2/n;-><init>(II)V

    goto :goto_2

    :pswitch_2
    if-le v2, v9, :cond_3

    new-instance v1, Ld2/n;

    const/4 v6, 0x0

    invoke-direct {v1, v12, v6}, Ld2/n;-><init>(II)V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/androlua/LuaTokenTypes;->NUMBER:Lcom/androlua/LuaTokenTypes;

    if-ne v13, v1, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/n;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ld2/n;->d(I)V

    invoke-virtual {v1}, Ld2/n;->a()I

    move-result v9

    add-int/2addr v9, v12

    invoke-virtual {v1, v9}, Ld2/n;->c(I)V

    :cond_4
    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/androlua/LuaTokenTypes;->FUNCTION:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v9, :cond_5

    new-instance v9, Ld2/n;

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v1}, Ld2/h;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v8, v1}, Ld2/h;->x(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v9, Ld2/n;

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13}, Ld2/n;-><init>(II)V

    :goto_3
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    sget-object v9, Lcom/androlua/LuaTokenTypes;->GOTO:Lcom/androlua/LuaTokenTypes;

    if-eq v11, v9, :cond_c

    sget-object v9, Lcom/androlua/LuaTokenTypes;->AT:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v9, :cond_7

    goto :goto_4

    :cond_7
    sget-object v9, Lcom/androlua/LuaTokenTypes;->MULT:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v9, :cond_8

    sget-object v9, Lcom/androlua/LuaTokenTypes;->LOCAL:Lcom/androlua/LuaTokenTypes;

    if-ne v14, v9, :cond_8

    new-instance v9, Ld2/n;

    const/4 v13, 0x2

    invoke-direct {v9, v12, v13}, Ld2/n;-><init>(II)V

    goto :goto_3

    :cond_8
    invoke-virtual {v8, v1}, Ld2/h;->i(Ljava/lang/String;)Z

    move-result v9

    const/4 v13, 0x3

    if-eqz v9, :cond_9

    new-instance v9, Ld2/n;

    invoke-direct {v9, v12, v13}, Ld2/n;-><init>(II)V

    goto :goto_3

    :cond_9
    sget-object v9, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v9, :cond_a

    invoke-virtual {v8, v0}, Ld2/h;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8, v0, v1}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Ld2/n;

    invoke-direct {v9, v12, v13}, Ld2/n;-><init>(II)V

    goto :goto_3

    :cond_a
    invoke-virtual {v8, v1}, Ld2/h;->t(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance v9, Ld2/n;

    invoke-direct {v9, v12, v13}, Ld2/n;-><init>(II)V

    goto :goto_3

    :cond_b
    new-instance v9, Ld2/n;

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Ld2/n;-><init>(II)V

    goto :goto_3

    :cond_c
    :goto_4
    new-instance v9, Ld2/n;

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13}, Ld2/n;-><init>(II)V

    goto :goto_3

    :goto_5
    sget-object v9, Lcom/androlua/LuaTokenTypes;->ASSIGN:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v9, :cond_d

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v8, v0}, Ld2/h;->b(Ljava/lang/String;)V

    if-ltz v15, :cond_d

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/n;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ld2/n;->d(I)V

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v15, v0

    move-object v0, v1

    goto :goto_6

    :pswitch_3
    new-instance v1, Ld2/n;

    const/16 v13, 0x32

    invoke-direct {v1, v12, v13}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v2, v9, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v16, 0x1

    :cond_f
    if-eqz v16, :cond_10

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_4
    new-instance v1, Ld2/n;

    const/4 v6, 0x2

    invoke-direct {v1, v12, v6}, Ld2/n;-><init>(II)V

    goto/16 :goto_2

    :cond_10
    :goto_6
    move/from16 v18, v2

    move-object/from16 v6, v19

    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_c

    :pswitch_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    const/4 v9, 0x1

    if-le v6, v9, :cond_11

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v1, Ld2/n;

    const/4 v6, 0x2

    invoke-direct {v1, v12, v6}, Ld2/n;-><init>(II)V

    goto/16 :goto_2

    :pswitch_6
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v6

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v1, v6, v9, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ld2/n;

    const/4 v6, 0x2

    invoke-direct {v1, v12, v6}, Ld2/n;-><init>(II)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v6, v19

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    iput v9, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v9

    iput v9, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v13

    const/4 v13, 0x1

    if-le v9, v13, :cond_13

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    move-object/from16 v6, v19

    :cond_13
    :goto_8
    new-instance v1, Ld2/n;

    const/4 v9, 0x1

    invoke-direct {v1, v12, v9}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v2

    goto :goto_9

    :pswitch_8
    move-object/from16 v6, v19

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v9

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v13

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v14

    move/from16 v18, v2

    const/4 v2, 0x0

    invoke-direct {v1, v9, v13, v2, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ld2/n;

    const/4 v2, 0x1

    invoke-direct {v1, v12, v2}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    const/16 v17, 0x0

    goto :goto_c

    :pswitch_9
    move/from16 v18, v2

    move-object/from16 v6, v19

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v2

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v1, v2, v9, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ld2/n;

    const/4 v2, 0x1

    invoke-direct {v1, v12, v2}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :pswitch_a
    move/from16 v18, v2

    move-object/from16 v6, v19

    if-eqz v17, :cond_14

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v2

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    invoke-virtual {v4}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v1, v2, v9, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    new-instance v1, Ld2/n;

    const/4 v2, 0x1

    invoke-direct {v1, v12, v2}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    const/4 v2, 0x1

    const/16 v17, 0x1

    goto :goto_c

    :pswitch_b
    move/from16 v18, v2

    move-object/from16 v6, v19

    new-instance v1, Ld2/n;

    const/4 v2, 0x1

    invoke-direct {v1, v12, v2}, Ld2/n;-><init>(II)V

    :goto_a
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :goto_b
    invoke-direct {v1, v12, v9}, Ld2/n;-><init>(II)V

    goto :goto_a

    :goto_c
    sget-object v1, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v9, v20

    if-eq v9, v1, :cond_15

    move-object v1, v9

    goto :goto_d

    :cond_15
    move-object v1, v11

    :goto_d
    move-object v13, v9

    move-object v14, v11

    move/from16 v2, v18

    move-object v11, v1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld2/r;->b(Ljava/lang/String;)V

    :cond_16
    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ld2/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v8}, Ld2/h;->D()V

    invoke-static {v5}, Ld2/k;->a(Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    iput-object v3, v1, Ld2/k$c;->e:Ljava/util/ArrayList;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ld2/k$c;->b:Ld2/g;

    invoke-virtual {v0}, Ld2/g;->c()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld2/k$c;->c:Z

    iget-object v0, p0, Ld2/k$c;->b:Ld2/g;

    invoke-virtual {v0}, Ld2/g;->c()V

    return-void
.end method

.method public d()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Ld2/k$c;->f:Ld2/k;

    invoke-virtual {v1}, Ld2/k;->c()Ld2/f;

    move-result-object v1

    invoke-static {}, Ld2/k;->d()Ld2/h;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ld2/h;->v()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-instance v1, Ld2/n;

    invoke-direct {v1, v5, v5}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v0, Ld2/k$c;->e:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/16 v4, 0x7f

    new-array v6, v4, [C

    invoke-virtual {v1, v5}, Ld2/f;->v(I)I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v1}, Ld2/f;->o()Z

    move-result v12

    if-eqz v12, :cond_1f

    iget-object v12, v0, Ld2/k$c;->b:Ld2/g;

    invoke-virtual {v12}, Ld2/g;->b()Z

    move-result v12

    if-nez v12, :cond_1f

    invoke-virtual {v1}, Ld2/f;->t()C

    move-result v12

    const/4 v5, 0x3

    const/16 v13, 0x1e

    const/16 v14, 0x28

    const/16 v15, 0xa

    const/4 v4, 0x1

    if-eq v8, v7, :cond_b

    if-eqz v8, :cond_b

    if-eq v8, v4, :cond_b

    if-eq v8, v5, :cond_b

    if-eq v8, v15, :cond_b

    if-eq v8, v13, :cond_8

    if-eq v8, v14, :cond_7

    const/16 v4, 0x14

    if-eq v8, v4, :cond_8

    const/16 v4, 0x15

    if-eq v8, v4, :cond_8

    const/16 v4, 0x20

    const/16 v5, 0x32

    if-eq v8, v5, :cond_4

    const/16 v5, 0x33

    if-eq v8, v5, :cond_1

    const-string v4, "Invalid state in TokenScanner"

    invoke-static {v4}, Ld2/r;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v12}, Ld2/h;->l(C)Z

    move-result v5

    if-nez v5, :cond_2

    if-ne v12, v15, :cond_3

    :cond_2
    invoke-virtual {v2, v9}, Ld2/h;->m(C)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v12}, Ld2/h;->m(C)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v9}, Ld2/h;->m(C)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v12}, Ld2/h;->k(C)Z

    move-result v5

    if-nez v5, :cond_5

    if-ne v12, v15, :cond_6

    :cond_5
    invoke-virtual {v2, v9}, Ld2/h;->m(C)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v12}, Ld2/h;->m(C)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v9}, Ld2/h;->m(C)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_1
    const/16 v9, 0x7f

    const/16 v12, 0x20

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v2, v9, v12}, Ld2/h;->r(CC)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_2
    const/4 v8, -0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v9, v12}, Ld2/h;->s(CC)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v8, 0x28

    :cond_9
    :goto_3
    const/16 v9, 0x7f

    goto/16 :goto_a

    :cond_a
    if-ne v12, v15, :cond_9

    goto :goto_2

    :cond_b
    const/16 v16, 0x33

    const/16 v17, 0x32

    const/16 v18, 0x15

    const/16 v19, 0x14

    invoke-virtual {v2, v9, v12}, Ld2/h;->q(CC)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v9, 0x1e

    :goto_4
    const/16 v16, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v2, v9, v12}, Ld2/h;->s(CC)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x28

    goto :goto_4

    :cond_d
    invoke-virtual {v2, v12}, Ld2/h;->k(C)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v9, 0x32

    goto :goto_4

    :cond_e
    invoke-virtual {v2, v12}, Ld2/h;->l(C)Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v9, 0x33

    goto :goto_4

    :cond_f
    invoke-virtual {v2, v12}, Ld2/h;->o(C)Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v9, 0x14

    goto :goto_4

    :cond_10
    invoke-virtual {v2, v12}, Ld2/h;->p(C)Z

    move-result v9

    if-eqz v9, :cond_11

    const/16 v9, 0x15

    goto :goto_4

    :cond_11
    move v9, v8

    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_16

    if-eq v9, v13, :cond_13

    if-ne v9, v14, :cond_12

    goto :goto_6

    :cond_12
    move v5, v11

    goto :goto_7

    :cond_13
    :goto_6
    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ld2/n;

    invoke-virtual {v13}, Ld2/n;->a()I

    move-result v13

    if-ne v13, v5, :cond_14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_14
    :goto_7
    if-lez v10, :cond_15

    if-eqz v8, :cond_15

    new-instance v4, Ld2/n;

    sub-int v8, v11, v10

    const/4 v10, 0x0

    invoke-direct {v4, v8, v10}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v4, Ld2/n;

    invoke-direct {v4, v5, v9}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    const/16 v9, 0x7f

    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_16
    invoke-virtual {v2, v12}, Ld2/h;->y(C)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v2, v12}, Ld2/h;->u(C)Z

    move-result v9

    if-eqz v9, :cond_17

    goto :goto_8

    :cond_17
    const/16 v9, 0x7f

    if-ge v10, v9, :cond_1e

    aput-char v12, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_18
    :goto_8
    const/16 v9, 0x7f

    const/4 v13, 0x0

    if-lez v10, :cond_1d

    aget-char v14, v6, v13

    invoke-virtual {v2, v14}, Ld2/h;->z(C)Z

    move-result v14

    if-eqz v14, :cond_19

    sub-int v4, v11, v10

    new-instance v5, Ld2/n;

    invoke-direct {v5, v4, v15}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xa

    goto :goto_9

    :cond_19
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v6, v13, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v14}, Ld2/h;->n(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    sub-int v5, v11, v10

    new-instance v8, Ld2/n;

    invoke-direct {v8, v5, v4}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_9

    :cond_1a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v13, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v4}, Ld2/h;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sub-int v4, v11, v10

    new-instance v8, Ld2/n;

    invoke-direct {v8, v4, v5}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x3

    goto :goto_9

    :cond_1b
    if-eqz v8, :cond_1c

    sub-int v4, v11, v10

    new-instance v5, Ld2/n;

    invoke-direct {v5, v4, v13}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :cond_1c
    :goto_9
    const/4 v10, 0x0

    :cond_1d
    if-eqz v8, :cond_1e

    invoke-virtual {v2, v12}, Ld2/h;->u(C)Z

    move-result v4

    if-eqz v4, :cond_1e

    new-instance v4, Ld2/n;

    invoke-direct {v4, v11, v13}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :cond_1e
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move v9, v12

    const/16 v4, 0x7f

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Ld2/n;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Ld2/n;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iput-object v3, v0, Ld2/k$c;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public run()V
    .locals 2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/k$c;->c:Z

    iget-object v0, p0, Ld2/k$c;->b:Ld2/g;

    invoke-virtual {v0}, Ld2/g;->a()V

    invoke-static {}, Ld2/k;->d()Ld2/h;

    move-result-object v0

    instance-of v0, v0, Ld2/i;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ld2/k$c;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ld2/k$c;->d()V

    :goto_0
    iget-boolean v0, p0, Ld2/k$c;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/k$c;->b:Ld2/g;

    invoke-virtual {v0}, Ld2/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld2/k$c;->a:Ld2/k;

    iget-object v1, p0, Ld2/k$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ld2/k;->i(Ljava/util/List;)V

    :cond_2
    return-void
.end method
