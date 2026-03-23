.class public Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/a$a;
    }
.end annotation


# static fields
.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/lang/String;

.field static final g:Ljava/lang/String;

.field static final h:Ljava/lang/String;

.field static final i:Ljava/lang/String;

.field static final j:Ljava/lang/String;

.field static final k:Ljava/lang/String;


# instance fields
.field protected final a:Ll/a;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lh/k0;

    invoke-static {v0}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh/a;->c:Ljava/lang/String;

    const-class v0, Lh/v0;

    invoke-static {v0}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh/a;->e:Ljava/lang/String;

    const-class v1, Lh/f1;

    invoke-static {v1}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh/a;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh/a;->g:Ljava/lang/String;

    const-class v1, Lh/l0;

    invoke-static {v1}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lh/a;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh/a;->i:Ljava/lang/String;

    const-class v0, Lh/a1;

    invoke-static {v0}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh/a;->j:Ljava/lang/String;

    const-class v0, Lh/e1;

    invoke-static {v0}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh/a;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/a;

    invoke-direct {v0}, Ll/a;-><init>()V

    iput-object v0, p0, Lh/a;->a:Ll/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lh/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private A(Ljava/lang/Class;Le/h;[Ll/c;Lh/a$a;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "[",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Le/f;

    invoke-direct {v4}, Le/f;-><init>()V

    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Le/h;->h(II)V

    const/4 v7, 0x0

    invoke-interface {v1, v5, v7}, Le/h;->h(II)V

    sget-object v8, Lh/a;->c:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lh/a;->k:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")Z"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb6

    const-string v11, "hasPropertyFilters"

    invoke-interface {v1, v10, v8, v11, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x9a

    invoke-interface {v1, v9, v4}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v5, v7}, Le/h;->h(II)V

    invoke-interface {v1, v5, v6}, Le/h;->h(II)V

    const/4 v9, 0x2

    invoke-interface {v1, v5, v9}, Le/h;->h(II)V

    const/4 v9, 0x3

    invoke-interface {v1, v5, v9}, Le/h;->h(II)V

    const/4 v9, 0x4

    invoke-interface {v1, v5, v9}, Le/h;->h(II)V

    const/4 v9, 0x5

    const/16 v11, 0x15

    invoke-interface {v1, v11, v9}, Le/h;->h(II)V

    sget-object v9, Lh/a;->h:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(L"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb7

    const-string v15, "writeNoneASM"

    invoke-interface {v1, v14, v9, v15, v12}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xb1

    invoke-interface {v1, v9}, Le/h;->f(I)V

    invoke-interface {v1, v4}, Le/h;->c(Le/f;)V

    const-string v4, "out"

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v5, v9}, Le/h;->h(II)V

    const/16 v9, 0x5b

    const/16 v12, 0x10

    invoke-interface {v1, v12, v9}, Le/h;->h(II)V

    sget-object v9, Lh/a;->f:Ljava/lang/String;

    const-string v14, "write"

    const-string v15, "(I)V"

    invoke-interface {v1, v10, v9, v14, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    array-length v6, v2

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v5, v2}, Le/h;->h(II)V

    const/16 v2, 0x5d

    invoke-interface {v1, v12, v2}, Le/h;->h(II)V

    invoke-interface {v1, v10, v9, v14, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_19

    add-int/lit8 v11, v6, -0x1

    if-ne v9, v11, :cond_1

    const/16 v11, 0x5d

    goto :goto_1

    :cond_1
    const/16 v11, 0x2c

    :goto_1
    aget-object v7, v2, v9

    iget-object v12, v7, Ll/c;->e:Ljava/lang/Class;

    iget-object v10, v7, Ll/c;->a:Ljava/lang/String;

    invoke-interface {v1, v10}, Le/h;->k(Ljava/lang/Object;)V

    sget v10, Lh/a$a;->h:I

    const/16 v5, 0x3a

    invoke-interface {v1, v5, v10}, Le/h;->h(II)V

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x59

    if-eq v12, v10, :cond_18

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v12, v10, :cond_18

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v10, :cond_2

    goto/16 :goto_12

    :cond_2
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v12, v10, :cond_3

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x19

    invoke-interface {v1, v12, v10}, Le/h;->h(II)V

    invoke-interface {v1, v5}, Le/h;->f(I)V

    invoke-direct {v0, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    sget-object v5, Lh/a;->f:Ljava/lang/String;

    const-string v7, "writeLong"

    const-string v10, "(J)V"

    :goto_2
    const/16 v12, 0xb6

    invoke-interface {v1, v12, v5, v7, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x10

    invoke-interface {v1, v7, v11}, Le/h;->h(II)V

    invoke-interface {v1, v12, v5, v14, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v12, v0

    move-object v0, v4

    move/from16 v20, v6

    move/from16 v21, v9

    move-object v5, v13

    move-object v9, v15

    :goto_4
    const/16 v4, 0x19

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/16 v11, 0xb6

    :goto_5
    const/16 v13, 0x10

    goto/16 :goto_13

    :cond_3
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v12, v10, :cond_4

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x19

    invoke-interface {v1, v12, v10}, Le/h;->h(II)V

    invoke-interface {v1, v5}, Le/h;->f(I)V

    invoke-direct {v0, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const/4 v5, 0x4

    invoke-interface {v1, v5}, Le/h;->f(I)V

    sget-object v5, Lh/a;->f:Ljava/lang/String;

    const-string v7, "writeFloat"

    const-string v10, "(FZ)V"

    goto :goto_2

    :cond_4
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v12, v10, :cond_5

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x19

    invoke-interface {v1, v12, v10}, Le/h;->h(II)V

    invoke-interface {v1, v5}, Le/h;->f(I)V

    invoke-direct {v0, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const/4 v5, 0x4

    invoke-interface {v1, v5}, Le/h;->f(I)V

    sget-object v5, Lh/a;->f:Ljava/lang/String;

    const-string v7, "writeDouble"

    const-string v10, "(DZ)V"

    goto :goto_2

    :cond_5
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v10, :cond_6

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x19

    invoke-interface {v1, v12, v10}, Le/h;->h(II)V

    invoke-interface {v1, v5}, Le/h;->f(I)V

    invoke-direct {v0, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    sget-object v5, Lh/a;->f:Ljava/lang/String;

    const-string v7, "(Z)V"

    const/16 v10, 0xb6

    invoke-interface {v1, v10, v5, v14, v7}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const/16 v7, 0x10

    invoke-interface {v1, v7, v11}, Le/h;->h(II)V

    invoke-interface {v1, v10, v5, v14, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v5, 0xb8

    if-ne v12, v10, :cond_7

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x19

    invoke-interface {v1, v12, v10}, Le/h;->h(II)V

    invoke-direct {v0, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const-string v7, "toString"

    const-string v10, "(C)Ljava/lang/String;"

    const-string v12, "java/lang/Character"

    invoke-interface {v1, v5, v12, v7, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x10

    invoke-interface {v1, v10, v11}, Le/h;->h(II)V

    sget-object v5, Lh/a;->f:Ljava/lang/String;

    const-string v7, "writeString"

    const-string v11, "(Ljava/lang/String;C)V"

    const/16 v12, 0xb6

    invoke-interface {v1, v12, v5, v7, v11}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const/16 v10, 0x10

    const-class v5, Ljava/lang/String;

    if-ne v12, v5, :cond_8

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v12, 0x19

    invoke-interface {v1, v12, v5}, Le/h;->h(II)V

    invoke-direct {v0, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    invoke-interface {v1, v10, v11}, Le/h;->h(II)V

    sget-object v5, Lh/a;->f:Ljava/lang/String;

    const-string v7, "writeString"

    const-string v10, "(Ljava/lang/String;C)V"

    const/16 v11, 0xb6

    invoke-interface {v1, v11, v5, v7, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    move-object v0, v4

    move/from16 v20, v6

    move/from16 v21, v9

    move-object v5, v13

    move-object v9, v15

    const/16 v4, 0x19

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_8
    const/16 v5, 0x19

    const/16 v10, 0xb6

    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v5, v12}, Le/h;->h(II)V

    const/16 v5, 0x59

    invoke-interface {v1, v5}, Le/h;->f(I)V

    invoke-direct {v0, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    sget-object v5, Lh/a;->f:Ljava/lang/String;

    const-string v7, "writeEnum"

    const-string v12, "(Ljava/lang/Enum;)V"

    invoke-interface {v1, v10, v5, v7, v12}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const-string v10, "writeWithFieldName"

    if-eqz v5, :cond_14

    iget-object v5, v7, Ll/c;->f:Ljava/lang/reflect/Type;

    instance-of v12, v5, Ljava/lang/Class;

    if-eqz v12, :cond_a

    const-class v5, Ljava/lang/Object;

    goto :goto_7

    :cond_a
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v12, 0x0

    aget-object v5, v5, v12

    :goto_7
    instance-of v12, v5, Ljava/lang/Class;

    if-eqz v12, :cond_b

    move-object v12, v5

    check-cast v12, Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    if-ne v12, v2, :cond_c

    :cond_b
    const/4 v12, 0x0

    :cond_c
    invoke-direct {v0, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const/16 v2, 0xc0

    move/from16 v20, v6

    const-string v6, "java/util/List"

    invoke-interface {v1, v2, v6}, Le/h;->b(ILjava/lang/String;)V

    const-string v2, "list"

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v6

    move/from16 v21, v9

    const/16 v9, 0x3a

    invoke-interface {v1, v9, v6}, Le/h;->h(II)V

    const-class v6, Ljava/lang/String;

    if-ne v12, v6, :cond_d

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x19

    invoke-interface {v1, v6, v5}, Le/h;->h(II)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v6, v2}, Le/h;->h(II)V

    sget-object v2, Lh/a;->f:Ljava/lang/String;

    const-string v5, "(Ljava/util/List;)V"

    const/16 v6, 0xb6

    invoke-interface {v1, v6, v2, v14, v5}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    move/from16 v22, v11

    move-object v5, v13

    move-object v10, v15

    const/16 v2, 0x15

    const/16 v6, 0x19

    const/16 v7, 0x10

    const/16 v9, 0xb6

    goto/16 :goto_e

    :cond_d
    new-instance v6, Le/f;

    invoke-direct {v6}, Le/f;-><init>()V

    new-instance v9, Le/f;

    invoke-direct {v9}, Le/f;-><init>()V

    move/from16 v22, v11

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v23, v10

    const/16 v10, 0x19

    invoke-interface {v1, v10, v11}, Le/h;->h(II)V

    const/16 v11, 0xc7

    invoke-interface {v1, v11, v9}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v10, v11}, Le/h;->h(II)V

    sget-object v11, Lh/a;->f:Ljava/lang/String;

    const-string v10, "writeNull"

    move-object/from16 v18, v5

    const-string v5, "()V"

    move-object/from16 v24, v8

    const/16 v8, 0xb6

    invoke-interface {v1, v8, v11, v10, v5}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xa7

    invoke-interface {v1, v5, v6}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v9}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x19

    invoke-interface {v1, v8, v5}, Le/h;->h(II)V

    const-string v5, "size"

    const-string v9, "()I"

    const-string v10, "java/util/List"

    const/16 v8, 0xb9

    invoke-interface {v1, v8, v10, v5, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "size"

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x36

    invoke-interface {v1, v8, v5}, Le/h;->h(II)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x19

    invoke-interface {v1, v8, v5}, Le/h;->h(II)V

    const/16 v5, 0x5b

    const/16 v8, 0x10

    invoke-interface {v1, v8, v5}, Le/h;->h(II)V

    const/16 v5, 0xb6

    invoke-interface {v1, v5, v11, v14, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Le/f;

    invoke-direct {v5}, Le/f;-><init>()V

    new-instance v8, Le/f;

    invoke-direct {v8}, Le/f;-><init>()V

    new-instance v9, Le/f;

    invoke-direct {v9}, Le/f;-><init>()V

    const/4 v10, 0x3

    invoke-interface {v1, v10}, Le/h;->f(I)V

    const/16 v10, 0x36

    move-object/from16 v25, v6

    const-string v6, "i"

    move-object/from16 v26, v13

    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v10, v13}, Le/h;->h(II)V

    invoke-interface {v1, v5}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v13, 0x15

    invoke-interface {v1, v13, v10}, Le/h;->h(II)V

    const-string v10, "size"

    invoke-virtual {v3, v10}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v13, v10}, Le/h;->h(II)V

    const/16 v10, 0xa2

    invoke-interface {v1, v10, v9}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v13, v10}, Le/h;->h(II)V

    const/16 v10, 0x99

    invoke-interface {v1, v10, v8}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v13, 0x19

    invoke-interface {v1, v13, v10}, Le/h;->h(II)V

    const/16 v10, 0x2c

    const/16 v13, 0x10

    invoke-interface {v1, v13, v10}, Le/h;->h(II)V

    const/16 v10, 0xb6

    invoke-interface {v1, v10, v11, v14, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0x19

    invoke-interface {v1, v8, v2}, Le/h;->h(II)V

    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0x15

    invoke-interface {v1, v8, v2}, Le/h;->h(II)V

    const-string v2, "get"

    const-string v8, "(I)Ljava/lang/Object;"

    const-string v10, "java/util/List"

    const/16 v13, 0xb9

    invoke-interface {v1, v13, v10, v2, v8}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "list_item"

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x3a

    invoke-interface {v1, v10, v8}, Le/h;->h(II)V

    new-instance v8, Le/f;

    invoke-direct {v8}, Le/f;-><init>()V

    new-instance v10, Le/f;

    invoke-direct {v10}, Le/f;-><init>()V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v27, v15

    const/16 v15, 0x19

    invoke-interface {v1, v15, v13}, Le/h;->h(II)V

    const/16 v13, 0xc7

    invoke-interface {v1, v13, v10}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v15, v13}, Le/h;->h(II)V

    const-string v13, "writeNull"

    const-string v15, "()V"

    move-object/from16 v28, v4

    const/16 v4, 0xb6

    invoke-interface {v1, v4, v11, v13, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa7

    invoke-interface {v1, v4, v8}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v10}, Le/h;->c(Le/f;)V

    new-instance v4, Le/f;

    invoke-direct {v4}, Le/f;-><init>()V

    new-instance v10, Le/f;

    invoke-direct {v10}, Le/f;-><init>()V

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v13

    const/16 v15, 0x19

    invoke-interface {v1, v15, v13}, Le/h;->h(II)V

    const-string v13, "getClass"

    const-string v15, "()Ljava/lang/Class;"

    move-object/from16 v29, v11

    const-string v11, "java/lang/Object"

    move-object/from16 v30, v9

    const/16 v9, 0xb6

    invoke-interface {v1, v9, v11, v13, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v9

    invoke-interface {v1, v9}, Le/h;->k(Ljava/lang/Object;)V

    const/16 v9, 0xa6

    invoke-interface {v1, v9, v10}, Le/h;->l(ILe/f;)V

    invoke-direct {v0, v3, v1, v7, v12}, Lh/a;->k(Lh/a$a;Le/h;Ll/c;Ljava/lang/Class;)V

    const-string v9, "list_item_desc"

    invoke-virtual {v3, v9}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v9

    const/16 v11, 0x3a

    invoke-interface {v1, v11, v9}, Le/h;->h(II)V

    new-instance v9, Le/f;

    invoke-direct {v9}, Le/f;-><init>()V

    new-instance v11, Le/f;

    invoke-direct {v11}, Le/f;-><init>()V

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "list_item_desc"

    invoke-virtual {v3, v13}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v13

    const/16 v15, 0x19

    invoke-interface {v1, v15, v13}, Le/h;->h(II)V

    sget-object v13, Lh/a;->h:Ljava/lang/String;

    const/16 v15, 0xc1

    invoke-interface {v1, v15, v13}, Le/h;->b(ILjava/lang/String;)V

    const/16 v15, 0x99

    invoke-interface {v1, v15, v9}, Le/h;->l(ILe/f;)V

    const-string v15, "list_item_desc"

    invoke-virtual {v3, v15}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v15

    const/16 v0, 0x19

    invoke-interface {v1, v0, v15}, Le/h;->h(II)V

    const/16 v15, 0xc0

    invoke-interface {v1, v15, v13}, Le/h;->b(ILjava/lang/String;)V

    const/4 v15, 0x1

    invoke-interface {v1, v0, v15}, Le/h;->h(II)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v0, v15}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Le/h;->f(I)V

    move-object/from16 v17, v5

    move-object/from16 v31, v8

    goto :goto_8

    :cond_e
    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v15, 0x15

    invoke-interface {v1, v15, v0}, Le/h;->h(II)V

    const-string v0, "valueOf"

    const-string v15, "(I)Ljava/lang/Integer;"

    move-object/from16 v17, v5

    const-string v5, "java/lang/Integer"

    move-object/from16 v31, v8

    const/16 v8, 0xb8

    invoke-interface {v1, v8, v5, v0, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-static {v12}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    iget v0, v7, Ll/c;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "writeAsArrayNonContext"

    move-object/from16 v24, v10

    const/16 v10, 0xb6

    invoke-interface {v1, v10, v13, v15, v0}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-interface {v1, v0, v11}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v9}, Le/h;->c(Le/f;)V

    goto :goto_9

    :cond_f
    move-object/from16 v17, v5

    move-object/from16 v31, v8

    move-object/from16 v8, v24

    move-object/from16 v5, v26

    move-object/from16 v24, v10

    :goto_9
    const-string v0, "list_item_desc"

    invoke-virtual {v3, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v9, 0x19

    invoke-interface {v1, v9, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {v1, v9, v0}, Le/h;->h(II)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v9, v10}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v1, v0}, Le/h;->f(I)V

    goto :goto_a

    :cond_10
    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v9, 0x15

    invoke-interface {v1, v9, v0}, Le/h;->h(II)V

    const-string v0, "valueOf"

    const-string v9, "(I)Ljava/lang/Integer;"

    const-string v10, "java/lang/Integer"

    const/16 v13, 0xb8

    invoke-interface {v1, v13, v10, v0, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-static {v12}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    iget v0, v7, Ll/c;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v0, Lh/a;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb9

    invoke-interface {v1, v10, v0, v14, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Le/h;->c(Le/f;)V

    const/16 v0, 0xa7

    invoke-interface {v1, v0, v4}, Le/h;->l(ILe/f;)V

    move-object/from16 v0, v24

    goto :goto_b

    :cond_11
    move-object/from16 v17, v5

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    move-object/from16 v29, v11

    move-object/from16 v8, v24

    move-object/from16 v5, v26

    move-object v0, v10

    :goto_b
    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    const/16 v0, 0x19

    const/4 v9, 0x1

    invoke-interface {v1, v0, v9}, Le/h;->h(II)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1, v9}, Le/h;->f(I)V

    const/16 v2, 0x15

    goto :goto_c

    :cond_12
    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x15

    invoke-interface {v1, v2, v0}, Le/h;->h(II)V

    const-string v0, "valueOf"

    const-string v9, "(I)Ljava/lang/Integer;"

    const-string v10, "java/lang/Integer"

    const/16 v11, 0xb8

    invoke-interface {v1, v11, v10, v0, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    iget v0, v7, Ll/c;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    const-string v7, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v9, v23

    const/16 v10, 0xb6

    goto :goto_d

    :cond_13
    move-object/from16 v9, v23

    const/16 v10, 0xb6

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    const-string v7, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    :goto_d
    invoke-interface {v1, v10, v0, v9, v7}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Le/h;->c(Le/f;)V

    move-object/from16 v0, v31

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    invoke-interface {v1, v0, v4}, Le/h;->a(II)V

    move-object/from16 v0, v17

    const/16 v4, 0xa7

    invoke-interface {v1, v4, v0}, Le/h;->l(ILe/f;)V

    move-object/from16 v0, v30

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x19

    invoke-interface {v1, v6, v4}, Le/h;->h(II)V

    const/16 v4, 0x5d

    const/16 v7, 0x10

    invoke-interface {v1, v7, v4}, Le/h;->h(II)V

    move-object/from16 v10, v27

    move-object/from16 v4, v29

    const/16 v9, 0xb6

    invoke-interface {v1, v9, v4, v14, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v25

    invoke-interface {v1, v4}, Le/h;->c(Le/f;)V

    :goto_e
    invoke-virtual {v3, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v6, v4}, Le/h;->h(II)V

    move/from16 v11, v22

    invoke-interface {v1, v7, v11}, Le/h;->h(II)V

    sget-object v4, Lh/a;->f:Ljava/lang/String;

    invoke-interface {v1, v9, v4, v14, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, p0

    move-object v9, v10

    goto/16 :goto_4

    :cond_14
    move-object v0, v4

    move/from16 v20, v6

    move/from16 v21, v9

    move-object v9, v10

    move-object v5, v13

    move-object v10, v15

    const/16 v2, 0x15

    new-instance v4, Le/f;

    invoke-direct {v4}, Le/f;-><init>()V

    new-instance v6, Le/f;

    invoke-direct {v6}, Le/f;-><init>()V

    move-object/from16 v13, p0

    invoke-direct {v13, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const/16 v15, 0x59

    invoke-interface {v1, v15}, Le/h;->f(I)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field_"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v10

    iget-object v10, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v15, 0x3a

    invoke-interface {v1, v15, v10}, Le/h;->h(II)V

    const/16 v10, 0xc7

    invoke-interface {v1, v10, v6}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v15, 0x19

    invoke-interface {v1, v15, v10}, Le/h;->h(II)V

    sget-object v10, Lh/a;->f:Ljava/lang/String;

    const-string v15, "writeNull"

    move/from16 v22, v11

    const-string v11, "()V"

    move-object/from16 v28, v0

    const/16 v0, 0xb6

    invoke-interface {v1, v0, v10, v15, v11}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-interface {v1, v0, v4}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v6}, Le/h;->c(Le/f;)V

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    new-instance v6, Le/f;

    invoke-direct {v6}, Le/f;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v11

    const/16 v15, 0x19

    invoke-interface {v1, v15, v11}, Le/h;->h(II)V

    const-string v11, "getClass"

    const-string v15, "()Ljava/lang/Class;"

    move-object/from16 v18, v10

    const-string v10, "java/lang/Object"

    move-object/from16 v19, v4

    const/16 v4, 0xb6

    invoke-interface {v1, v4, v10, v11, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v4

    invoke-interface {v1, v4}, Le/h;->k(Ljava/lang/Object;)V

    const/16 v4, 0xa6

    invoke-interface {v1, v4, v6}, Le/h;->l(ILe/f;)V

    invoke-direct {v13, v3, v1, v7}, Lh/a;->j(Lh/a$a;Le/h;Ll/c;)V

    const-string v4, "fied_ser"

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x3a

    invoke-interface {v1, v11, v10}, Le/h;->h(II)V

    new-instance v10, Le/f;

    invoke-direct {v10}, Le/f;-><init>()V

    new-instance v11, Le/f;

    invoke-direct {v11}, Le/f;-><init>()V

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v15

    const/16 v13, 0x19

    invoke-interface {v1, v13, v15}, Le/h;->h(II)V

    sget-object v15, Lh/a;->h:Ljava/lang/String;

    const/16 v13, 0xc1

    invoke-interface {v1, v13, v15}, Le/h;->b(ILjava/lang/String;)V

    const/16 v13, 0x99

    invoke-interface {v1, v13, v10}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v23, v9

    const/16 v9, 0x19

    invoke-interface {v1, v9, v13}, Le/h;->h(II)V

    const/16 v13, 0xc0

    invoke-interface {v1, v13, v15}, Le/h;->b(ILjava/lang/String;)V

    const/4 v13, 0x1

    invoke-interface {v1, v9, v13}, Le/h;->h(II)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v9

    const/16 v13, 0x19

    invoke-interface {v1, v13, v9}, Le/h;->h(II)V

    sget v9, Lh/a$a;->h:I

    invoke-interface {v1, v13, v9}, Le/h;->h(II)V

    invoke-static {v12}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v9

    invoke-interface {v1, v9}, Le/h;->k(Ljava/lang/Object;)V

    iget v9, v7, Ll/c;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Le/h;->k(Ljava/lang/Object;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, "writeAsArrayNonContext"

    move-object/from16 v17, v6

    const/16 v6, 0xb6

    invoke-interface {v1, v6, v15, v13, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xa7

    invoke-interface {v1, v6, v11}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v10}, Le/h;->c(Le/f;)V

    goto :goto_f

    :cond_15
    move-object/from16 v17, v6

    move-object/from16 v23, v9

    :goto_f
    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x19

    invoke-interface {v1, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x1

    invoke-interface {v1, v6, v4}, Le/h;->h(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v6, v4}, Le/h;->h(II)V

    sget v4, Lh/a$a;->h:I

    invoke-interface {v1, v6, v4}, Le/h;->h(II)V

    invoke-static {v12}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v4

    invoke-interface {v1, v4}, Le/h;->k(Ljava/lang/Object;)V

    iget v4, v7, Ll/c;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v4, Lh/a;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0xb9

    invoke-interface {v1, v10, v4, v14, v6}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Le/h;->c(Le/f;)V

    const/16 v4, 0xa7

    invoke-interface {v1, v4, v0}, Le/h;->l(ILe/f;)V

    move-object/from16 v4, v17

    invoke-interface {v1, v4}, Le/h;->c(Le/f;)V

    invoke-virtual {v7}, Ll/c;->j()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x19

    const/4 v10, 0x1

    invoke-interface {v1, v6, v10}, Le/h;->h(II)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v6, v2}, Le/h;->h(II)V

    if-eqz v4, :cond_16

    invoke-interface {v1, v4}, Le/h;->k(Ljava/lang/Object;)V

    const-string v2, "writeWithFormat"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/String;)V"

    const/16 v11, 0xb6

    invoke-interface {v1, v11, v9, v2, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    const/4 v6, 0x0

    goto :goto_11

    :cond_16
    const/16 v11, 0xb6

    sget v2, Lh/a$a;->h:I

    invoke-interface {v1, v6, v2}, Le/h;->h(II)V

    iget-object v2, v7, Ll/c;->f:Ljava/lang/reflect/Type;

    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_17

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v4, v23

    invoke-interface {v1, v11, v9, v4, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_17
    move-object/from16 v4, v23

    const/16 v2, 0x19

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_asm_fieldType"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Ljava/lang/reflect/Type;"

    const/16 v13, 0xb4

    invoke-interface {v1, v13, v2, v11, v12}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v7, Ll/c;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Le/h;->k(Ljava/lang/Object;)V

    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    const/16 v11, 0xb6

    invoke-interface {v1, v11, v9, v4, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    move-object/from16 v0, v19

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x19

    invoke-interface {v1, v4, v2}, Le/h;->h(II)V

    move/from16 v2, v22

    const/16 v7, 0x10

    invoke-interface {v1, v7, v2}, Le/h;->h(II)V

    move-object/from16 v2, v18

    move-object/from16 v9, v27

    invoke-interface {v1, v11, v2, v14, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, p0

    goto/16 :goto_5

    :cond_18
    :goto_12
    move-object v0, v4

    move/from16 v20, v6

    move/from16 v21, v9

    move v2, v11

    move-object v5, v13

    move-object v9, v15

    const/16 v4, 0x19

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/16 v11, 0xb6

    invoke-virtual {v3, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v4, v12}, Le/h;->h(II)V

    const/16 v12, 0x59

    invoke-interface {v1, v12}, Le/h;->f(I)V

    move-object/from16 v12, p0

    invoke-direct {v12, v1, v3, v7}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    sget-object v7, Lh/a;->f:Ljava/lang/String;

    const-string v13, "writeInt"

    invoke-interface {v1, v11, v7, v13, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x10

    invoke-interface {v1, v13, v2}, Le/h;->h(II)V

    invoke-interface {v1, v11, v7, v14, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    add-int/lit8 v2, v21, 0x1

    move-object v4, v0

    move-object v13, v5

    move-object v15, v9

    move-object v0, v12

    move/from16 v6, v20

    const/16 v5, 0x19

    const/4 v7, 0x0

    const/16 v10, 0xb6

    const/16 v11, 0x15

    const/16 v12, 0x10

    move v9, v2

    move-object/from16 v2, p3

    goto/16 :goto_0

    :cond_19
    move-object v12, v0

    return-void
.end method

.method private B(Ljava/lang/Class;Le/h;[Ll/c;Lh/a$a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "[",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    new-instance v12, Le/f;

    invoke-direct {v12}, Le/f;-><init>()V

    array-length v13, v10

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    const-string v1, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    const-string v2, "(I)Z"

    const-string v3, "isEnabled"

    const-string v14, "write"

    const-string v15, "(L"

    const-string v5, "out"

    const/16 v6, 0x19

    if-nez v0, :cond_3

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    new-instance v4, Le/f;

    invoke-direct {v4}, Le/f;-><init>()V

    move-object/from16 v21, v12

    invoke-virtual {v11, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v6, v12}, Le/h;->h(II)V

    sget-object v12, Lh/g1;->o:Lh/g1;

    iget v12, v12, Lh/g1;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v12, Lh/a;->f:Ljava/lang/String;

    const/16 v6, 0xb6

    invoke-interface {v9, v6, v12, v3, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x9a

    invoke-interface {v9, v6, v4}, Le/h;->l(ILe/f;)V

    array-length v6, v10

    const/4 v12, 0x0

    const/16 v22, 0x0

    :goto_0
    if-ge v12, v6, :cond_1

    move/from16 v23, v6

    aget-object v6, v10, v12

    iget-object v6, v6, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    const/16 v22, 0x1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v23

    goto :goto_0

    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual {v11, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v6

    const/16 v12, 0x19

    invoke-interface {v9, v12, v6}, Le/h;->h(II)V

    sget-object v6, Lh/g1;->C:Lh/g1;

    iget v6, v6, Lh/g1;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v6, Lh/a;->f:Ljava/lang/String;

    const/16 v12, 0xb6

    invoke-interface {v9, v12, v6, v3, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x99

    goto :goto_1

    :cond_2
    const/16 v6, 0xa7

    :goto_1
    invoke-interface {v9, v6, v0}, Le/h;->l(ILe/f;)V

    invoke-interface {v9, v4}, Le/h;->c(Le/f;)V

    const/4 v4, 0x0

    const/16 v6, 0x19

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x1

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x2

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x3

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x4

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x5

    const/16 v6, 0x15

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    sget-object v4, Lh/a;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0xb7

    invoke-interface {v9, v12, v4, v14, v6}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb1

    invoke-interface {v9, v4}, Le/h;->f(I)V

    invoke-interface {v9, v0}, Le/h;->c(Le/f;)V

    goto :goto_2

    :cond_3
    move-object/from16 v21, v12

    :goto_2
    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    const/4 v4, 0x0

    const/16 v6, 0x19

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x1

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x2

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x5

    const/16 v6, 0x15

    invoke-interface {v9, v6, v4}, Le/h;->h(II)V

    sget-object v4, Lh/a;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";Ljava/lang/Object;I)Z"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "writeReference"

    const/16 v8, 0xb6

    invoke-interface {v9, v8, v4, v12, v6}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x99

    invoke-interface {v9, v4, v0}, Le/h;->l(ILe/f;)V

    const/16 v4, 0xb1

    invoke-interface {v9, v4}, Le/h;->f(I)V

    invoke-interface {v9, v0}, Le/h;->c(Le/f;)V

    :cond_4
    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "writeAsArrayNonContext"

    goto :goto_3

    :cond_5
    const-string v0, "writeAsArray"

    goto :goto_3

    :cond_6
    const-string v0, "writeAsArrayNormal"

    :goto_3
    invoke-static/range {p4 .. p4}, Lh/a$a;->e(Lh/a$a;)Lh/b1;

    move-result-object v4

    iget v4, v4, Lh/b1;->g:I

    sget-object v6, Lh/g1;->w:Lh/g1;

    iget v8, v6, Lh/g1;->a:I

    and-int/2addr v4, v8

    if-nez v4, :cond_7

    new-instance v4, Le/f;

    invoke-direct {v4}, Le/f;-><init>()V

    invoke-virtual {v11, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v8

    const/16 v12, 0x19

    invoke-interface {v9, v12, v8}, Le/h;->h(II)V

    iget v6, v6, Lh/g1;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v6, Lh/a;->f:Ljava/lang/String;

    const/16 v8, 0xb6

    invoke-interface {v9, v8, v6, v3, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x99

    invoke-interface {v9, v2, v4}, Le/h;->l(ILe/f;)V

    const/4 v2, 0x0

    invoke-interface {v9, v12, v2}, Le/h;->h(II)V

    const/4 v2, 0x1

    invoke-interface {v9, v12, v2}, Le/h;->h(II)V

    const/4 v2, 0x2

    invoke-interface {v9, v12, v2}, Le/h;->h(II)V

    const/4 v2, 0x3

    invoke-interface {v9, v12, v2}, Le/h;->h(II)V

    const/4 v2, 0x4

    invoke-interface {v9, v12, v2}, Le/h;->h(II)V

    const/4 v2, 0x5

    const/16 v3, 0x15

    invoke-interface {v9, v3, v2}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb6

    invoke-interface {v9, v3, v2, v0, v1}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-interface {v9, v0}, Le/h;->f(I)V

    invoke-interface {v9, v4}, Le/h;->c(Le/f;)V

    const/16 v6, 0x15

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    const/16 v3, 0x19

    invoke-interface {v9, v3, v2}, Le/h;->h(II)V

    const/4 v2, 0x1

    invoke-interface {v9, v3, v2}, Le/h;->h(II)V

    const/4 v2, 0x2

    invoke-interface {v9, v3, v2}, Le/h;->h(II)V

    const/4 v2, 0x3

    invoke-interface {v9, v3, v2}, Le/h;->h(II)V

    const/4 v2, 0x4

    invoke-interface {v9, v3, v2}, Le/h;->h(II)V

    const/4 v2, 0x5

    const/16 v6, 0x15

    invoke-interface {v9, v6, v2}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb6

    invoke-interface {v9, v3, v2, v0, v1}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-interface {v9, v0}, Le/h;->f(I)V

    :goto_4
    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v0

    const-string v8, "parent"

    const-string v12, "("

    if-nez v0, :cond_8

    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-interface {v9, v1, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lh/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getContext"

    const/16 v4, 0xb6

    invoke-interface {v9, v4, v0, v3, v1}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-interface {v9, v3, v1}, Le/h;->h(II)V

    const/4 v1, 0x1

    const/16 v3, 0x19

    invoke-interface {v9, v3, v1}, Le/h;->h(II)V

    invoke-virtual {v11, v8}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v3, v1}, Le/h;->h(II)V

    const/4 v1, 0x2

    invoke-interface {v9, v3, v1}, Le/h;->h(II)V

    const/4 v1, 0x3

    invoke-interface {v9, v3, v1}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->e(Lh/a$a;)Lh/b1;

    move-result-object v1

    iget v1, v1, Lh/b1;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Le/h;->k(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/Object;Ljava/lang/Object;I)V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setContext"

    const/16 v3, 0xb6

    invoke-interface {v9, v3, v0, v2, v1}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static/range {p4 .. p4}, Lh/a$a;->e(Lh/a$a;)Lh/b1;

    move-result-object v0

    iget v0, v0, Lh/b1;->g:I

    sget-object v1, Lh/g1;->p:Lh/g1;

    iget v1, v1, Lh/g1;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    const/16 v4, 0x7b

    const/16 v3, 0x10

    if-nez v0, :cond_b

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface {v9, v3, v4}, Le/h;->h(II)V

    move-object/from16 v18, v8

    goto/16 :goto_9

    :cond_b
    :goto_6
    new-instance v1, Le/f;

    invoke-direct {v1}, Le/f;-><init>()V

    new-instance v2, Le/f;

    invoke-direct {v2}, Le/f;-><init>()V

    new-instance v6, Le/f;

    invoke-direct {v6}, Le/f;-><init>()V

    if-nez v0, :cond_c

    const/4 v0, 0x1

    const/16 v3, 0x19

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    const/4 v0, 0x4

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    const/4 v4, 0x2

    invoke-interface {v9, v3, v4}, Le/h;->h(II)V

    sget-object v4, Lh/a;->c:Ljava/lang/String;

    const-string v0, "isWriteClassName"

    const-string v3, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    move-object/from16 v18, v8

    const/16 v8, 0xb6

    invoke-interface {v9, v8, v4, v0, v3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    invoke-interface {v9, v0, v2}, Le/h;->l(ILe/f;)V

    goto :goto_7

    :cond_c
    move-object/from16 v18, v8

    const/16 v8, 0xb6

    :goto_7
    const/4 v0, 0x4

    const/16 v3, 0x19

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    const/4 v0, 0x2

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    const-string v0, "getClass"

    const-string v4, "()Ljava/lang/Class;"

    const-string v3, "java/lang/Object"

    invoke-interface {v9, v8, v3, v0, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa5

    invoke-interface {v9, v0, v2}, Le/h;->l(ILe/f;)V

    invoke-interface {v9, v6}, Le/h;->c(Le/f;)V

    invoke-virtual {v11, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    const/16 v0, 0x7b

    const/16 v4, 0x10

    invoke-interface {v9, v4, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->f:Ljava/lang/String;

    const-string v4, "(I)V"

    invoke-interface {v9, v8, v0, v14, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->e(Lh/a$a;)Lh/b1;

    move-result-object v4

    iget-object v4, v4, Lh/b1;->c:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-static/range {p4 .. p4}, Lh/a$a;->e(Lh/a$a;)Lh/b1;

    move-result-object v4

    iget-object v4, v4, Lh/b1;->c:Ljava/lang/String;

    invoke-interface {v9, v4}, Le/h;->k(Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-interface {v9, v0}, Le/h;->f(I)V

    :goto_8
    const/4 v0, 0x2

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";Ljava/lang/String;Ljava/lang/Object;)V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "writeClassName"

    const/16 v6, 0xb6

    invoke-interface {v9, v6, v0, v4, v3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2c

    const/16 v3, 0x10

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    const/16 v0, 0xa7

    invoke-interface {v9, v0, v1}, Le/h;->l(ILe/f;)V

    invoke-interface {v9, v2}, Le/h;->c(Le/f;)V

    const/16 v4, 0x7b

    invoke-interface {v9, v3, v4}, Le/h;->h(II)V

    invoke-interface {v9, v1}, Le/h;->c(Le/f;)V

    :goto_9
    const-string v0, "seperator"

    invoke-virtual {v11, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v9, v1, v0}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {v7, v9, v11}, Lh/a;->c(Le/h;Lh/a$a;)V

    :cond_e
    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v11, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v9, v2, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->f:Ljava/lang/String;

    const-string v6, "isNotWriteDefaultValue"

    const-string v8, "()Z"

    const/16 v15, 0xb6

    invoke-interface {v9, v15, v0, v6, v8}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notWriteDefaultValue"

    invoke-virtual {v11, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v1, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {v9, v2, v0}, Le/h;->h(II)V

    const/4 v0, 0x0

    invoke-interface {v9, v2, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lh/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")Z"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "checkValue"

    const/16 v15, 0xb6

    invoke-interface {v9, v15, v0, v8, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "checkValue"

    invoke-virtual {v11, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v1, v2}, Le/h;->h(II)V

    const/4 v8, 0x1

    const/16 v15, 0x19

    invoke-interface {v9, v15, v8}, Le/h;->h(II)V

    const/4 v2, 0x0

    invoke-interface {v9, v15, v2}, Le/h;->h(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")Z"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "hasNameFilters"

    const/16 v4, 0xb6

    invoke-interface {v9, v4, v0, v6, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasNameFilters"

    invoke-virtual {v11, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v1, v0}, Le/h;->h(II)V

    goto :goto_a

    :cond_f
    const/16 v4, 0xb6

    const/4 v8, 0x1

    const/16 v15, 0x19

    :goto_a
    const/4 v6, 0x0

    :goto_b
    if-ge v6, v13, :cond_1b

    aget-object v2, v10, v6

    iget-object v0, v2, Ll/c;->e:Ljava/lang/Class;

    iget-object v1, v2, Ll/c;->a:Ljava/lang/String;

    invoke-interface {v9, v1}, Le/h;->k(Ljava/lang/Object;)V

    const/16 v1, 0x3a

    sget v3, Lh/a$a;->h:I

    invoke-interface {v9, v1, v3}, Le/h;->h(II)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1a

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1a

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    goto/16 :goto_d

    :cond_10
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v3, p1

    if-ne v0, v1, :cond_11

    invoke-direct {v7, v3, v9, v2, v11}, Lh/a;->p(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V

    :goto_c
    move-object v8, v3

    move-object/from16 v24, v5

    move/from16 v16, v6

    const/16 v15, 0x15

    goto/16 :goto_10

    :cond_11
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    invoke-direct {v7, v3, v9, v2, v11}, Lh/a;->h(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V

    goto :goto_c

    :cond_12
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    invoke-direct {v7, v3, v9, v2, v11}, Lh/a;->e(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V

    goto :goto_c

    :cond_13
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_14

    const-string v0, "boolean"

    invoke-virtual {v11, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v17

    const/16 v19, 0x5a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move-object/from16 v2, p2

    move-object v8, v3

    const/16 v15, 0x10

    move-object/from16 v3, v20

    move-object/from16 v4, p4

    move-object/from16 v24, v5

    const/16 v15, 0x15

    move/from16 v5, v17

    move/from16 v16, v6

    move/from16 v6, v19

    goto/16 :goto_f

    :cond_14
    move-object/from16 v20, v2

    move-object v8, v3

    move-object/from16 v24, v5

    move/from16 v16, v6

    const/16 v15, 0x15

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_15

    const-string v0, "char"

    invoke-virtual {v11, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    goto :goto_e

    :cond_15
    const-class v1, Ljava/lang/String;

    move-object/from16 v3, v20

    if-ne v0, v1, :cond_16

    invoke-direct {v7, v8, v9, v3, v11}, Lh/a;->w(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V

    goto :goto_10

    :cond_16
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_17

    invoke-direct {v7, v8, v9, v3, v11}, Lh/a;->d(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V

    goto :goto_10

    :cond_17
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {v7, v8, v9, v3, v11}, Lh/a;->o(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V

    goto :goto_10

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {v7, v8, v9, v3, v11}, Lh/a;->f(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V

    goto :goto_10

    :cond_19
    invoke-direct {v7, v8, v9, v3, v11}, Lh/a;->s(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V

    goto :goto_10

    :cond_1a
    :goto_d
    move-object/from16 v8, p1

    move-object v3, v2

    move-object/from16 v24, v5

    move/from16 v16, v6

    const/16 v15, 0x15

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_e
    move-object/from16 v4, p4

    :goto_f
    invoke-direct/range {v0 .. v6}, Lh/a;->m(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;IC)V

    :goto_10
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v5, v24

    const/16 v3, 0x10

    const/16 v4, 0xb6

    const/4 v8, 0x1

    const/16 v15, 0x19

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v24, v5

    const/16 v15, 0x15

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {v7, v9, v11}, Lh/a;->a(Le/h;Lh/a$a;)V

    :cond_1c
    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    new-instance v1, Le/f;

    invoke-direct {v1}, Le/f;-><init>()V

    const-string v2, "seperator"

    invoke-virtual {v11, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v15, v2}, Le/h;->h(II)V

    const/16 v2, 0x7b

    const/16 v3, 0x10

    invoke-interface {v9, v3, v2}, Le/h;->e(II)V

    const/16 v4, 0xa0

    invoke-interface {v9, v4, v0}, Le/h;->l(ILe/f;)V

    move-object/from16 v4, v24

    invoke-virtual {v11, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x19

    invoke-interface {v9, v6, v5}, Le/h;->h(II)V

    invoke-interface {v9, v3, v2}, Le/h;->h(II)V

    sget-object v2, Lh/a;->f:Ljava/lang/String;

    const-string v5, "(I)V"

    const/16 v8, 0xb6

    invoke-interface {v9, v8, v2, v14, v5}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Le/h;->c(Le/f;)V

    invoke-virtual {v11, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v6, v0}, Le/h;->h(II)V

    const/16 v0, 0x7d

    invoke-interface {v9, v3, v0}, Le/h;->h(II)V

    const-string v0, "(I)V"

    invoke-interface {v9, v8, v2, v14, v0}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Le/h;->c(Le/f;)V

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Le/h;->c(Le/f;)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    invoke-interface {v9, v6, v0}, Le/h;->h(II)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v6, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lh/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setContext"

    invoke-interface {v9, v8, v0, v2, v1}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private a(Le/h;Lh/a$a;)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    const-string v0, "seperator"

    invoke-virtual {p2, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v1}, Le/h;->h(II)V

    sget-object v1, Lh/a;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";Ljava/lang/Object;C)C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb6

    const-string v4, "writeAfter"

    invoke-interface {p1, v3, v1, v4, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x36

    invoke-virtual {p2, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v1, p2}, Le/h;->h(II)V

    return-void
.end method

.method private b(Le/h;Ll/c;Lh/a$a;)V
    .locals 6

    iget-object p2, p2, Ll/c;->e:Ljava/lang/Class;

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    sget v2, Lh/a$a;->h:I

    invoke-interface {p1, v1, v2}, Le/h;->h(II)V

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x15

    const-string v4, "valueOf"

    const/16 v5, 0xb8

    if-ne p2, v2, :cond_0

    const-string p2, "byte"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Byte"

    const-string p3, "(B)Ljava/lang/Byte;"

    :goto_0
    invoke-interface {p1, v5, p2, v4, p3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_1

    const-string p2, "short"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Short"

    const-string p3, "(S)Ljava/lang/Short;"

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_2

    const-string p2, "int"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Integer"

    const-string p3, "(I)Ljava/lang/Integer;"

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_3

    const-string p2, "char"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Character"

    const-string p3, "(C)Ljava/lang/Character;"

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_4

    const-string p2, "long"

    invoke-virtual {p3, p2, v0}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result p2

    const/16 p3, 0x16

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Long"

    const-string p3, "(J)Ljava/lang/Long;"

    goto :goto_0

    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_5

    const-string p2, "float"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x17

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Float"

    const-string p3, "(F)Ljava/lang/Float;"

    goto :goto_0

    :cond_5
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_6

    const-string p2, "double"

    invoke-virtual {p3, p2, v0}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result p2

    const/16 p3, 0x18

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Double"

    const-string p3, "(D)Ljava/lang/Double;"

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    const-string p2, "boolean"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Boolean"

    const-string p3, "(Z)Ljava/lang/Boolean;"

    goto/16 :goto_0

    :cond_7
    const-class v0, Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_8

    const-string p2, "decimal"

    :goto_1
    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v1, p2}, Le/h;->h(II)V

    goto :goto_2

    :cond_8
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_9

    const-string p2, "string"

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p2, "enum"

    goto :goto_1

    :cond_a
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "list"

    goto :goto_1

    :cond_b
    const-string p2, "object"

    goto :goto_1

    :goto_2
    sget-object p2, Lh/a;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(L"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0xb6

    const-string v1, "apply"

    invoke-interface {p1, v0, p2, v1, p3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Le/h;Lh/a$a;)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    const-string v0, "seperator"

    invoke-virtual {p2, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v1}, Le/h;->h(II)V

    sget-object v1, Lh/a;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";Ljava/lang/Object;C)C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb6

    const-string v4, "writeBefore"

    invoke-interface {p1, v3, v1, v4, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x36

    invoke-virtual {p2, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v1, p2}, Le/h;->h(II)V

    return-void
.end method

.method private d(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    new-instance p1, Le/f;

    invoke-direct {p1}, Le/f;-><init>()V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p4, p3}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const-string v0, "decimal"

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-interface {p2, v2, v1}, Le/h;->h(II)V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    new-instance v1, Le/f;

    invoke-direct {v1}, Le/f;-><init>()V

    new-instance v2, Le/f;

    invoke-direct {v2}, Le/f;-><init>()V

    new-instance v3, Le/f;

    invoke-direct {v3}, Le/f;-><init>()V

    invoke-interface {p2, v1}, Le/h;->c(Le/f;)V

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x19

    invoke-interface {p2, v4, v1}, Le/h;->h(II)V

    const/16 v1, 0xc7

    invoke-interface {p2, v1, v2}, Le/h;->l(ILe/f;)V

    invoke-direct {p0, p2, p3, p4}, Lh/a;->l(Le/h;Ll/c;Lh/a$a;)V

    const/16 p3, 0xa7

    invoke-interface {p2, p3, v3}, Le/h;->l(ILe/f;)V

    invoke-interface {p2, v2}, Le/h;->c(Le/f;)V

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Le/h;->h(II)V

    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {p2, v2, v1}, Le/h;->h(II)V

    sget v1, Lh/a$a;->h:I

    invoke-interface {p2, v4, v1}, Le/h;->h(II)V

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v4, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->f:Ljava/lang/String;

    const-string v1, "writeFieldValue"

    const-string v2, "(CLjava/lang/String;Ljava/math/BigDecimal;)V"

    const/16 v4, 0xb6

    invoke-interface {p2, v4, v0, v1, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lh/a;->v(Le/h;Lh/a$a;)V

    invoke-interface {p2, p3, v3}, Le/h;->l(ILe/f;)V

    invoke-interface {p2, v3}, Le/h;->c(Le/f;)V

    invoke-interface {p2, p1}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private e(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    new-instance p1, Le/f;

    invoke-direct {p1}, Le/f;-><init>()V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p4, p3}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const-string v0, "double"

    const/4 v1, 0x2

    invoke-virtual {p4, v0, v1}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x39

    invoke-interface {p2, v3, v2}, Le/h;->h(II)V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    const-string p3, "out"

    invoke-virtual {p4, p3}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    const/16 v2, 0x19

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    const-string p3, "seperator"

    invoke-virtual {p4, p3}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    const/16 v3, 0x15

    invoke-interface {p2, v3, p3}, Le/h;->h(II)V

    sget p3, Lh/a$a;->h:I

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    const/16 p3, 0x18

    invoke-virtual {p4, v0, v1}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p2, p3, v0}, Le/h;->h(II)V

    sget-object p3, Lh/a;->f:Ljava/lang/String;

    const-string v0, "writeFieldValue"

    const-string v1, "(CLjava/lang/String;D)V"

    const/16 v2, 0xb6

    invoke-interface {p2, v2, p3, v0, v1}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lh/a;->v(Le/h;Lh/a$a;)V

    invoke-interface {p2, p1}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private f(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    new-instance p1, Le/f;

    invoke-direct {p1}, Le/f;-><init>()V

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    new-instance v1, Le/f;

    invoke-direct {v1}, Le/f;-><init>()V

    invoke-direct {p0, p2, p3, p4, v1}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p4, p3}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const/16 v2, 0xc0

    const-string v3, "java/lang/Enum"

    invoke-interface {p2, v2, v3}, Le/h;->b(ILjava/lang/String;)V

    const-string v2, "enum"

    invoke-virtual {p4, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3a

    invoke-interface {p2, v5, v4}, Le/h;->h(II)V

    invoke-direct {p0, p2, p3, p4, v1}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-virtual {p4, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x19

    invoke-interface {p2, v5, v4}, Le/h;->h(II)V

    const/16 v4, 0xc7

    invoke-interface {p2, v4, p1}, Le/h;->l(ILe/f;)V

    invoke-direct {p0, p2, p3, p4}, Lh/a;->l(Le/h;Ll/c;Lh/a$a;)V

    const/16 v4, 0xa7

    invoke-interface {p2, v4, v0}, Le/h;->l(ILe/f;)V

    invoke-interface {p2, p1}, Le/h;->c(Le/f;)V

    invoke-static {p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result p1

    const-string v4, "seperator"

    const/16 v6, 0x15

    const-string v7, "out"

    const/16 v8, 0xb6

    if-eqz p1, :cond_0

    invoke-virtual {p4, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v5, p1}, Le/h;->h(II)V

    invoke-virtual {p4, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v6, p1}, Le/h;->h(II)V

    sget p1, Lh/a$a;->h:I

    invoke-interface {p2, v5, p1}, Le/h;->h(II)V

    invoke-virtual {p4, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v5, p1}, Le/h;->h(II)V

    const-string p1, "name"

    const-string p3, "()Ljava/lang/String;"

    invoke-interface {p2, v8, v3, p1, p3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lh/a;->f:Ljava/lang/String;

    const-string p3, "writeFieldValueStringWithDoubleQuote"

    const-string v2, "(CLjava/lang/String;Ljava/lang/String;)V"

    goto :goto_0

    :cond_0
    invoke-virtual {p4, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v5, p1}, Le/h;->h(II)V

    invoke-virtual {p4, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v6, p1}, Le/h;->h(II)V

    sget-object p1, Lh/a;->f:Ljava/lang/String;

    const-string v3, "write"

    const-string v4, "(I)V"

    invoke-interface {p2, v8, p1, v3, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Le/h;->h(II)V

    sget v3, Lh/a$a;->h:I

    invoke-interface {p2, v5, v3}, Le/h;->h(II)V

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Le/h;->f(I)V

    const-string v3, "writeFieldName"

    const-string v4, "(Ljava/lang/String;Z)V"

    invoke-interface {p2, v8, p1, v3, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-interface {p2, v5, p1}, Le/h;->h(II)V

    invoke-virtual {p4, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v5, p1}, Le/h;->h(II)V

    sget p1, Lh/a$a;->h:I

    invoke-interface {p2, v5, p1}, Le/h;->h(II)V

    iget-object p1, p3, Ll/c;->e:Ljava/lang/Class;

    invoke-static {p1}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object p1

    invoke-interface {p2, p1}, Le/h;->k(Ljava/lang/Object;)V

    iget p1, p3, Ll/c;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Le/h;->k(Ljava/lang/Object;)V

    sget-object p1, Lh/a;->c:Ljava/lang/String;

    const-string p3, "writeWithFieldName"

    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    :goto_0
    invoke-interface {p2, v8, p1, p3, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lh/a;->v(Le/h;Lh/a$a;)V

    invoke-interface {p2, v0}, Le/h;->c(Le/f;)V

    invoke-interface {p2, v1}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private g(Le/h;Ll/c;Lh/a$a;Le/f;)V
    .locals 4

    iget-boolean v0, p2, Ll/c;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "out"

    invoke-virtual {p3, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {p1, v1, v0}, Le/h;->h(II)V

    sget-object v0, Lh/g1;->l:Lh/g1;

    iget v0, v0, Lh/g1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v0, Lh/a;->f:Ljava/lang/String;

    const-string v1, "isEnabled"

    const-string v2, "(I)Z"

    const/16 v3, 0xb6

    invoke-interface {p1, v3, v0, v1, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    invoke-interface {p1, v0, p4}, Le/h;->l(ILe/f;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lh/a;->r(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-static {p3}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lh/a;->b(Le/h;Ll/c;Lh/a$a;)V

    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Le/h;->l(ILe/f;)V

    invoke-direct {p0, p1, p2, p3}, Lh/a;->t(Le/h;Ll/c;Lh/a$a;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lh/a;->u(Le/h;Ll/c;Lh/a$a;Le/f;)V

    return-void
.end method

.method private h(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    new-instance p1, Le/f;

    invoke-direct {p1}, Le/f;-><init>()V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p4, p3}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const-string v0, "float"

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x38

    invoke-interface {p2, v2, v1}, Le/h;->h(II)V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    const-string p3, "out"

    invoke-virtual {p4, p3}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    const/16 v1, 0x19

    invoke-interface {p2, v1, p3}, Le/h;->h(II)V

    const-string p3, "seperator"

    invoke-virtual {p4, p3}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    const/16 v2, 0x15

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    sget p3, Lh/a$a;->h:I

    invoke-interface {p2, v1, p3}, Le/h;->h(II)V

    const/16 p3, 0x17

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, p3, v0}, Le/h;->h(II)V

    sget-object p3, Lh/a;->f:Ljava/lang/String;

    const-string v0, "writeFieldValue"

    const-string v1, "(CLjava/lang/String;F)V"

    const/16 v2, 0xb6

    invoke-interface {p2, v2, p3, v0, v1}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lh/a;->v(Le/h;Lh/a$a;)V

    invoke-interface {p2, p1}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private i(Le/h;Lh/a$a;Ll/c;)V
    .locals 5

    iget-object v0, p3, Ll/c;->b:Ljava/lang/reflect/Method;

    const/16 v1, 0xc0

    const-string v2, "entity"

    const/16 v3, 0x19

    invoke-virtual {p2, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb9

    goto :goto_0

    :cond_0
    const/16 v2, 0xb6

    :goto_0
    invoke-static {p2}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ll/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, p2, v3, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p3, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_1
    iget-object p2, p3, Ll/c;->c:Ljava/lang/reflect/Field;

    iget-object v0, p3, Ll/c;->g:Ljava/lang/Class;

    invoke-static {v0}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb4

    invoke-interface {p1, v4, v0, v2, v3}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p3, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_1
    iget-object p2, p3, Ll/c;->e:Ljava/lang/Class;

    invoke-static {p2}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Le/h;->b(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private j(Lh/a$a;Le/h;Ll/c;)V
    .locals 10

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Le/h;->h(II)V

    invoke-static {p1}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_asm_ser_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lh/a;->e:Ljava/lang/String;

    const/16 v7, 0xb4

    invoke-interface {p2, v7, v3, v4, v6}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc7

    invoke-interface {p2, v3, v0}, Le/h;->l(ILe/f;)V

    invoke-interface {p2, v1, v2}, Le/h;->h(II)V

    const/4 v3, 0x1

    invoke-interface {p2, v1, v3}, Le/h;->h(II)V

    iget-object v3, p3, Ll/c;->e:Ljava/lang/Class;

    invoke-static {v3}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v3

    invoke-interface {p2, v3}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v3, Lh/a;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(Ljava/lang/Class;)"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0xb6

    const-string v9, "getObjectWriter"

    invoke-interface {p2, v8, v3, v9, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0xb5

    invoke-interface {p2, v8, v3, v4, v6}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Le/h;->c(Le/f;)V

    invoke-interface {p2, v1, v2}, Le/h;->h(II)V

    invoke-static {p1}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v7, p1, p3, v6}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k(Lh/a$a;Le/h;Ll/c;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a$a;",
            "Le/h;",
            "Ll/c;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Le/h;->h(II)V

    invoke-static {p1}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_asm_list_item_ser_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lh/a;->e:Ljava/lang/String;

    const/16 v7, 0xb4

    invoke-interface {p2, v7, v3, v4, v6}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc7

    invoke-interface {p2, v3, v0}, Le/h;->l(ILe/f;)V

    invoke-interface {p2, v1, v2}, Le/h;->h(II)V

    const/4 v3, 0x1

    invoke-interface {p2, v1, v3}, Le/h;->h(II)V

    invoke-static {p4}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object p4

    invoke-interface {p2, p4}, Le/h;->k(Ljava/lang/Object;)V

    sget-object p4, Lh/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/Class;)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb6

    const-string v8, "getObjectWriter"

    invoke-interface {p2, v4, p4, v8, v3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb5

    invoke-interface {p2, v4, p4, v3, v6}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Le/h;->c(Le/f;)V

    invoke-interface {p2, v1, v2}, Le/h;->h(II)V

    invoke-static {p1}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v7, p1, p3, v6}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l(Le/h;Ll/c;Lh/a$a;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Ll/c;->e:Ljava/lang/Class;

    new-instance v5, Le/f;

    invoke-direct {v5}, Le/f;-><init>()V

    new-instance v6, Le/f;

    invoke-direct {v6}, Le/f;-><init>()V

    new-instance v7, Le/f;

    invoke-direct {v7}, Le/f;-><init>()V

    new-instance v8, Le/f;

    invoke-direct {v8}, Le/f;-><init>()V

    invoke-interface {v1, v5}, Le/h;->c(Le/f;)V

    invoke-virtual/range {p2 .. p2}, Ll/c;->d()Ld/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v2

    invoke-static {v2}, Lh/g1;->d([Lh/g1;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static/range {p3 .. p3}, Lh/a$a;->e(Lh/a$a;)Lh/b1;

    move-result-object v9

    iget-object v9, v9, Lh/b1;->d:Ld/d;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ld/d;->serialzeFeatures()[Lh/g1;

    move-result-object v9

    invoke-static {v9}, Lh/g1;->d([Lh/g1;)I

    move-result v9

    or-int/2addr v2, v9

    :cond_1
    const-class v9, Ljava/lang/Boolean;

    const-class v10, Ljava/util/Collection;

    const-class v11, Ljava/lang/Number;

    const-class v12, Ljava/lang/String;

    if-ne v4, v12, :cond_2

    sget-object v13, Lh/g1;->d:Lh/g1;

    invoke-virtual {v13}, Lh/g1;->a()I

    move-result v13

    sget-object v14, Lh/g1;->i:Lh/g1;

    :goto_1
    invoke-virtual {v14}, Lh/g1;->a()I

    move-result v14

    or-int/2addr v13, v14

    goto :goto_2

    :cond_2
    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_3

    sget-object v13, Lh/g1;->d:Lh/g1;

    invoke-virtual {v13}, Lh/g1;->a()I

    move-result v13

    sget-object v14, Lh/g1;->j:Lh/g1;

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, Lh/g1;->d:Lh/g1;

    invoke-virtual {v13}, Lh/g1;->a()I

    move-result v13

    sget-object v14, Lh/g1;->h:Lh/g1;

    goto :goto_1

    :cond_4
    if-ne v9, v4, :cond_5

    sget-object v13, Lh/g1;->d:Lh/g1;

    invoke-virtual {v13}, Lh/g1;->a()I

    move-result v13

    sget-object v14, Lh/g1;->k:Lh/g1;

    goto :goto_1

    :cond_5
    sget v13, Lh/g1;->G:I

    :goto_2
    and-int v14, v2, v13

    const-string v5, "out"

    const/16 v15, 0x19

    if-nez v14, :cond_6

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v15, v14}, Le/h;->h(II)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v13, Lh/a;->f:Ljava/lang/String;

    const-string v14, "isEnabled"

    const-string v15, "(I)Z"

    move-object/from16 v16, v8

    const/16 v8, 0xb6

    invoke-interface {v1, v8, v13, v14, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x99

    invoke-interface {v1, v8, v6}, Le/h;->l(ILe/f;)V

    goto :goto_3

    :cond_6
    move-object/from16 v16, v8

    :goto_3
    invoke-interface {v1, v7}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x19

    invoke-interface {v1, v8, v7}, Le/h;->h(II)V

    const-string v7, "seperator"

    invoke-virtual {v3, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v7

    const/16 v13, 0x15

    invoke-interface {v1, v13, v7}, Le/h;->h(II)V

    sget-object v7, Lh/a;->f:Ljava/lang/String;

    const-string v13, "write"

    const-string v14, "(I)V"

    const/16 v15, 0xb6

    invoke-interface {v1, v15, v7, v13, v14}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lh/a;->x(Le/h;Lh/a$a;)V

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v8, v5}, Le/h;->h(II)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Le/h;->k(Ljava/lang/Object;)V

    if-eq v4, v12, :cond_c

    const-class v2, Ljava/lang/Character;

    if-ne v4, v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lh/g1;->j:Lh/g1;

    goto :goto_6

    :cond_8
    if-ne v4, v9, :cond_9

    sget-object v2, Lh/g1;->k:Lh/g1;

    goto :goto_6

    :cond_9
    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    :goto_4
    sget-object v2, Lh/g1;->h:Lh/g1;

    goto :goto_6

    :cond_c
    :goto_5
    sget-object v2, Lh/g1;->i:Lh/g1;

    :goto_6
    iget v2, v2, Lh/g1;->a:I

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Le/h;->k(Ljava/lang/Object;)V

    const-string v2, "writeNull"

    const-string v4, "(II)V"

    const/16 v5, 0xb6

    invoke-interface {v1, v5, v7, v2, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lh/a;->v(Le/h;Lh/a$a;)V

    const/16 v2, 0xa7

    move-object/from16 v3, v16

    invoke-interface {v1, v2, v3}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v6}, Le/h;->c(Le/f;)V

    invoke-interface {v1, v3}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private m(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;IC)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            "IC)V"
        }
    .end annotation

    new-instance p1, Le/f;

    invoke-direct {p1}, Le/f;-><init>()V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p4, p3}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const/16 v0, 0x36

    invoke-interface {p2, v0, p5}, Le/h;->h(II)V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    const-string p3, "out"

    invoke-virtual {p4, p3}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x19

    invoke-interface {p2, v0, p3}, Le/h;->h(II)V

    const-string p3, "seperator"

    invoke-virtual {p4, p3}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    const/16 v1, 0x15

    invoke-interface {p2, v1, p3}, Le/h;->h(II)V

    sget p3, Lh/a$a;->h:I

    invoke-interface {p2, v0, p3}, Le/h;->h(II)V

    invoke-interface {p2, v1, p5}, Le/h;->h(II)V

    sget-object p3, Lh/a;->f:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(CLjava/lang/String;"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p6, ")V"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const/16 p6, 0xb6

    const-string v0, "writeFieldValue"

    invoke-interface {p2, p6, p3, v0, p5}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lh/a;->v(Le/h;Lh/a$a;)V

    invoke-interface {p2, p1}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private n(Le/h;Ll/c;Lh/a$a;Le/f;)V
    .locals 2

    const/4 p3, 0x0

    const/16 v0, 0x19

    invoke-interface {p1, v0, p3}, Le/h;->h(II)V

    const/4 p3, 0x1

    invoke-interface {p1, v0, p3}, Le/h;->h(II)V

    iget-object p2, p2, Ll/c;->k:Ljava/lang/String;

    invoke-interface {p1, p2}, Le/h;->k(Ljava/lang/Object;)V

    sget-object p2, Lh/a;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(L"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";Ljava/lang/String;)Z"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0xb6

    const-string v1, "applyLabel"

    invoke-interface {p1, v0, p2, v1, p3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x99

    invoke-interface {p1, p2, p4}, Le/h;->l(ILe/f;)V

    return-void
.end method

.method private o(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v2, Ll/c;->f:Ljava/lang/reflect/Type;

    invoke-static {v4}, Ll/l;->U(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Class;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    const-class v7, Ljava/lang/Object;

    if-eq v5, v7, :cond_2

    const-class v7, Ljava/io/Serializable;

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v5

    :cond_2
    :goto_1
    new-instance v5, Le/f;

    invoke-direct {v5}, Le/f;-><init>()V

    new-instance v7, Le/f;

    invoke-direct {v7}, Le/f;-><init>()V

    new-instance v8, Le/f;

    invoke-direct {v8}, Le/f;-><init>()V

    invoke-direct {v0, v1, v2, v3, v5}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {v0, v1, v3, v2}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const/16 v9, 0xc0

    const-string v10, "java/util/List"

    invoke-interface {v1, v9, v10}, Le/h;->b(ILjava/lang/String;)V

    const-string v9, "list"

    invoke-virtual {v3, v9}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x3a

    invoke-interface {v1, v12, v11}, Le/h;->h(II)V

    invoke-direct {v0, v1, v2, v3, v5}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-virtual {v3, v9}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v11

    const/16 v13, 0x19

    invoke-interface {v1, v13, v11}, Le/h;->h(II)V

    const/16 v11, 0xc7

    invoke-interface {v1, v11, v7}, Le/h;->l(ILe/f;)V

    invoke-direct {v0, v1, v2, v3}, Lh/a;->l(Le/h;Ll/c;Lh/a$a;)V

    const/16 v11, 0xa7

    invoke-interface {v1, v11, v8}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v7}, Le/h;->c(Le/f;)V

    const-string v7, "out"

    invoke-virtual {v3, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v13, v14}, Le/h;->h(II)V

    const-string v14, "seperator"

    invoke-virtual {v3, v14}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x15

    invoke-interface {v1, v15, v14}, Le/h;->h(II)V

    sget-object v14, Lh/a;->f:Ljava/lang/String;

    const/16 v12, 0xb6

    const-string v11, "write"

    const-string v15, "(I)V"

    invoke-interface {v1, v12, v14, v11, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lh/a;->x(Le/h;Lh/a$a;)V

    invoke-virtual {v3, v9}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v13, v12}, Le/h;->h(II)V

    const-string v12, "()I"

    const/16 v13, 0xb9

    move-object/from16 v16, v5

    const-string v5, "size"

    invoke-interface {v1, v13, v10, v5, v12}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x36

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v12, v13}, Le/h;->h(II)V

    new-instance v12, Le/f;

    invoke-direct {v12}, Le/f;-><init>()V

    new-instance v13, Le/f;

    invoke-direct {v13}, Le/f;-><init>()V

    move-object/from16 v17, v8

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v8

    const/16 v0, 0x15

    invoke-interface {v1, v0, v8}, Le/h;->h(II)V

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Le/h;->f(I)V

    const/16 v0, 0xa0

    invoke-interface {v1, v0, v12}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v8, 0x19

    invoke-interface {v1, v8, v0}, Le/h;->h(II)V

    const-string v0, "[]"

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    const-string v0, "(Ljava/lang/String;)V"

    const/16 v8, 0xb6

    invoke-interface {v1, v8, v14, v11, v0}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-interface {v1, v0, v13}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v12}, Le/h;->c(Le/f;)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_3

    const/16 v0, 0x19

    invoke-interface {v1, v0, v8}, Le/h;->h(II)V

    invoke-virtual {v3, v9}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v0, v12}, Le/h;->h(II)V

    sget v12, Lh/a$a;->h:I

    invoke-interface {v1, v0, v12}, Le/h;->h(II)V

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    const-string v12, "setContext"

    const-string v8, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v18, v13

    const/16 v13, 0xb6

    invoke-interface {v1, v13, v0, v12, v8}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object/from16 v18, v13

    :goto_2
    const-class v0, Ljava/lang/String;

    if-ne v4, v0, :cond_4

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v8, 0x19

    invoke-interface {v1, v8, v0}, Le/h;->h(II)V

    invoke-virtual {v3, v9}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v8, v0}, Le/h;->h(II)V

    const-string v0, "(Ljava/util/List;)V"

    const/16 v12, 0xb6

    invoke-interface {v1, v12, v14, v11, v0}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v4, 0x19

    const/16 v6, 0xb6

    goto/16 :goto_a

    :cond_4
    const/16 v8, 0x19

    const/16 v12, 0xb6

    invoke-virtual {v3, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v8, v0}, Le/h;->h(II)V

    const/16 v0, 0x5b

    const/16 v8, 0x10

    invoke-interface {v1, v8, v0}, Le/h;->h(II)V

    invoke-interface {v1, v12, v14, v11, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    new-instance v12, Le/f;

    invoke-direct {v12}, Le/f;-><init>()V

    new-instance v13, Le/f;

    invoke-direct {v13}, Le/f;-><init>()V

    const/4 v8, 0x3

    invoke-interface {v1, v8}, Le/h;->f(I)V

    const/16 v8, 0x36

    move-object/from16 v19, v4

    const-string v4, "i"

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v8, v2}, Le/h;->h(II)V

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0x15

    invoke-interface {v1, v8, v2}, Le/h;->h(II)V

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v8, v2}, Le/h;->h(II)V

    const/16 v2, 0xa2

    invoke-interface {v1, v2, v13}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v8, v2}, Le/h;->h(II)V

    const/16 v2, 0x99

    invoke-interface {v1, v2, v12}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x19

    invoke-interface {v1, v5, v2}, Le/h;->h(II)V

    const/16 v2, 0x2c

    const/16 v8, 0x10

    invoke-interface {v1, v8, v2}, Le/h;->h(II)V

    const/16 v2, 0xb6

    invoke-interface {v1, v2, v14, v11, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v12}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v9}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v5, v2}, Le/h;->h(II)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x15

    invoke-interface {v1, v5, v2}, Le/h;->h(II)V

    const-string v2, "get"

    const-string v5, "(I)Ljava/lang/Object;"

    const/16 v8, 0xb9

    invoke-interface {v1, v8, v10, v2, v5}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "list_item"

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x3a

    invoke-interface {v1, v8, v5}, Le/h;->h(II)V

    new-instance v5, Le/f;

    invoke-direct {v5}, Le/f;-><init>()V

    new-instance v8, Le/f;

    invoke-direct {v8}, Le/f;-><init>()V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x19

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    const/16 v9, 0xc7

    invoke-interface {v1, v9, v8}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    const-string v9, "writeNull"

    const-string v10, "()V"

    const/16 v12, 0xb6

    invoke-interface {v1, v12, v14, v9, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xa7

    invoke-interface {v1, v9, v5}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v8}, Le/h;->c(Le/f;)V

    new-instance v8, Le/f;

    invoke-direct {v8}, Le/f;-><init>()V

    new-instance v9, Le/f;

    invoke-direct {v9}, Le/f;-><init>()V

    const-string v10, "(I)Ljava/lang/Integer;"

    const-string v12, "valueOf"

    move-object/from16 v20, v14

    const-string v14, "java/lang/Integer"

    move-object/from16 v21, v15

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v23, v7

    const/16 v7, 0x19

    invoke-interface {v1, v7, v15}, Le/h;->h(II)V

    const-string v7, "getClass"

    const-string v15, "()Ljava/lang/Class;"

    move-object/from16 v24, v13

    const-string v13, "java/lang/Object"

    move-object/from16 v25, v0

    const/16 v0, 0xb6

    invoke-interface {v1, v0, v13, v7, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    const/16 v0, 0xa6

    invoke-interface {v1, v0, v9}, Le/h;->l(ILe/f;)V

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    invoke-direct {v0, v3, v1, v7, v6}, Lh/a;->k(Lh/a$a;Le/h;Ll/c;Ljava/lang/Class;)V

    const-string v13, "list_item_desc"

    invoke-virtual {v3, v13}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v15

    const/16 v0, 0x3a

    invoke-interface {v1, v0, v15}, Le/h;->h(II)V

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    new-instance v15, Le/f;

    invoke-direct {v15}, Le/f;-><init>()V

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-static/range {p4 .. p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "writeDirectNonContext"

    move-object/from16 p1, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v9

    goto :goto_3

    :cond_5
    move-object/from16 p1, v5

    move-object/from16 v26, v9

    move-object v5, v11

    :goto_3
    invoke-virtual {v3, v13}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v27, v8

    const/16 v8, 0x19

    invoke-interface {v1, v8, v9}, Le/h;->h(II)V

    sget-object v9, Lh/a;->h:Ljava/lang/String;

    const/16 v8, 0xc1

    invoke-interface {v1, v8, v9}, Le/h;->b(ILjava/lang/String;)V

    const/16 v8, 0x99

    invoke-interface {v1, v8, v0}, Le/h;->l(ILe/f;)V

    invoke-virtual {v3, v13}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v28, v11

    const/16 v11, 0x19

    invoke-interface {v1, v11, v8}, Le/h;->h(II)V

    const/16 v8, 0xc0

    invoke-interface {v1, v8, v9}, Le/h;->b(ILjava/lang/String;)V

    const/4 v8, 0x1

    invoke-interface {v1, v11, v8}, Le/h;->h(II)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v11, v8}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    invoke-interface {v1, v8}, Le/h;->f(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v8

    const/16 v11, 0x15

    invoke-interface {v1, v11, v8}, Le/h;->h(II)V

    const/16 v8, 0xb8

    invoke-interface {v1, v8, v14, v12, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {v6}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v8

    invoke-interface {v1, v8}, Le/h;->k(Ljava/lang/Object;)V

    iget v8, v7, Ll/c;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Le/h;->k(Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(L"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0xb6

    invoke-interface {v1, v11, v9, v5, v8}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xa7

    invoke-interface {v1, v5, v15}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    goto :goto_5

    :cond_7
    move-object/from16 p1, v5

    move-object/from16 v27, v8

    move-object/from16 v26, v9

    move-object/from16 v28, v11

    :goto_5
    invoke-virtual {v3, v13}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v1, v5, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {v1, v5, v0}, Le/h;->h(II)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v5, v8}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1, v0}, Le/h;->f(I)V

    goto :goto_6

    :cond_8
    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x15

    invoke-interface {v1, v5, v0}, Le/h;->h(II)V

    const/16 v0, 0xb8

    invoke-interface {v1, v0, v14, v12, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-static {v6}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    iget v0, v7, Ll/c;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v0, Lh/a;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(L"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, v28

    const/16 v8, 0xb9

    invoke-interface {v1, v8, v0, v9, v5}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v15}, Le/h;->c(Le/f;)V

    move-object/from16 v0, v27

    const/16 v5, 0xa7

    invoke-interface {v1, v5, v0}, Le/h;->l(ILe/f;)V

    goto :goto_7

    :cond_9
    move-object/from16 v25, v0

    move-object/from16 p1, v5

    move-object/from16 v23, v7

    move-object v0, v8

    move-object/from16 v26, v9

    move-object v9, v11

    move-object/from16 v24, v13

    move-object/from16 v7, p3

    :goto_7
    move-object/from16 v5, v26

    invoke-interface {v1, v5}, Le/h;->c(Le/f;)V

    const/4 v5, 0x1

    const/16 v8, 0x19

    invoke-interface {v1, v8, v5}, Le/h;->h(II)V

    invoke-virtual {v3, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v8, v2}, Le/h;->h(II)V

    invoke-static/range {p4 .. p4}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1, v5}, Le/h;->f(I)V

    goto :goto_8

    :cond_a
    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x15

    invoke-interface {v1, v5, v2}, Le/h;->h(II)V

    const/16 v2, 0xb8

    invoke-interface {v1, v2, v14, v12, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v2

    invoke-interface {v1, v2}, Le/h;->k(Ljava/lang/Object;)V

    iget v2, v7, Ll/c;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v2, Lh/a;->c:Ljava/lang/String;

    const-string v5, "writeWithFieldName"

    const-string v6, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    const/16 v7, 0xb6

    goto :goto_9

    :cond_b
    const/16 v7, 0xb6

    sget-object v2, Lh/a;->c:Ljava/lang/String;

    const-string v5, "writeWithFieldName"

    const-string v6, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    :goto_9
    invoke-interface {v1, v7, v2, v5, v6}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Le/h;->a(II)V

    move-object/from16 v0, v25

    const/16 v4, 0xa7

    invoke-interface {v1, v4, v0}, Le/h;->l(ILe/f;)V

    move-object/from16 v0, v24

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0}, Le/h;->h(II)V

    const/16 v0, 0x5d

    const/16 v5, 0x10

    invoke-interface {v1, v5, v0}, Le/h;->h(II)V

    move-object/from16 v0, v20

    move-object/from16 v5, v21

    const/16 v6, 0xb6

    invoke-interface {v1, v6, v0, v9, v5}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-interface {v1, v4, v2}, Le/h;->h(II)V

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    const-string v2, "popContext"

    const-string v4, "()V"

    invoke-interface {v1, v6, v0, v2, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lh/a;->v(Le/h;Lh/a$a;)V

    move-object/from16 v2, v17

    invoke-interface {v1, v2}, Le/h;->c(Le/f;)V

    move-object/from16 v2, v16

    invoke-interface {v1, v2}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private p(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    new-instance p1, Le/f;

    invoke-direct {p1}, Le/f;-><init>()V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p4, p3}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const-string v0, "long"

    const/4 v1, 0x2

    invoke-virtual {p4, v0, v1}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x37

    invoke-interface {p2, v3, v2}, Le/h;->h(II)V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    const-string p3, "out"

    invoke-virtual {p4, p3}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    const/16 v2, 0x19

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    const-string p3, "seperator"

    invoke-virtual {p4, p3}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    const/16 v3, 0x15

    invoke-interface {p2, v3, p3}, Le/h;->h(II)V

    sget p3, Lh/a$a;->h:I

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    const/16 p3, 0x16

    invoke-virtual {p4, v0, v1}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p2, p3, v0}, Le/h;->h(II)V

    sget-object p3, Lh/a;->f:Ljava/lang/String;

    const-string v0, "writeFieldValue"

    const-string v1, "(CLjava/lang/String;J)V"

    const/16 v2, 0xb6

    invoke-interface {p2, v2, p3, v0, v1}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lh/a;->v(Le/h;Lh/a$a;)V

    invoke-interface {p2, p1}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private q(Le/h;Ll/c;Lh/a$a;Le/f;)V
    .locals 5

    invoke-static {p3}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    const/16 v1, 0xb6

    const/16 v2, 0x19

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {p1, v2, v0}, Le/h;->h(II)V

    const/4 v0, 0x2

    invoke-interface {p1, v2, v0}, Le/h;->h(II)V

    sget v0, Lh/a$a;->h:I

    invoke-interface {p1, v2, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";Ljava/lang/Object;Ljava/lang/String;)Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "applyName"

    invoke-interface {p1, v1, v0, v4, v3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Le/h;->l(ILe/f;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lh/a;->n(Le/h;Ll/c;Lh/a$a;Le/f;)V

    :cond_0
    iget-object p2, p2, Ll/c;->c:Ljava/lang/reflect/Field;

    if-nez p2, :cond_1

    const-string p2, "out"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v2, p2}, Le/h;->h(II)V

    sget-object p2, Lh/g1;->A:Lh/g1;

    iget p2, p2, Lh/g1;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Le/h;->k(Ljava/lang/Object;)V

    sget-object p2, Lh/a;->f:Ljava/lang/String;

    const-string p3, "isEnabled"

    const-string v0, "(I)Z"

    invoke-interface {p1, v1, p2, p3, v0}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x9a

    invoke-interface {p1, p2, p4}, Le/h;->l(ILe/f;)V

    :cond_1
    return-void
.end method

.method private r(Le/h;Ll/c;Lh/a$a;Le/f;)V
    .locals 4

    invoke-static {p3}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    const-string v1, "notWriteDefaultValue"

    invoke-virtual {p3, v1}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v1}, Le/h;->h(II)V

    const/16 v1, 0x99

    invoke-interface {p1, v1, v0}, Le/h;->l(ILe/f;)V

    iget-object p2, p2, Ll/c;->e:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v3, :cond_1

    const-string p2, "boolean"

    :goto_0
    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v2, p2}, Le/h;->h(II)V

    :goto_1
    invoke-interface {p1, v1, p4}, Le/h;->l(ILe/f;)V

    goto :goto_3

    :cond_1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v3, :cond_2

    const-string p2, "byte"

    goto :goto_0

    :cond_2
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v3, :cond_3

    const-string p2, "short"

    goto :goto_0

    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v3, :cond_4

    const-string p2, "int"

    goto :goto_0

    :cond_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_5

    const-string p2, "long"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x16

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const/16 p2, 0x9

    invoke-interface {p1, p2}, Le/h;->f(I)V

    const/16 p2, 0x94

    :goto_2
    invoke-interface {p1, p2}, Le/h;->f(I)V

    goto :goto_1

    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_6

    const-string p2, "float"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x17

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const/16 p2, 0xb

    invoke-interface {p1, p2}, Le/h;->f(I)V

    const/16 p2, 0x95

    goto :goto_2

    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_7

    const-string p2, "double"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x18

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const/16 p2, 0xe

    invoke-interface {p1, p2}, Le/h;->f(I)V

    const/16 p2, 0x97

    goto :goto_2

    :cond_7
    :goto_3
    invoke-interface {p1, v0}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private s(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    new-instance p1, Le/f;

    invoke-direct {p1}, Le/f;-><init>()V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p4, p3}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const-string v0, "object"

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {p2, v1, v0}, Le/h;->h(II)V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->y(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-interface {p2, p1}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private t(Le/h;Ll/c;Lh/a$a;)V
    .locals 7

    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    const-string v1, "hasNameFilters"

    invoke-virtual {p3, v1}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v1}, Le/h;->h(II)V

    const/16 v1, 0x99

    invoke-interface {p1, v1, v0}, Le/h;->l(ILe/f;)V

    iget-object p2, p2, Ll/c;->e:Ljava/lang/Class;

    const/4 v1, 0x0

    const/16 v3, 0x19

    invoke-interface {p1, v3, v1}, Le/h;->h(II)V

    const/4 v1, 0x1

    invoke-interface {p1, v3, v1}, Le/h;->h(II)V

    const/4 v1, 0x2

    invoke-interface {p1, v3, v1}, Le/h;->h(II)V

    sget v4, Lh/a$a;->h:I

    invoke-interface {p1, v3, v4}, Le/h;->h(II)V

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v5, "valueOf"

    const/16 v6, 0xb8

    if-ne p2, v4, :cond_0

    const-string p2, "byte"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v2, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Byte"

    const-string p3, "(B)Ljava/lang/Byte;"

    :goto_0
    invoke-interface {p1, v6, p2, v5, p3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v4, :cond_1

    const-string p2, "short"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v2, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Short"

    const-string p3, "(S)Ljava/lang/Short;"

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v4, :cond_2

    const-string p2, "int"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v2, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Integer"

    const-string p3, "(I)Ljava/lang/Integer;"

    goto :goto_0

    :cond_2
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v4, :cond_3

    const-string p2, "char"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v2, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Character"

    const-string p3, "(C)Ljava/lang/Character;"

    goto :goto_0

    :cond_3
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v4, :cond_4

    const-string p2, "long"

    invoke-virtual {p3, p2, v1}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result p2

    const/16 p3, 0x16

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Long"

    const-string p3, "(J)Ljava/lang/Long;"

    goto :goto_0

    :cond_4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v4, :cond_5

    const-string p2, "float"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x17

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Float"

    const-string p3, "(F)Ljava/lang/Float;"

    goto :goto_0

    :cond_5
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v4, :cond_6

    const-string p2, "double"

    invoke-virtual {p3, p2, v1}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result p2

    const/16 p3, 0x18

    invoke-interface {p1, p3, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Double"

    const-string p3, "(D)Ljava/lang/Double;"

    goto :goto_0

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_7

    const-string p2, "boolean"

    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v2, p2}, Le/h;->h(II)V

    const-string p2, "java/lang/Boolean"

    const-string p3, "(Z)Ljava/lang/Boolean;"

    goto/16 :goto_0

    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    if-ne p2, v1, :cond_8

    const-string p2, "decimal"

    :goto_1
    invoke-virtual {p3, p2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    goto :goto_2

    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne p2, v1, :cond_9

    const-string p2, "string"

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p2, "enum"

    goto :goto_1

    :cond_a
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "list"

    goto :goto_1

    :cond_b
    const-string p2, "object"

    goto :goto_1

    :goto_2
    sget-object p2, Lh/a;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(L"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0xb6

    const-string v2, "processKey"

    invoke-interface {p1, v1, p2, v2, p3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3a

    sget p3, Lh/a$a;->h:I

    invoke-interface {p1, p2, p3}, Le/h;->h(II)V

    invoke-interface {p1, v0}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private u(Le/h;Ll/c;Lh/a$a;Le/f;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Le/f;

    invoke-direct {v3}, Le/f;-><init>()V

    iget-object v4, v1, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    const/16 v6, 0xa7

    const/4 v7, 0x1

    const/16 v8, 0x15

    const/16 v9, 0x59

    const/16 v10, 0x3a

    if-eqz v5, :cond_0

    new-instance v5, Le/f;

    invoke-direct {v5}, Le/f;-><init>()V

    const-string v11, "checkValue"

    invoke-virtual {v2, v11}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v8, v11}, Le/h;->h(II)V

    const/16 v11, 0x9a

    invoke-interface {v0, v11, v5}, Le/h;->l(ILe/f;)V

    invoke-interface {v0, v7}, Le/h;->f(I)V

    invoke-interface {v0, v9}, Le/h;->f(I)V

    sget v11, Lh/a$a;->i:I

    invoke-interface {v0, v10, v11}, Le/h;->h(II)V

    sget v11, Lh/a$a;->j:I

    invoke-interface {v0, v10, v11}, Le/h;->h(II)V

    invoke-interface {v0, v6, v3}, Le/h;->l(ILe/f;)V

    invoke-interface {v0, v5}, Le/h;->c(Le/f;)V

    :cond_0
    const/16 v5, 0x19

    const/4 v11, 0x0

    invoke-interface {v0, v5, v11}, Le/h;->h(II)V

    invoke-interface {v0, v5, v7}, Le/h;->h(II)V

    invoke-interface {v0, v5, v11}, Le/h;->h(II)V

    iget-object v7, v1, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lh/a$a;->f(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v7, Lh/a;->h:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(I)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v12, Lh/l;

    invoke-static {v12}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0xb6

    const-string v14, "getBeanContext"

    invoke-interface {v0, v13, v7, v14, v11}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-interface {v0, v5, v11}, Le/h;->h(II)V

    sget v14, Lh/a$a;->h:I

    invoke-interface {v0, v5, v14}, Le/h;->h(II)V

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v15, "valueOf"

    const/16 v6, 0xb8

    if-ne v4, v14, :cond_1

    const-string v4, "byte"

    invoke-virtual {v2, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v8, v4}, Le/h;->h(II)V

    const-string v4, "java/lang/Byte"

    const-string v8, "(B)Ljava/lang/Byte;"

    :goto_0
    invoke-interface {v0, v6, v4, v15, v8}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Le/h;->f(I)V

    sget v4, Lh/a$a;->i:I

    invoke-interface {v0, v10, v4}, Le/h;->h(II)V

    goto/16 :goto_2

    :cond_1
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_2

    const-string v4, "short"

    invoke-virtual {v2, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v8, v4}, Le/h;->h(II)V

    const-string v4, "java/lang/Short"

    const-string v8, "(S)Ljava/lang/Short;"

    goto :goto_0

    :cond_2
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_3

    const-string v4, "int"

    invoke-virtual {v2, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v8, v4}, Le/h;->h(II)V

    const-string v4, "java/lang/Integer"

    const-string v8, "(I)Ljava/lang/Integer;"

    goto :goto_0

    :cond_3
    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_4

    const-string v4, "char"

    invoke-virtual {v2, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v8, v4}, Le/h;->h(II)V

    const-string v4, "java/lang/Character"

    const-string v8, "(C)Ljava/lang/Character;"

    goto :goto_0

    :cond_4
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_5

    const-string v4, "long"

    invoke-virtual {v2, v4, v11}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result v4

    const/16 v8, 0x16

    invoke-interface {v0, v8, v4}, Le/h;->h(II)V

    const-string v4, "java/lang/Long"

    const-string v8, "(J)Ljava/lang/Long;"

    goto :goto_0

    :cond_5
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_6

    const-string v4, "float"

    invoke-virtual {v2, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x17

    invoke-interface {v0, v8, v4}, Le/h;->h(II)V

    const-string v4, "java/lang/Float"

    const-string v8, "(F)Ljava/lang/Float;"

    goto :goto_0

    :cond_6
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_7

    const-string v4, "double"

    invoke-virtual {v2, v4, v11}, Lh/a$a;->h(Ljava/lang/String;I)I

    move-result v4

    const/16 v8, 0x18

    invoke-interface {v0, v8, v4}, Le/h;->h(II)V

    const-string v4, "java/lang/Double"

    const-string v8, "(D)Ljava/lang/Double;"

    goto :goto_0

    :cond_7
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v11, :cond_8

    const-string v4, "boolean"

    invoke-virtual {v2, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v8, v4}, Le/h;->h(II)V

    const-string v4, "java/lang/Boolean"

    const-string v8, "(Z)Ljava/lang/Boolean;"

    goto/16 :goto_0

    :cond_8
    const-class v6, Ljava/math/BigDecimal;

    if-ne v4, v6, :cond_9

    const-string v4, "decimal"

    :goto_1
    invoke-virtual {v2, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v5, v4}, Le/h;->h(II)V

    sget v4, Lh/a$a;->i:I

    invoke-interface {v0, v10, v4}, Le/h;->h(II)V

    sget v4, Lh/a$a;->i:I

    invoke-interface {v0, v5, v4}, Le/h;->h(II)V

    goto :goto_2

    :cond_9
    const-class v6, Ljava/lang/String;

    if-ne v4, v6, :cond_a

    const-string v4, "string"

    goto :goto_1

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v4, "enum"

    goto :goto_1

    :cond_b
    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "list"

    goto :goto_1

    :cond_c
    const-string v4, "object"

    goto :goto_1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(L"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Ljava/lang/Object;Ljava/lang/String;"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Ljava/lang/Object;"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")Ljava/lang/Object;"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "processValue"

    invoke-interface {v0, v13, v7, v6, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v4, Lh/a$a;->j:I

    invoke-interface {v0, v10, v4}, Le/h;->h(II)V

    sget v4, Lh/a$a;->i:I

    invoke-interface {v0, v5, v4}, Le/h;->h(II)V

    sget v4, Lh/a$a;->j:I

    invoke-interface {v0, v5, v4}, Le/h;->h(II)V

    const/16 v4, 0xa5

    invoke-interface {v0, v4, v3}, Le/h;->l(ILe/f;)V

    invoke-direct/range {p0 .. p4}, Lh/a;->y(Le/h;Ll/c;Lh/a$a;Le/f;)V

    move-object/from16 v1, p4

    const/16 v2, 0xa7

    invoke-interface {v0, v2, v1}, Le/h;->l(ILe/f;)V

    invoke-interface {v0, v3}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private v(Le/h;Lh/a$a;)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x2c

    invoke-interface {p1, v0, v1}, Le/h;->h(II)V

    const-string v0, "seperator"

    invoke-virtual {p2, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x36

    invoke-interface {p1, v0, p2}, Le/h;->h(II)V

    return-void
.end method

.method private w(Ljava/lang/Class;Le/h;Ll/c;Lh/a$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/h;",
            "Ll/c;",
            "Lh/a$a;",
            ")V"
        }
    .end annotation

    new-instance p1, Le/f;

    invoke-direct {p1}, Le/f;-><init>()V

    iget-object v0, p3, Ll/c;->a:Ljava/lang/String;

    invoke-static {p4}, Lh/a$a;->e(Lh/a$a;)Lh/b1;

    move-result-object v1

    iget-object v1, v1, Lh/b1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xb6

    const/16 v2, 0x19

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p2, v2, v0}, Le/h;->h(II)V

    const/4 v0, 0x4

    invoke-interface {p2, v2, v0}, Le/h;->h(II)V

    const/4 v0, 0x2

    invoke-interface {p2, v2, v0}, Le/h;->h(II)V

    sget-object v0, Lh/a;->c:Ljava/lang/String;

    const-string v3, "isWriteClassName"

    const-string v4, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    invoke-interface {p2, v1, v0, v3, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    invoke-interface {p2, v0, p1}, Le/h;->l(ILe/f;)V

    :cond_0
    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->q(Le/h;Ll/c;Lh/a$a;Le/f;)V

    invoke-direct {p0, p2, p4, p3}, Lh/a;->i(Le/h;Lh/a$a;Ll/c;)V

    const-string v0, "string"

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3a

    invoke-interface {p2, v4, v3}, Le/h;->h(II)V

    invoke-direct {p0, p2, p3, p4, p1}, Lh/a;->g(Le/h;Ll/c;Lh/a$a;Le/f;)V

    new-instance v3, Le/f;

    invoke-direct {v3}, Le/f;-><init>()V

    new-instance v5, Le/f;

    invoke-direct {v5}, Le/f;-><init>()V

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v2, v6}, Le/h;->h(II)V

    const/16 v6, 0xc7

    invoke-interface {p2, v6, v3}, Le/h;->l(ILe/f;)V

    invoke-direct {p0, p2, p3, p4}, Lh/a;->l(Le/h;Ll/c;Lh/a$a;)V

    const/16 v6, 0xa7

    invoke-interface {p2, v6, v5}, Le/h;->l(ILe/f;)V

    invoke-interface {p2, v3}, Le/h;->c(Le/f;)V

    iget-object p3, p3, Ll/c;->t:Ljava/lang/String;

    const-string v3, "trim"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    const-string p3, "java/lang/String"

    const-string v6, "()Ljava/lang/String;"

    invoke-interface {p2, v1, p3, v3, v6}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, v4, p3}, Le/h;->h(II)V

    :cond_1
    invoke-static {p4}, Lh/a$a;->a(Lh/a$a;)Z

    move-result p3

    const-string v3, "(CLjava/lang/String;Ljava/lang/String;)V"

    const-string v4, "seperator"

    const/16 v6, 0x15

    const-string v7, "out"

    if-eqz p3, :cond_2

    invoke-virtual {p4, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    invoke-virtual {p4, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, v6, p3}, Le/h;->h(II)V

    sget p3, Lh/a$a;->h:I

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    sget-object p3, Lh/a;->f:Ljava/lang/String;

    const-string v0, "writeFieldValueStringWithDoubleQuoteCheck"

    goto :goto_0

    :cond_2
    invoke-virtual {p4, v7}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    invoke-virtual {p4, v4}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, v6, p3}, Le/h;->h(II)V

    sget p3, Lh/a$a;->h:I

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    invoke-virtual {p4, v0}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, v2, p3}, Le/h;->h(II)V

    sget-object p3, Lh/a;->f:Ljava/lang/String;

    const-string v0, "writeFieldValue"

    :goto_0
    invoke-interface {p2, v1, p3, v0, v3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lh/a;->v(Le/h;Lh/a$a;)V

    invoke-interface {p2, v5}, Le/h;->c(Le/f;)V

    invoke-interface {p2, p1}, Le/h;->c(Le/f;)V

    return-void
.end method

.method private x(Le/h;Lh/a$a;)V
    .locals 4

    invoke-static {p2}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    const/16 v1, 0xb6

    const-string v2, "out"

    const/16 v3, 0x19

    invoke-virtual {p2, v2}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    sget p2, Lh/a$a;->h:I

    invoke-interface {p1, v3, p2}, Le/h;->h(II)V

    if-eqz v0, :cond_0

    sget-object p2, Lh/a;->f:Ljava/lang/String;

    const-string v0, "writeFieldNameDirect"

    const-string v2, "(Ljava/lang/String;)V"

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    invoke-interface {p1, p2}, Le/h;->f(I)V

    sget-object p2, Lh/a;->f:Ljava/lang/String;

    const-string v0, "writeFieldName"

    const-string v2, "(Ljava/lang/String;Z)V"

    :goto_0
    invoke-interface {p1, v1, p2, v0, v2}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private y(Le/h;Ll/c;Lh/a$a;Le/f;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Ll/c;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Ll/c;->e:Ljava/lang/Class;

    new-instance v6, Le/f;

    invoke-direct {v6}, Le/f;-><init>()V

    invoke-static/range {p3 .. p3}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v7

    const-string v8, "object"

    const/16 v9, 0x19

    if-eqz v7, :cond_0

    invoke-virtual {v3, v8}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :cond_0
    sget v7, Lh/a$a;->j:I

    :goto_0
    invoke-interface {v1, v9, v7}, Le/h;->h(II)V

    const/16 v7, 0x59

    invoke-interface {v1, v7}, Le/h;->f(I)V

    invoke-virtual {v3, v8}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x3a

    invoke-interface {v1, v10, v7}, Le/h;->h(II)V

    const/16 v7, 0xc7

    invoke-interface {v1, v7, v6}, Le/h;->l(ILe/f;)V

    invoke-direct/range {p0 .. p3}, Lh/a;->l(Le/h;Ll/c;Lh/a$a;)V

    const/16 v7, 0xa7

    move-object/from16 v11, p4

    invoke-interface {v1, v7, v11}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v6}, Le/h;->c(Le/f;)V

    const-string v6, "out"

    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v9, v6}, Le/h;->h(II)V

    const-string v6, "seperator"

    invoke-virtual {v3, v6}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v6

    const/16 v11, 0x15

    invoke-interface {v1, v11, v6}, Le/h;->h(II)V

    sget-object v6, Lh/a;->f:Ljava/lang/String;

    const-string v11, "(I)V"

    const/16 v12, 0xb6

    const-string v13, "write"

    invoke-interface {v1, v12, v6, v13, v11}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lh/a;->x(Le/h;Lh/a$a;)V

    new-instance v6, Le/f;

    invoke-direct {v6}, Le/f;-><init>()V

    new-instance v11, Le/f;

    invoke-direct {v11}, Le/f;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v14

    const-string v15, "Ljava/lang/reflect/Type;"

    const-string v7, "_asm_fieldType"

    if-eqz v14, :cond_7

    invoke-static {v5}, Lf/i;->u(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v3, v8}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v9, v14}, Le/h;->h(II)V

    const-string v14, "getClass"

    const-string v10, "()Ljava/lang/Class;"

    const-string v9, "java/lang/Object"

    invoke-interface {v1, v12, v9, v14, v10}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v5

    invoke-interface {v1, v5}, Le/h;->k(Ljava/lang/Object;)V

    const/16 v5, 0xa6

    invoke-interface {v1, v5, v11}, Le/h;->l(ILe/f;)V

    invoke-direct {v0, v3, v1, v2}, Lh/a;->j(Lh/a$a;Le/h;Ll/c;)V

    const-string v5, "fied_ser"

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x3a

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    new-instance v9, Le/f;

    invoke-direct {v9}, Le/f;-><init>()V

    new-instance v10, Le/f;

    invoke-direct {v10}, Le/f;-><init>()V

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v14

    const/16 v12, 0x19

    invoke-interface {v1, v12, v14}, Le/h;->h(II)V

    sget-object v12, Lh/a;->h:Ljava/lang/String;

    const/16 v14, 0xc1

    invoke-interface {v1, v14, v12}, Le/h;->b(ILjava/lang/String;)V

    const/16 v14, 0x99

    invoke-interface {v1, v14, v9}, Le/h;->l(ILe/f;)V

    iget v14, v2, Ll/c;->i:I

    sget-object v0, Lh/g1;->q:Lh/g1;

    iget v0, v0, Lh/g1;->a:I

    and-int/2addr v0, v14

    move-object/from16 v16, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lh/g1;->w:Lh/g1;

    iget v4, v4, Lh/g1;->a:I

    and-int/2addr v4, v14

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v0, :cond_5

    invoke-static/range {p3 .. p3}, Lh/a$a;->c(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p3 .. p3}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    const-string v0, "writeAsArray"

    goto :goto_4

    :cond_4
    move-object v0, v13

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    const-string v0, "writeAsArrayNonContext"

    goto :goto_4

    :cond_6
    const-string v0, "writeDirectNonContext"

    :goto_4
    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    const/16 v14, 0x19

    invoke-interface {v1, v14, v4}, Le/h;->h(II)V

    const/16 v4, 0xc0

    invoke-interface {v1, v4, v12}, Le/h;->b(ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-interface {v1, v14, v4}, Le/h;->h(II)V

    invoke-virtual {v3, v8}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v14, v4}, Le/h;->h(II)V

    sget v4, Lh/a$a;->h:I

    invoke-interface {v1, v14, v4}, Le/h;->h(II)V

    const/4 v4, 0x0

    invoke-interface {v1, v14, v4}, Le/h;->h(II)V

    invoke-static/range {p3 .. p3}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    iget-object v11, v2, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0xb4

    invoke-interface {v1, v14, v4, v11, v15}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v2, Ll/c;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Le/h;->k(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(L"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v6

    const-string v6, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v13

    const/16 v13, 0xb6

    invoke-interface {v1, v13, v12, v0, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-interface {v1, v0, v10}, Le/h;->l(ILe/f;)V

    invoke-interface {v1, v9}, Le/h;->c(Le/f;)V

    invoke-virtual {v3, v5}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0}, Le/h;->h(II)V

    const/4 v0, 0x1

    invoke-interface {v1, v4, v0}, Le/h;->h(II)V

    invoke-virtual {v3, v8}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v4, v0}, Le/h;->h(II)V

    sget v0, Lh/a$a;->h:I

    invoke-interface {v1, v4, v0}, Le/h;->h(II)V

    const/4 v0, 0x0

    invoke-interface {v1, v4, v0}, Le/h;->h(II)V

    invoke-static/range {p3 .. p3}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb4

    invoke-interface {v1, v5, v0, v4, v15}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v2, Ll/c;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v0, Lh/a;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb9

    move-object/from16 v6, v19

    invoke-interface {v1, v5, v0, v6, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Le/h;->c(Le/f;)V

    move-object/from16 v0, v18

    const/16 v4, 0xa7

    invoke-interface {v1, v4, v0}, Le/h;->l(ILe/f;)V

    move-object/from16 v4, v17

    goto :goto_5

    :cond_7
    move-object/from16 v16, v4

    move-object v0, v6

    move-object v4, v11

    :goto_5
    invoke-interface {v1, v4}, Le/h;->c(Le/f;)V

    const/4 v4, 0x1

    const/16 v5, 0x19

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    invoke-static/range {p3 .. p3}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, v8}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    :cond_8
    sget v4, Lh/a$a;->j:I

    :goto_6
    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    if-eqz v16, :cond_9

    move-object/from16 v4, v16

    invoke-interface {v1, v4}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v2, Lh/a;->c:Ljava/lang/String;

    const-string v4, "writeWithFormat"

    const-string v5, "(Ljava/lang/Object;Ljava/lang/String;)V"

    const/16 v6, 0xb6

    invoke-interface {v1, v6, v2, v4, v5}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    sget v4, Lh/a$a;->h:I

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    iget-object v4, v2, Ll/c;->f:Ljava/lang/reflect/Type;

    instance-of v5, v4, Ljava/lang/Class;

    const-string v6, "writeWithFieldName"

    if-eqz v5, :cond_a

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v2, Lh/a;->c:Ljava/lang/String;

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    :goto_7
    const/16 v5, 0xb6

    invoke-interface {v1, v5, v2, v6, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    iget-object v4, v2, Ll/c;->e:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_b

    invoke-static {v5}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v4

    invoke-interface {v1, v4}, Le/h;->k(Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    const/16 v5, 0x19

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    invoke-static/range {p3 .. p3}, Lh/a$a;->d(Lh/a$a;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb4

    invoke-interface {v1, v7, v4, v5, v15}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    iget v2, v2, Ll/c;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v2, Lh/a;->c:Ljava/lang/String;

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    goto :goto_7

    :goto_9
    invoke-interface {v1, v0}, Le/h;->c(Le/f;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lh/a;->v(Le/h;Lh/a$a;)V

    return-void
.end method


# virtual methods
.method public z(Lh/b1;)Lh/l0;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v7, Lh/b1;->a:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1b

    const-class v1, Ld/d;

    invoke-static {v8, v1}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ld/d;

    iget-object v10, v7, Lh/b1;->e:[Ll/c;

    array-length v1, v10

    const/4 v11, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v10, v2

    iget-object v4, v3, Ll/c;->c:Ljava/lang/reflect/Field;

    if-nez v4, :cond_0

    iget-object v3, v3, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lh/l0;

    invoke-direct {v1, v7}, Lh/l0;-><init>(Lh/b1;)V

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v12, v7, Lh/b1;->f:[Ll/c;

    iget-object v1, v7, Lh/b1;->e:[Ll/c;

    const/4 v13, 0x1

    if-ne v12, v1, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    array-length v1, v12

    const/16 v2, 0x100

    if-le v1, v2, :cond_3

    new-instance v1, Lh/l0;

    invoke-direct {v1, v7}, Lh/l0;-><init>(Lh/b1;)V

    return-object v1

    :cond_3
    array-length v1, v12

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v3, v12, v2

    invoke-virtual {v3}, Ll/c;->l()Ljava/lang/reflect/Member;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ll/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v1, Lh/l0;

    invoke-direct {v1, v7}, Lh/l0;-><init>(Lh/b1;)V

    return-object v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASMSerializer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lh/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lh/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v6, v3

    goto :goto_3

    :cond_6
    move-object v5, v1

    move-object v6, v5

    :goto_3
    new-instance v4, Le/c;

    invoke-direct {v4}, Le/c;-><init>()V

    const/16 v16, 0x31

    const/16 v17, 0x21

    sget-object v19, Lh/a;->h:Ljava/lang/String;

    new-array v1, v13, [Ljava/lang/String;

    sget-object v2, Lh/a;->d:Ljava/lang/String;

    aput-object v2, v1, v11

    move-object v15, v4

    move-object/from16 v18, v6

    move-object/from16 v20, v1

    invoke-virtual/range {v15 .. v20}, Le/c;->k(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    array-length v1, v12

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_a

    aget-object v3, v12, v2

    iget-object v15, v3, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-nez v15, :cond_9

    iget-object v15, v3, Ll/c;->e:Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    if-ne v15, v11, :cond_7

    goto :goto_5

    :cond_7
    new-instance v11, Le/d;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_asm_fieldType"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "Ljava/lang/reflect/Type;"

    move/from16 v16, v1

    const/4 v1, 0x1

    invoke-direct {v11, v4, v1, v13, v15}, Le/d;-><init>(Le/c;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Le/d;->c()V

    const-class v1, Ljava/util/List;

    iget-object v11, v3, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v1, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Le/d;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_asm_list_item_ser_"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lh/a;->e:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-direct {v1, v4, v15, v11, v13}, Le/d;-><init>(Le/c;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Le/d;->c()V

    :cond_8
    new-instance v1, Le/d;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_asm_ser_"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lh/a;->e:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-direct {v1, v4, v13, v3, v11}, Le/d;-><init>(Le/c;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Le/d;->c()V

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v16, v1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v16

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_a
    new-instance v1, Le/i;

    const/16 v17, 0x1

    const-string v18, "<init>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v11, Lh/b1;

    invoke-static {v11}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")V"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v1

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v21}, Le/i;-><init>(Le/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v15, 0x19

    const/4 v2, 0x0

    invoke-interface {v1, v15, v2}, Le/h;->h(II)V

    const/4 v2, 0x1

    invoke-interface {v1, v15, v2}, Le/h;->h(II)V

    sget-object v2, Lh/a;->h:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v13, 0xb7

    const-string v15, "<init>"

    invoke-interface {v1, v13, v2, v15, v3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_7
    array-length v3, v12

    if-ge v2, v3, :cond_e

    aget-object v3, v12, v2

    iget-object v13, v3, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v3, Ll/c;->e:Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    if-ne v13, v15, :cond_b

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    const/16 v15, 0x19

    invoke-interface {v1, v15, v13}, Le/h;->h(II)V

    iget-object v13, v3, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_c

    iget-object v13, v3, Ll/c;->g:Ljava/lang/Class;

    invoke-static {v13}, Ll/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Le/j;->g(Ljava/lang/String;)Le/j;

    move-result-object v13

    invoke-interface {v1, v13}, Le/h;->k(Ljava/lang/Object;)V

    iget-object v13, v3, Ll/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Le/h;->k(Ljava/lang/Object;)V

    const-class v13, Ll/b;

    invoke-static {v13}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "getMethodType"

    move-object/from16 v17, v4

    const-string v4, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    move-object/from16 v18, v5

    const/16 v5, 0xb8

    invoke-interface {v1, v5, v13, v15, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    const/4 v4, 0x0

    const/16 v13, 0x19

    invoke-interface {v1, v13, v4}, Le/h;->h(II)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v4, Lh/a;->h:Ljava/lang/String;

    const-string v5, "getFieldType"

    const-string v15, "(I)Ljava/lang/reflect/Type;"

    const/16 v13, 0xb7

    invoke-interface {v1, v13, v4, v5, v15}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_asm_fieldType"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ljava/lang/reflect/Type;"

    const/16 v5, 0xb5

    invoke-interface {v1, v5, v6, v3, v4}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    :goto_9
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto/16 :goto_7

    :cond_e
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v13, 0xb1

    invoke-interface {v1, v13}, Le/h;->f(I)V

    const/4 v15, 0x4

    invoke-interface {v1, v15, v15}, Le/h;->g(II)V

    invoke-interface {v1}, Le/h;->j()V

    if-eqz v9, :cond_10

    invoke-interface {v9}, Ld/d;->serialzeFeatures()[Lh/g1;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_10

    aget-object v4, v1, v3

    sget-object v5, Lh/g1;->q:Lh/g1;

    if-ne v4, v5, :cond_f

    const/16 v22, 0x1

    goto :goto_c

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_10
    const/16 v22, 0x0

    :goto_c
    const/4 v5, 0x0

    :goto_d
    const/4 v4, 0x7

    const-string v3, "entity"

    const/16 v2, 0xc0

    const-string v23, "java/io/IOException"

    const-string v13, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    const-string v7, "(L"

    move-object/from16 v24, v11

    const-string v11, "out"

    move-object/from16 v25, v10

    const/4 v10, 0x2

    const/4 v1, 0x3

    if-ge v5, v1, :cond_16

    if-nez v5, :cond_11

    const-string v1, "write"

    move-object/from16 v21, v1

    move/from16 v26, v22

    const/16 v20, 0x1

    goto :goto_e

    :cond_11
    const/4 v1, 0x1

    if-ne v5, v1, :cond_12

    const-string v1, "writeNormal"

    move-object/from16 v21, v1

    move/from16 v26, v22

    const/16 v20, 0x0

    goto :goto_e

    :cond_12
    const-string v1, "writeDirectNonContext"

    move-object/from16 v21, v1

    const/16 v20, 0x1

    const/16 v26, 0x1

    :goto_e
    new-instance v1, Lh/a$a;

    move-object/from16 v27, v1

    move-object v2, v12

    move-object/from16 v28, v3

    move-object/from16 v3, p1

    move-object/from16 v29, v17

    move-object v4, v6

    move/from16 v30, v5

    move-object/from16 v31, v18

    move/from16 v5, v20

    move-object/from16 v32, v6

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Lh/a$a;-><init>([Ll/c;Lh/b1;Ljava/lang/String;ZZ)V

    new-instance v1, Le/i;

    const/16 v17, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/16 v6, 0x19

    move-object v15, v1

    move-object/from16 v16, v29

    move-object/from16 v18, v21

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v21}, Le/i;-><init>(Le/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Le/f;

    invoke-direct {v2}, Le/f;-><init>()V

    invoke-interface {v1, v6, v10}, Le/h;->h(II)V

    const/16 v5, 0xc7

    invoke-interface {v1, v5, v2}, Le/h;->l(ILe/f;)V

    const/4 v5, 0x1

    invoke-interface {v1, v6, v5}, Le/h;->h(II)V

    const-string v15, "writeNull"

    const-string v4, "()V"

    const/16 v10, 0xb6

    invoke-interface {v1, v10, v3, v15, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb1

    invoke-interface {v1, v4}, Le/h;->f(I)V

    invoke-interface {v1, v2}, Le/h;->c(Le/f;)V

    invoke-interface {v1, v6, v5}, Le/h;->h(II)V

    sget-object v2, Lh/a;->g:Ljava/lang/String;

    const/16 v15, 0xb4

    invoke-interface {v1, v15, v3, v11, v2}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v27

    invoke-virtual {v2, v11}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3a

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    if-nez v14, :cond_14

    invoke-static {v2}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v15

    if-nez v15, :cond_14

    if-eqz v9, :cond_13

    invoke-interface {v9}, Ld/d;->alphabetic()Z

    move-result v15

    if-eqz v15, :cond_14

    :cond_13
    new-instance v15, Le/f;

    invoke-direct {v15}, Le/f;-><init>()V

    invoke-virtual {v2, v11}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v6, v4}, Le/h;->h(II)V

    sget-object v4, Lh/a;->f:Ljava/lang/String;

    const-string v5, "isSortField"

    const-string v6, "()Z"

    invoke-interface {v1, v10, v4, v5, v6}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9a

    invoke-interface {v1, v4, v15}, Le/h;->l(ILe/f;)V

    const/4 v4, 0x0

    const/16 v5, 0x19

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    const/4 v4, 0x1

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    const/4 v4, 0x2

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    const/4 v4, 0x3

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    const/4 v4, 0x4

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    const/4 v4, 0x5

    const/16 v5, 0x15

    invoke-interface {v1, v5, v4}, Le/h;->h(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeUnsorted"

    move-object/from16 v6, v32

    invoke-interface {v1, v10, v6, v5, v4}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb1

    invoke-interface {v1, v4}, Le/h;->f(I)V

    invoke-interface {v1, v15}, Le/h;->c(Le/f;)V

    goto :goto_f

    :cond_14
    move-object/from16 v6, v32

    :goto_f
    invoke-static {v2}, Lh/a$a;->a(Lh/a$a;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-nez v26, :cond_15

    new-instance v4, Le/f;

    invoke-direct {v4}, Le/f;-><init>()V

    new-instance v5, Le/f;

    invoke-direct {v5}, Le/f;-><init>()V

    const/16 v10, 0x19

    const/4 v15, 0x0

    invoke-interface {v1, v10, v15}, Le/h;->h(II)V

    const/4 v15, 0x1

    invoke-interface {v1, v10, v15}, Le/h;->h(II)V

    sget-object v10, Lh/a;->h:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v9

    const-string v9, ";)Z"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v15, "writeDirect"

    move/from16 v26, v14

    const/16 v14, 0xb6

    invoke-interface {v1, v14, v10, v15, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x9a

    invoke-interface {v1, v9, v5}, Le/h;->l(ILe/f;)V

    const/4 v9, 0x0

    const/16 v10, 0x19

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    const/4 v9, 0x1

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    const/4 v9, 0x2

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    const/4 v9, 0x3

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    const/4 v9, 0x4

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    const/4 v9, 0x5

    const/16 v10, 0x15

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "writeNormal"

    const/16 v14, 0xb6

    invoke-interface {v1, v14, v6, v10, v9}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xb1

    invoke-interface {v1, v9}, Le/h;->f(I)V

    invoke-interface {v1, v5}, Le/h;->c(Le/f;)V

    invoke-virtual {v2, v11}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v5

    const/16 v9, 0x19

    invoke-interface {v1, v9, v5}, Le/h;->h(II)V

    sget-object v5, Lh/g1;->q:Lh/g1;

    iget v5, v5, Lh/g1;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Le/h;->k(Ljava/lang/Object;)V

    sget-object v5, Lh/a;->f:Ljava/lang/String;

    const-string v10, "isEnabled"

    const-string v11, "(I)Z"

    const/16 v14, 0xb6

    invoke-interface {v1, v14, v5, v10, v11}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x99

    invoke-interface {v1, v5, v4}, Le/h;->l(ILe/f;)V

    const/4 v5, 0x0

    invoke-interface {v1, v9, v5}, Le/h;->h(II)V

    const/4 v5, 0x1

    invoke-interface {v1, v9, v5}, Le/h;->h(II)V

    const/4 v5, 0x2

    invoke-interface {v1, v9, v5}, Le/h;->h(II)V

    const/4 v5, 0x3

    invoke-interface {v1, v9, v5}, Le/h;->h(II)V

    const/4 v5, 0x4

    invoke-interface {v1, v9, v5}, Le/h;->h(II)V

    const/4 v9, 0x5

    const/16 v10, 0x15

    invoke-interface {v1, v10, v9}, Le/h;->h(II)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "writeDirectNonContext"

    const/16 v9, 0xb6

    invoke-interface {v1, v9, v6, v7, v3}, Le/h;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb1

    invoke-interface {v1, v3}, Le/h;->f(I)V

    invoke-interface {v1, v4}, Le/h;->c(Le/f;)V

    goto :goto_10

    :cond_15
    move-object/from16 v21, v9

    move/from16 v26, v14

    const/16 v3, 0xb1

    const/4 v5, 0x4

    :goto_10
    const/4 v4, 0x2

    const/16 v9, 0x19

    invoke-interface {v1, v9, v4}, Le/h;->h(II)V

    invoke-static {v8}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xc0

    invoke-interface {v1, v10, v7}, Le/h;->b(ILjava/lang/String;)V

    move-object/from16 v14, v28

    invoke-virtual {v2, v14}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x3a

    invoke-interface {v1, v10, v7}, Le/h;->h(II)V

    invoke-direct {v0, v8, v1, v12, v2}, Lh/a;->B(Ljava/lang/Class;Le/h;[Ll/c;Lh/a$a;)V

    invoke-interface {v1, v3}, Le/h;->f(I)V

    invoke-static {v2}, Lh/a$a;->b(Lh/a$a;)I

    move-result v2

    add-int/2addr v2, v4

    const/4 v4, 0x7

    invoke-interface {v1, v4, v2}, Le/h;->g(II)V

    invoke-interface {v1}, Le/h;->j()V

    add-int/lit8 v1, v30, 0x1

    move-object/from16 v7, p1

    move v5, v1

    move-object/from16 v9, v21

    move-object/from16 v11, v24

    move-object/from16 v10, v25

    move/from16 v14, v26

    move-object/from16 v17, v29

    move-object/from16 v18, v31

    const/16 v13, 0xb1

    const/4 v15, 0x4

    goto/16 :goto_d

    :cond_16
    move/from16 v26, v14

    move-object/from16 v29, v17

    move-object/from16 v31, v18

    const/16 v9, 0x19

    const/16 v10, 0xc0

    const/16 v15, 0xb4

    move-object v14, v3

    if-nez v26, :cond_17

    new-instance v5, Lh/a$a;

    const/16 v16, 0x0

    move-object v1, v5

    move-object v2, v12

    move-object/from16 v3, p1

    const/4 v9, 0x7

    move-object v4, v6

    move-object v9, v5

    move/from16 v5, v16

    move-object/from16 v26, v6

    const/16 v10, 0x19

    move/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lh/a$a;-><init>([Ll/c;Lh/b1;Ljava/lang/String;ZZ)V

    new-instance v1, Le/i;

    const/16 v17, 0x1

    const-string v18, "writeUnsorted"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v21

    const/16 v6, 0xb4

    move-object v15, v1

    move-object/from16 v16, v29

    invoke-direct/range {v15 .. v21}, Le/i;-><init>(Le/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v1, v10, v2}, Le/h;->h(II)V

    sget-object v2, Lh/a;->g:Ljava/lang/String;

    invoke-interface {v1, v6, v3, v11, v2}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v1, v3, v2}, Le/h;->h(II)V

    const/4 v2, 0x2

    invoke-interface {v1, v10, v2}, Le/h;->h(II)V

    invoke-static {v8}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc0

    invoke-interface {v1, v5, v4}, Le/h;->b(ILjava/lang/String;)V

    invoke-virtual {v9, v14}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Le/h;->h(II)V

    move-object/from16 v3, v25

    invoke-direct {v0, v8, v1, v3, v9}, Lh/a;->B(Ljava/lang/Class;Le/h;[Ll/c;Lh/a$a;)V

    const/16 v3, 0xb1

    invoke-interface {v1, v3}, Le/h;->f(I)V

    invoke-static {v9}, Lh/a$a;->b(Lh/a$a;)I

    move-result v3

    add-int/2addr v3, v2

    const/4 v2, 0x7

    invoke-interface {v1, v2, v3}, Le/h;->g(II)V

    invoke-interface {v1}, Le/h;->j()V

    goto :goto_11

    :cond_17
    move-object/from16 v26, v6

    const/16 v6, 0xb4

    const/16 v10, 0x19

    :goto_11
    const/4 v9, 0x0

    :goto_12
    const/4 v15, 0x3

    if-ge v9, v15, :cond_1a

    if-nez v9, :cond_18

    const-string v1, "writeAsArray"

    move-object/from16 v18, v1

    move/from16 v16, v22

    const/4 v5, 0x1

    goto :goto_13

    :cond_18
    const/4 v1, 0x1

    if-ne v9, v1, :cond_19

    const-string v1, "writeAsArrayNormal"

    move-object/from16 v18, v1

    move/from16 v16, v22

    const/4 v5, 0x0

    goto :goto_13

    :cond_19
    const-string v1, "writeAsArrayNonContext"

    move-object/from16 v18, v1

    const/4 v5, 0x1

    const/16 v16, 0x1

    :goto_13
    new-instance v4, Lh/a$a;

    move-object v1, v4

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v33, v4

    move-object/from16 v4, v26

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lh/a$a;-><init>([Ll/c;Lh/b1;Ljava/lang/String;ZZ)V

    new-instance v1, Le/i;

    const/16 v17, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lh/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x3

    move-object v15, v1

    move-object/from16 v16, v29

    invoke-direct/range {v15 .. v21}, Le/i;-><init>(Le/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-interface {v1, v10, v4}, Le/h;->h(II)V

    sget-object v4, Lh/a;->g:Ljava/lang/String;

    const/16 v5, 0xb4

    invoke-interface {v1, v5, v3, v11, v4}, Le/h;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v33

    invoke-virtual {v3, v11}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x3a

    invoke-interface {v1, v6, v4}, Le/h;->h(II)V

    const/4 v4, 0x2

    invoke-interface {v1, v10, v4}, Le/h;->h(II)V

    invoke-static {v8}, Ll/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0xc0

    invoke-interface {v1, v2, v15}, Le/h;->b(ILjava/lang/String;)V

    invoke-virtual {v3, v14}, Lh/a$a;->g(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v6, v15}, Le/h;->h(II)V

    invoke-direct {v0, v8, v1, v12, v3}, Lh/a;->A(Ljava/lang/Class;Le/h;[Ll/c;Lh/a$a;)V

    const/16 v15, 0xb1

    invoke-interface {v1, v15}, Le/h;->f(I)V

    invoke-static {v3}, Lh/a$a;->b(Lh/a$a;)I

    move-result v3

    add-int/2addr v3, v4

    const/4 v2, 0x7

    invoke-interface {v1, v2, v3}, Le/h;->g(II)V

    invoke-interface {v1}, Le/h;->j()V

    add-int/lit8 v9, v9, 0x1

    const/16 v6, 0xb4

    goto/16 :goto_12

    :cond_1a
    invoke-virtual/range {v29 .. v29}, Le/c;->j()[B

    move-result-object v1

    iget-object v2, v0, Lh/a;->a:Ll/a;

    array-length v3, v1

    move-object/from16 v4, v31

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v5, v3}, Ll/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v24, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/l0;

    return-object v1

    :cond_1b
    new-instance v1, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupportd class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method
