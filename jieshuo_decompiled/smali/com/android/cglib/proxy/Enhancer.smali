.class public Lcom/android/cglib/proxy/Enhancer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lcom/android/cglib/proxy/MethodInterceptor;

.field private d:Lcom/android/cglib/proxy/MethodFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/proxy/Enhancer;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lm/l;Lm/q;Lm/q;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/l;",
            "Lm/q<",
            "*>;",
            "Lm/q<",
            "TS;>;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    const-class v0, Lcom/android/cglib/proxy/MethodInterceptor;

    invoke-static {v0}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v7

    const-class v0, Lcom/android/cglib/proxy/MethodProxyExecuter;

    invoke-static {v0}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v11

    const-class v0, Ljava/lang/Class;

    invoke-static {v0}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v12

    const-class v0, [Ljava/lang/Class;

    invoke-static {v0}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v13

    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v14

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v15

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v6

    const-string v0, "methodInterceptor"

    invoke-virtual {v10, v7, v0}, Lm/q;->d(Lm/q;Ljava/lang/String;)Lm/m;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-virtual {v9, v5, v4, v0}, Lm/l;->b(Lm/m;ILjava/lang/Object;)V

    iget-object v0, v8, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_2

    aget-object v0, v3, v8

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v16

    and-int/lit8 v16, v16, 0x8

    if-nez v16, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v16

    and-int/lit8 v16, v16, 0x10

    if-eqz v16, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    move-object v5, v0

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/proxy/Enhancer;->b(Lm/l;Lm/q;Lm/q;Ljava/lang/reflect/Constructor;Lm/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v16, v11

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    const/4 v1, 0x0

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v16, v11

    const/4 v11, 0x0

    sget-object v0, Lm/q;->l:Lm/q;

    const/4 v1, 0x1

    new-array v2, v1, [Lm/q;

    aput-object v7, v2, v11

    const-string v3, "setMethodInterceptor_Enhancer"

    invoke-virtual {v10, v0, v3, v2}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v0

    invoke-virtual {v9, v0, v1}, Lm/l;->a(Lm/p;I)Lm/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lm/b;->l(Lm/q;)Lm/o;

    move-result-object v2

    invoke-virtual {v0, v11, v7}, Lm/b;->k(ILm/q;)Lm/o;

    move-result-object v3

    move-object/from16 v8, v20

    invoke-virtual {v0, v8, v2, v3}, Lm/b;->t(Lm/m;Lm/o;Lm/o;)V

    invoke-virtual {v0}, Lm/b;->C()V

    sget-object v0, Lm/q;->m:Lm/q;

    const/4 v2, 0x3

    new-array v3, v2, [Lm/q;

    aput-object v14, v3, v11

    aput-object v13, v3, v1

    move-object/from16 v4, v21

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v6, "executeSuperMethod_Enhancer"

    invoke-virtual {v10, v0, v6, v3}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v3

    invoke-virtual {v9, v3, v1}, Lm/l;->a(Lm/p;I)Lm/b;

    move-result-object v3

    invoke-virtual {v3, v15}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v6

    invoke-virtual {v3, v12}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v7

    invoke-virtual {v3, v10}, Lm/b;->l(Lm/q;)Lm/o;

    move-result-object v2

    const-string v5, "getClass"

    new-array v1, v11, [Lm/q;

    invoke-virtual {v10, v12, v5, v1}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v1

    new-array v5, v11, [Lm/o;

    invoke-virtual {v3, v1, v7, v2, v5}, Lm/b;->s(Lm/p;Lm/o;Lm/o;[Lm/o;)V

    const/4 v1, 0x5

    new-array v5, v1, [Lm/q;

    aput-object v12, v5, v11

    const/4 v12, 0x1

    aput-object v14, v5, v12

    const/4 v12, 0x2

    aput-object v13, v5, v12

    const/16 v17, 0x3

    aput-object v4, v5, v17

    const/16 v19, 0x4

    aput-object v15, v5, v19

    const-string v15, "executeMethod"

    move-object/from16 v12, v16

    invoke-virtual {v12, v0, v15, v5}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v0

    new-array v1, v1, [Lm/o;

    aput-object v7, v1, v11

    invoke-virtual {v3, v11, v14}, Lm/b;->k(ILm/q;)Lm/o;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v1, v7

    invoke-virtual {v3, v7, v13}, Lm/b;->k(ILm/q;)Lm/o;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v1, v7

    invoke-virtual {v3, v7, v4}, Lm/b;->k(ILm/q;)Lm/o;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    aput-object v2, v1, v19

    invoke-virtual {v3, v0, v6, v1}, Lm/b;->q(Lm/p;Lm/o;[Lm/o;)V

    invoke-virtual {v3, v6}, Lm/b;->B(Lm/o;)V

    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    array-length v14, v13

    :goto_3
    if-ge v11, v14, :cond_8

    aget-object v5, v13, v11

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v0, "_Enhancer"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const-string v0, "_Super"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_7

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_6

    iget-object v0, v12, Lcom/android/cglib/proxy/Enhancer;->d:Lcom/android/cglib/proxy/MethodFilter;

    if-eqz v0, :cond_6

    invoke-interface {v0, v5, v6}, Lcom/android/cglib/proxy/MethodFilter;->filter(Ljava/lang/reflect/Method;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v7, v8

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/cglib/proxy/Enhancer;->c(Lm/l;Lm/q;Lm/q;Ljava/lang/reflect/Method;Ljava/lang/String;Lm/m;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private b(Lm/l;Lm/q;Lm/q;Ljava/lang/reflect/Constructor;Lm/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/l;",
            "Lm/q<",
            "*>;",
            "Lm/q<",
            "*>;",
            "Ljava/lang/reflect/Constructor;",
            "Lm/m<",
            "*",
            "Lcom/android/cglib/proxy/MethodInterceptor;",
            ">;)V"
        }
    .end annotation

    const-class p5, Lcom/android/cglib/proxy/MethodInterceptor;

    invoke-static {p5}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    const-class p5, Ljava/lang/Class;

    invoke-static {p5}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    const-class p5, [Ljava/lang/Class;

    invoke-static {p5}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    const-class p5, Ljava/lang/String;

    invoke-static {p5}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    const-class p5, Ljava/lang/Object;

    invoke-static {p5}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    const-class p5, [Ljava/lang/Object;

    invoke-static {p5}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p5

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    array-length v1, p5

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, p5

    new-array v3, v3, [Lm/q;

    const/4 v4, 0x0

    :goto_1
    array-length v5, p5

    if-ge v4, v5, :cond_2

    aget-object v5, p5, v4

    invoke-static {v5}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p3, v3}, Lm/q;->c([Lm/q;)Lm/p;

    move-result-object v4

    invoke-virtual {p2, v3}, Lm/q;->c([Lm/q;)Lm/p;

    move-result-object p2

    goto :goto_2

    :cond_3
    new-array v4, v0, [Lm/q;

    invoke-virtual {p3, v4}, Lm/q;->c([Lm/q;)Lm/p;

    move-result-object v4

    new-array v5, v0, [Lm/q;

    invoke-virtual {p2, v5}, Lm/q;->c([Lm/q;)Lm/p;

    move-result-object p2

    :goto_2
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p4

    invoke-virtual {p1, v4, p4}, Lm/l;->a(Lm/p;I)Lm/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lm/b;->l(Lm/q;)Lm/o;

    move-result-object p3

    if-eqz v1, :cond_5

    array-length p4, p5

    new-array p4, p4, [Lm/o;

    :goto_3
    array-length v1, p5

    if-ge v0, v1, :cond_4

    aget-object v1, v3, v0

    invoke-virtual {p1, v0, v1}, Lm/b;->k(ILm/q;)Lm/o;

    move-result-object v1

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p2, v2, p3, p4}, Lm/b;->p(Lm/p;Lm/o;Lm/o;[Lm/o;)V

    goto :goto_4

    :cond_5
    new-array p4, v0, [Lm/o;

    invoke-virtual {p1, p2, v2, p3, p4}, Lm/b;->p(Lm/p;Lm/o;Lm/o;[Lm/o;)V

    :goto_4
    invoke-virtual {p1}, Lm/b;->C()V

    return-void
.end method

.method private c(Lm/l;Lm/q;Lm/q;Ljava/lang/reflect/Method;Ljava/lang/String;Lm/m;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/l;",
            "Lm/q<",
            "*>;",
            "Lm/q<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Lm/m<",
            "*",
            "Lcom/android/cglib/proxy/MethodInterceptor;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-class v4, Lcom/android/cglib/proxy/MethodInterceptor;

    invoke-static {v4}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v4

    const-class v5, Lcom/android/cglib/proxy/MethodProxyExecuter;

    invoke-static {v5}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v5

    const-class v6, Ljava/lang/Class;

    invoke-static {v6}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v6

    const-class v7, [Ljava/lang/Class;

    invoke-static {v7}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v9

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v10

    const-class v11, [Ljava/lang/Object;

    invoke-static {v11}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "void"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v12}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    if-eqz v15, :cond_0

    array-length v1, v15

    if-lez v1, :cond_0

    move/from16 v18, v13

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v13

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    array-length v13, v15

    new-array v13, v13, [Lm/q;

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    const/4 v5, 0x0

    :goto_1
    array-length v9, v15

    if-ge v5, v9, :cond_1

    aget-object v9, v15, v5

    invoke-static {v9}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v9

    aput-object v9, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v14, v3, v13}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object/from16 v19, v5

    move-object/from16 v20, v9

    const/4 v5, 0x0

    new-array v9, v5, [Lm/q;

    invoke-virtual {v2, v14, v3, v9}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v5

    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    and-int/lit16 v9, v9, -0x401

    invoke-virtual {v0, v5, v9}, Lm/l;->a(Lm/p;I)Lm/b;

    move-result-object v5

    invoke-virtual {v5, v14}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v9

    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static {v12}, Lcom/android/cglib/proxy/Const;->getPackedType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v0

    invoke-virtual {v5, v0}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v0

    move-object/from16 v21, v9

    goto :goto_3

    :cond_3
    move-object/from16 v21, v9

    const/4 v0, 0x0

    :goto_3
    sget-object v9, Lm/q;->i:Lm/q;

    invoke-virtual {v5, v9}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v9

    move-object/from16 v22, v14

    invoke-virtual {v5, v4}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v14

    invoke-static {v8}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v8

    invoke-virtual {v5, v8}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v8

    move-object/from16 v23, v0

    invoke-virtual {v5, v6}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v0

    move-object/from16 v24, v12

    invoke-virtual {v5, v6}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v12

    move-object/from16 v25, v4

    invoke-virtual {v5, v7}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v4

    move-object/from16 v26, v7

    invoke-virtual {v5, v11}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v7

    move-object/from16 v27, v11

    invoke-virtual {v5, v10}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v11

    move-object/from16 v28, v10

    sget-object v10, Lm/q;->m:Lm/q;

    invoke-virtual {v5, v10}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v10

    move-object/from16 v29, v10

    invoke-virtual {v5, v2}, Lm/b;->l(Lm/q;)Lm/o;

    move-result-object v10

    move-object/from16 v30, v11

    move-object/from16 v11, p6

    invoke-virtual {v5, v11, v14, v10}, Lm/b;->m(Lm/m;Lm/o;Lm/o;)V

    invoke-virtual {v5, v8, v3}, Lm/b;->v(Lm/o;Ljava/lang/Object;)V

    const-string v11, "getClass"

    move-object/from16 v31, v8

    const/4 v3, 0x0

    new-array v8, v3, [Lm/q;

    invoke-virtual {v2, v6, v11, v8}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v8

    new-array v11, v3, [Lm/o;

    invoke-virtual {v5, v8, v12, v10, v11}, Lm/b;->s(Lm/p;Lm/o;Lm/o;[Lm/o;)V

    if-eqz v1, :cond_6

    array-length v3, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v9, v3}, Lm/b;->v(Lm/o;Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v9}, Lm/b;->y(Lm/o;Lm/o;)V

    invoke-virtual {v5, v7, v9}, Lm/b;->y(Lm/o;Lm/o;)V

    const/4 v3, 0x0

    :goto_4
    array-length v8, v15

    if-ge v3, v8, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lm/b;->v(Lm/o;Ljava/lang/Object;)V

    aget-object v8, v15, v3

    invoke-virtual {v5, v0, v8}, Lm/b;->v(Lm/o;Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v9, v0}, Lm/b;->d(Lm/o;Lm/o;Lm/o;)V

    aget-object v8, v15, v3

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, v15, v3

    invoke-static {v8}, Lcom/android/cglib/proxy/Const;->getPackedType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v8

    move-object/from16 v32, v0

    const/4 v11, 0x1

    new-array v0, v11, [Lm/q;

    aget-object v16, v13, v3

    const/16 v17, 0x0

    aput-object v16, v0, v17

    move-object/from16 v33, v15

    const-string v15, "valueOf"

    invoke-virtual {v8, v8, v15, v0}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v0

    new-array v8, v11, [Lm/o;

    aget-object v11, v13, v3

    invoke-virtual {v5, v3, v11}, Lm/b;->k(ILm/q;)Lm/o;

    move-result-object v11

    aput-object v11, v8, v17

    move-object/from16 v11, v30

    invoke-virtual {v5, v0, v11, v8}, Lm/b;->q(Lm/p;Lm/o;[Lm/o;)V

    invoke-virtual {v5, v7, v9, v11}, Lm/b;->d(Lm/o;Lm/o;Lm/o;)V

    goto :goto_5

    :cond_4
    move-object/from16 v32, v0

    move-object/from16 v33, v15

    move-object/from16 v11, v30

    aget-object v0, v13, v3

    invoke-virtual {v5, v3, v0}, Lm/b;->k(ILm/q;)Lm/o;

    move-result-object v0

    invoke-virtual {v5, v7, v9, v0}, Lm/b;->d(Lm/o;Lm/o;Lm/o;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v30, v11

    move-object/from16 v0, v32

    move-object/from16 v15, v33

    goto :goto_4

    :cond_5
    move-object/from16 v33, v15

    goto :goto_6

    :cond_6
    move-object/from16 v33, v15

    const/4 v0, 0x0

    invoke-virtual {v5, v4, v0}, Lm/b;->v(Lm/o;Ljava/lang/Object;)V

    invoke-virtual {v5, v7, v0}, Lm/b;->v(Lm/o;Ljava/lang/Object;)V

    :goto_6
    sget-object v0, Lm/q;->m:Lm/q;

    const/4 v3, 0x6

    new-array v8, v3, [Lm/q;

    const/4 v9, 0x0

    aput-object v25, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v6, 0x2

    aput-object v20, v8, v6

    const/4 v9, 0x3

    aput-object v26, v8, v9

    const/4 v11, 0x4

    aput-object v27, v8, v11

    const/4 v15, 0x5

    aput-object v28, v8, v15

    const-string v15, "executeInterceptor"

    move-object/from16 v11, v19

    invoke-virtual {v11, v0, v15, v8}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v0

    if-eqz v18, :cond_7

    const/4 v8, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v8, v29

    :goto_7
    new-array v3, v3, [Lm/o;

    const/4 v11, 0x0

    aput-object v14, v3, v11

    const/4 v11, 0x1

    aput-object v12, v3, v11

    aput-object v31, v3, v6

    aput-object v4, v3, v9

    const/4 v4, 0x4

    aput-object v7, v3, v4

    const/4 v4, 0x5

    aput-object v10, v3, v4

    invoke-virtual {v5, v0, v8, v3}, Lm/b;->q(Lm/p;Lm/o;[Lm/o;)V

    if-eqz v18, :cond_8

    invoke-virtual {v5}, Lm/b;->C()V

    move-object/from16 v10, v22

    const/4 v4, 0x0

    goto :goto_9

    :cond_8
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lm/n;

    invoke-direct {v0}, Lm/n;-><init>()V

    move-object/from16 v3, v23

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Lm/b;->v(Lm/o;Ljava/lang/Object;)V

    sget-object v6, Lm/d;->c:Lm/d;

    move-object/from16 v7, v29

    invoke-virtual {v5, v6, v0, v7, v3}, Lm/b;->h(Lm/d;Lm/n;Lm/o;Lm/o;)V

    invoke-virtual {v5, v3, v7}, Lm/b;->e(Lm/o;Lm/o;)V

    invoke-static/range {v24 .. v24}, Lcom/android/cglib/proxy/Const;->getPackedType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v6

    invoke-static/range {v24 .. v24}, Lcom/android/cglib/proxy/Const;->getPrimitiveValueMethodName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Lm/q;

    move-object/from16 v10, v22

    invoke-virtual {v6, v10, v7, v9}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v6

    new-array v7, v8, [Lm/o;

    move-object/from16 v9, v21

    invoke-virtual {v5, v6, v9, v3, v7}, Lm/b;->s(Lm/p;Lm/o;Lm/o;[Lm/o;)V

    invoke-virtual {v5, v9}, Lm/b;->B(Lm/o;)V

    invoke-virtual {v5, v0}, Lm/b;->w(Lm/n;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Lm/b;->v(Lm/o;Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v7, v29

    const/4 v4, 0x0

    invoke-virtual {v5, v9, v7}, Lm/b;->e(Lm/o;Lm/o;)V

    :goto_8
    invoke-virtual {v5, v9}, Lm/b;->B(Lm/o;)V

    :goto_9
    const-string v0, "_Super"

    if-eqz v1, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0, v13}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v3, v10, v5, v13}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v3

    goto :goto_a

    :cond_a
    move-object/from16 v3, p2

    move-object/from16 v5, p5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v7, v6, [Lm/q;

    invoke-virtual {v2, v10, v0, v7}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v0

    new-array v7, v6, [Lm/q;

    invoke-virtual {v3, v10, v5, v7}, Lm/q;->e(Lm/q;Ljava/lang/String;[Lm/q;)Lm/p;

    move-result-object v3

    :goto_a
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    move-object/from16 v6, p1

    invoke-virtual {v6, v0, v5}, Lm/l;->a(Lm/p;I)Lm/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lm/b;->z(Lm/q;)Lm/o;

    move-result-object v5

    invoke-virtual {v0, v2}, Lm/b;->l(Lm/q;)Lm/o;

    move-result-object v2

    if-eqz v1, :cond_d

    move-object/from16 v1, v33

    array-length v6, v1

    new-array v6, v6, [Lm/o;

    const/4 v7, 0x0

    :goto_b
    array-length v8, v1

    if-ge v7, v8, :cond_b

    aget-object v8, v13, v7

    invoke-virtual {v0, v7, v8}, Lm/b;->k(ILm/q;)Lm/o;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_b
    if-eqz v18, :cond_c

    move-object v13, v4

    goto :goto_c

    :cond_c
    move-object v13, v5

    :goto_c
    invoke-virtual {v0, v3, v13, v2, v6}, Lm/b;->r(Lm/p;Lm/o;Lm/o;[Lm/o;)V

    goto :goto_e

    :cond_d
    if-eqz v18, :cond_e

    move-object v13, v4

    goto :goto_d

    :cond_e
    move-object v13, v5

    :goto_d
    const/4 v1, 0x0

    new-array v1, v1, [Lm/o;

    invoke-virtual {v0, v3, v13, v2, v1}, Lm/b;->r(Lm/p;Lm/o;Lm/o;[Lm/o;)V

    :goto_e
    if-eqz v18, :cond_f

    invoke-virtual {v0}, Lm/b;->C()V

    goto :goto_f

    :cond_f
    invoke-virtual {v0, v5}, Lm/b;->B(Lm/o;)V

    :goto_f
    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Class;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Enhancer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lm/q;->b(Ljava/lang/String;)Lm/q;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lm/q;->b(Ljava/lang/String;)Lm/q;

    move-result-object v1

    const-class v4, Lcom/android/cglib/proxy/EnhancerInterface;

    invoke-static {v4}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cglib/proxy/Enhancer;->a:Landroid/content/Context;

    const-string v6, "dexfiles"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Lm/l;

    invoke-direct {v12}, Lm/l;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".proxy"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v0, 0x1

    new-array v11, v0, [Lm/q;

    const/4 v0, 0x0

    aput-object v4, v11, v0

    move-object v6, v12

    move-object v7, v1

    move-object v10, v3

    invoke-virtual/range {v6 .. v11}, Lm/l;->c(Lm/q;Ljava/lang/String;ILm/q;[Lm/q;)V

    invoke-direct {p0, v12, v3, v1}, Lcom/android/cglib/proxy/Enhancer;->a(Lm/l;Lm/q;Lm/q;)V

    :try_start_0
    const-class v0, Lcom/android/cglib/proxy/Enhancer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0, v1}, Lm/l;->e(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setInterceptor(Lcom/android/cglib/proxy/MethodInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/proxy/Enhancer;->c:Lcom/android/cglib/proxy/MethodInterceptor;

    return-void
.end method

.method public setMethodFilter(Lcom/android/cglib/proxy/MethodFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/proxy/Enhancer;->d:Lcom/android/cglib/proxy/MethodFilter;

    return-void
.end method

.method public setSuperclass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    return-void
.end method
