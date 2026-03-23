.class public Lw3/x1;
.super Lw3/n0;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/x1$c;,
        Lw3/x1$b;,
        Lw3/x1$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Object"

    sput-object v0, Lw3/x1;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    return-void
.end method

.method private static I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;
    .locals 2

    invoke-virtual {p0}, Lw3/m;->v()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p0

    invoke-static {p0}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object p0

    return-object p0
.end method

.method static J1(Lw3/z2;Z)V
    .locals 2

    new-instance v0, Lw3/x1;

    invoke-direct {v0}, Lw3/x1;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lw3/n0;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p0}, Lw3/a3;->C(ILw3/z2;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lw3/x1;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lw3/x1$a;

    invoke-direct {v0, p0}, Lw3/x1$a;-><init>(Lw3/x1;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw3/x1$b;

    invoke-direct {v0, p0}, Lw3/x1$b;-><init>(Lw3/x1;)V

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Object"

    return-object v0
.end method

.method protected o1(Lw3/l0;)V
    .locals 7

    sget-object v6, Lw3/x1;->j:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "getPrototypeOf"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    iget v0, v0, Lw3/m;->k:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v3, -0x11

    const-string v4, "setPrototypeOf"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    :cond_0
    const/4 v3, -0x2

    const-string v4, "keys"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x3

    const-string v4, "getOwnPropertyNames"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xe

    const-string v4, "getOwnPropertySymbols"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x4

    const-string v4, "getOwnPropertyDescriptor"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x5

    const-string v4, "defineProperty"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x6

    const-string v4, "isExtensible"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x7

    const-string v4, "preventExtensions"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x8

    const-string v4, "defineProperties"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x9

    const-string v4, "create"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xa

    const-string v4, "isSealed"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xb

    const-string v4, "isFrozen"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xc

    const-string v4, "seal"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xd

    const-string v4, "freeze"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xf

    const-string v4, "assign"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x10

    const-string v4, "is"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lw3/n0;->o1(Lw3/l0;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "__defineGetter__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v13, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "__defineSetter__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v13, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "__lookupGetter__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v13, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "__lookupSetter__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v13, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "valueOf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v13, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "propertyIsEnumerable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v13, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "isPrototypeOf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v13, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v13, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v13, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "toSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v13, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "hasOwnProperty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v13, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "toLocaleString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v13, 0x0

    :goto_0
    packed-switch v13, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_1
    const/16 v1, 0xa

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xc

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_7
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_9
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_a
    const/4 v1, 0x3

    :goto_1
    :pswitch_b
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7866ceda -> :sswitch_b
        -0x6aaca37f -> :sswitch_a
        -0x6a2ea58a -> :sswitch_9
        -0x69e9ad94 -> :sswitch_8
        -0x5ead2806 -> :sswitch_7
        -0x4ef0f4f1 -> :sswitch_6
        -0x22bb54f9 -> :sswitch_5
        0xdce0328 -> :sswitch_4
        0x3068b019 -> :sswitch_3
        0x51da95a5 -> :sswitch_2
        0x54610f5a -> :sswitch_1
        0x75d2f4e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lw3/n0;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lw3/a3;->f(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    sget-object v6, Lw3/x1;->j:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lw3/l0;->h2()I

    move-result v6

    const-string v9, "writable"

    const-string v10, ".to.object"

    const-string v11, "undef"

    const-string v12, "msg."

    const-string v14, "null"

    const-string v15, "configurable"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v13, 0x1

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    array-length v0, v5

    if-lt v0, v13, :cond_a

    instance-of v0, v4, Lw3/a3;

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    move-object v0, v4

    check-cast v0, Lw3/a3;

    aget-object v3, v5, v8

    invoke-static {v2, v3}, Lw3/u2;->j2(Lw3/m;Ljava/lang/Object;)Lw3/u2$f;

    move-result-object v2

    iget-object v3, v2, Lw3/u2$f;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v3, v2, Lw3/u2$f;->b:I

    :goto_0
    const/16 v4, 0xc

    if-ne v6, v4, :cond_3

    const/4 v8, 0x1

    :cond_3
    :goto_1
    iget-object v4, v2, Lw3/u2$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v8}, Lw3/a3;->x0(Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lw3/a3;->l()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v5, v0, Lw3/a3;

    if-eqz v5, :cond_6

    check-cast v0, Lw3/a3;

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v4, :cond_9

    instance-of v0, v4, Lw3/x0;

    if-eqz v0, :cond_8

    check-cast v4, Lw3/x0;

    iget-object v0, v2, Lw3/u2$f;->a:Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-virtual {v4, v0, v1}, Lw3/x0;->b(Ljava/lang/String;Lw3/z2;)Lw3/d0;

    move-result-object v4

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v0, v1}, Lw3/x0;->a(Ljava/lang/String;Lw3/z2;)Lw3/d0;

    move-result-object v4

    :cond_8
    :goto_3
    return-object v4

    :cond_9
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    return-object v0

    :cond_a
    :goto_4
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_2
    array-length v0, v5

    if-lt v0, v7, :cond_11

    aget-object v0, v5, v13

    instance-of v0, v0, Lw3/f;

    if-nez v0, :cond_b

    goto :goto_8

    :cond_b
    instance-of v0, v4, Lw3/a3;

    if-nez v0, :cond_d

    new-array v0, v7, [Ljava/lang/Object;

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    :goto_5
    aput-object v14, v0, v8

    aget-object v2, v5, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    const-string v2, "msg.extend.scriptable"

    invoke-static {v2, v0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object v0

    throw v0

    :cond_d
    move-object v0, v4

    check-cast v0, Lw3/a3;

    aget-object v3, v5, v8

    invoke-static {v2, v3}, Lw3/u2;->j2(Lw3/m;Ljava/lang/Object;)Lw3/u2$f;

    move-result-object v2

    iget-object v3, v2, Lw3/u2$f;->a:Ljava/lang/String;

    if-eqz v3, :cond_e

    const/4 v2, 0x0

    goto :goto_6

    :cond_e
    iget v2, v2, Lw3/u2$f;->b:I

    :goto_6
    aget-object v4, v5, v13

    check-cast v4, Lw3/f;

    const/16 v5, 0xa

    if-ne v6, v5, :cond_f

    goto :goto_7

    :cond_f
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v0, v3, v2, v4, v13}, Lw3/a3;->f1(Ljava/lang/String;ILw3/f;Z)V

    instance-of v2, v0, Lw3/y0;

    if-eqz v2, :cond_10

    check-cast v0, Lw3/y0;

    invoke-virtual {v0, v8}, Lw3/y0;->t2(Z)V

    :cond_10
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    return-object v0

    :cond_11
    :goto_8
    array-length v0, v5

    if-lt v0, v7, :cond_12

    aget-object v0, v5, v13

    goto :goto_9

    :cond_12
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :goto_9
    invoke-static {v0}, Lw3/u2;->f1(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_3
    invoke-static/range {p2 .. p5}, Lw3/u2;->q(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v0

    const/16 v2, 0xb4

    if-lt v0, v2, :cond_15

    if-eqz v4, :cond_13

    invoke-static/range {p4 .. p4}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_14

    move-object v11, v14

    :cond_14
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_15
    array-length v0, v5

    if-eqz v0, :cond_18

    aget-object v0, v5, v8

    instance-of v2, v0, Lw3/z2;

    if-eqz v2, :cond_18

    check-cast v0, Lw3/z2;

    :cond_16
    invoke-interface {v0}, Lw3/z2;->l()Lw3/z2;

    move-result-object v0

    if-ne v0, v4, :cond_17

    const/4 v8, 0x1

    goto :goto_a

    :cond_17
    if-nez v0, :cond_16

    :cond_18
    :goto_a
    invoke-static {v8}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v0

    const/16 v3, 0xb4

    if-lt v0, v3, :cond_1b

    if-eqz v4, :cond_19

    invoke-static/range {p4 .. p4}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1a

    move-object v11, v14

    :cond_1a
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_1b
    array-length v0, v5

    if-ge v0, v13, :cond_1c

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_b

    :cond_1c
    aget-object v0, v5, v8

    :goto_b
    instance-of v3, v0, Lw3/i3;

    if-eqz v3, :cond_1e

    move-object v2, v4

    check-cast v2, Lw3/k3;

    check-cast v0, Lw3/i3;

    invoke-interface {v2, v0, v4}, Lw3/k3;->k(Lw3/i3;Lw3/z2;)Z

    move-result v2

    if-eqz v2, :cond_1d

    instance-of v3, v4, Lw3/a3;

    if-eqz v3, :cond_1d

    move-object v2, v4

    check-cast v2, Lw3/a3;

    invoke-virtual {v2, v0}, Lw3/a3;->o0(Lw3/i3;)I

    move-result v0

    and-int/2addr v0, v7

    if-nez v0, :cond_22

    :goto_c
    const/4 v8, 0x1

    goto :goto_d

    :cond_1d
    move v8, v2

    goto :goto_d

    :cond_1e
    invoke-static {v2, v0}, Lw3/u2;->j2(Lw3/m;Ljava/lang/Object;)Lw3/u2$f;

    move-result-object v2

    :try_start_0
    iget-object v0, v2, Lw3/u2$f;->a:Ljava/lang/String;

    if-nez v0, :cond_1f

    iget v0, v2, Lw3/u2$f;->b:I

    invoke-interface {v4, v0, v4}, Lw3/z2;->C(ILw3/z2;)Z

    move-result v0

    if-eqz v0, :cond_20

    instance-of v3, v4, Lw3/a3;

    if-eqz v3, :cond_20

    move-object v0, v4

    check-cast v0, Lw3/a3;

    iget v3, v2, Lw3/u2$f;->b:I

    invoke-virtual {v0, v3}, Lw3/a3;->m0(I)I

    move-result v0

    and-int/2addr v0, v7

    if-nez v0, :cond_22

    goto :goto_c

    :cond_1f
    invoke-interface {v4, v0, v4}, Lw3/z2;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result v0

    if-eqz v0, :cond_20

    instance-of v3, v4, Lw3/a3;

    if-eqz v3, :cond_20

    move-object v0, v4

    check-cast v0, Lw3/a3;

    iget-object v3, v2, Lw3/u2$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lw3/a3;->n0(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lw3/b0; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v7

    if-nez v0, :cond_22

    goto :goto_c

    :cond_20
    move v8, v0

    goto :goto_d

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lw3/s2;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    iget-object v5, v2, Lw3/u2$f;->a:Ljava/lang/String;

    if-nez v5, :cond_21

    iget v2, v2, Lw3/u2$f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :cond_21
    aput-object v5, v4, v8

    const-string v2, "msg.prop.not.found"

    invoke-static {v2, v4}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    :goto_d
    invoke-static {v8}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_23
    throw v0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v0

    const/16 v3, 0xb4

    if-lt v0, v3, :cond_26

    if-eqz v4, :cond_24

    invoke-static/range {p4 .. p4}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_25

    move-object v11, v14

    :cond_25
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_26
    array-length v0, v5

    if-ge v0, v13, :cond_27

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_e

    :cond_27
    aget-object v0, v5, v8

    :goto_e
    instance-of v3, v0, Lw3/i3;

    if-eqz v3, :cond_28

    invoke-static/range {p4 .. p4}, Lw3/a3;->d0(Ljava/lang/Object;)Lw3/k3;

    move-result-object v2

    check-cast v0, Lw3/i3;

    invoke-interface {v2, v0, v4}, Lw3/k3;->k(Lw3/i3;Lw3/z2;)Z

    move-result v0

    goto :goto_f

    :cond_28
    invoke-static {v2, v0}, Lw3/u2;->j2(Lw3/m;Ljava/lang/Object;)Lw3/u2$f;

    move-result-object v0

    iget-object v2, v0, Lw3/u2$f;->a:Ljava/lang/String;

    if-nez v2, :cond_29

    iget v0, v0, Lw3/u2$f;->b:I

    invoke-interface {v4, v0, v4}, Lw3/z2;->C(ILw3/z2;)Z

    move-result v0

    goto :goto_f

    :cond_29
    invoke-interface {v4, v2, v4}, Lw3/z2;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result v0

    :goto_f
    invoke-static {v0}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v0

    const/16 v2, 0xb4

    if-lt v0, v2, :cond_2c

    if-eqz v4, :cond_2a

    invoke-static/range {p4 .. p4}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_2b

    move-object v11, v14

    :cond_2b
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_2c
    return-object v4

    :pswitch_8
    const-string v0, "toString"

    invoke-static {v4, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lw3/f;

    if-eqz v5, :cond_2d

    check-cast v0, Lw3/f;

    sget-object v5, Lw3/u2;->y:[Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4, v5}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2d
    invoke-static {v0}, Lw3/u2;->f1(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_9
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lw3/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static/range {p2 .. p5}, Lw3/u2;->q(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2e

    sub-int/2addr v2, v13

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_2e

    invoke-virtual {v0, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2e
    return-object v0

    :cond_2f
    invoke-static/range {p4 .. p4}, Lw3/u2;->r(Lw3/z2;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    if-eqz v4, :cond_30

    invoke-virtual {v0, v2, v3, v5}, Lw3/c;->p(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    return-object v0

    :cond_30
    array-length v0, v5

    if-eqz v0, :cond_32

    aget-object v0, v5, v8

    if-eqz v0, :cond_32

    invoke-static {v0}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_10

    :cond_31
    aget-object v0, v5, v8

    invoke-static {v2, v3, v0}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    return-object v0

    :cond_32
    :goto_10
    new-instance v0, Lw3/x1;

    invoke-direct {v0}, Lw3/x1;-><init>()V

    return-object v0

    :pswitch_b
    array-length v0, v5

    if-ge v0, v13, :cond_33

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_11

    :cond_33
    aget-object v0, v5, v8

    :goto_11
    invoke-static {v2, v3, v0}, Lw3/x1;->I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    invoke-interface {v0}, Lw3/z2;->l()Lw3/z2;

    move-result-object v0

    return-object v0

    :pswitch_c
    array-length v0, v5

    if-ge v0, v13, :cond_34

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_12

    :cond_34
    aget-object v0, v5, v8

    :goto_12
    invoke-static {v2, v3, v0}, Lw3/x1;->I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    invoke-interface {v0}, Lw3/z2;->getIds()[Ljava/lang/Object;

    move-result-object v0

    :goto_13
    array-length v4, v0

    if-ge v8, v4, :cond_35

    aget-object v4, v0, v8

    invoke-static {v4}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_35
    invoke-virtual {v2, v3, v0}, Lw3/m;->R(Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    return-object v0

    :pswitch_d
    array-length v0, v5

    if-ge v0, v13, :cond_36

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_14

    :cond_36
    aget-object v0, v5, v8

    :goto_14
    invoke-static {v2, v3, v0}, Lw3/x1;->I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0, v13, v8}, Lw3/a3;->y0(ZZ)[Ljava/lang/Object;

    move-result-object v0

    :goto_15
    array-length v4, v0

    if-ge v8, v4, :cond_37

    aget-object v4, v0, v8

    invoke-static {v4}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_37
    invoke-virtual {v2, v3, v0}, Lw3/m;->R(Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    return-object v0

    :pswitch_e
    array-length v0, v5

    if-ge v0, v13, :cond_38

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_16

    :cond_38
    aget-object v0, v5, v8

    :goto_16
    invoke-static {v2, v3, v0}, Lw3/x1;->I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    array-length v3, v5

    if-ge v3, v7, :cond_39

    sget-object v3, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_17

    :cond_39
    aget-object v3, v5, v13

    :goto_17
    invoke-virtual {v0, v2, v3}, Lw3/a3;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    if-nez v0, :cond_3a

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :cond_3a
    return-object v0

    :pswitch_f
    array-length v0, v5

    if-ge v0, v13, :cond_3b

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_18

    :cond_3b
    aget-object v0, v5, v8

    :goto_18
    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    array-length v3, v5

    if-ge v3, v7, :cond_3c

    sget-object v3, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_19

    :cond_3c
    aget-object v3, v5, v13

    :goto_19
    array-length v4, v5

    const/4 v6, 0x3

    if-ge v4, v6, :cond_3d

    sget-object v4, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_1a

    :cond_3d
    aget-object v4, v5, v7

    :goto_1a
    invoke-static {v4}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lw3/a3;->V(Lw3/m;Ljava/lang/Object;Lw3/a3;)V

    return-object v0

    :pswitch_10
    array-length v0, v5

    if-ge v0, v13, :cond_3e

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_1b

    :cond_3e
    aget-object v0, v5, v8

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3f

    instance-of v2, v0, Lw3/a3;

    if-nez v2, :cond_3f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_3f
    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0}, Lw3/a3;->O0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_11
    array-length v0, v5

    if-ge v0, v13, :cond_40

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_1c

    :cond_40
    aget-object v0, v5, v8

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_41

    instance-of v2, v0, Lw3/a3;

    if-nez v2, :cond_41

    return-object v0

    :cond_41
    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0}, Lw3/a3;->T0()V

    return-object v0

    :pswitch_12
    array-length v0, v5

    if-ge v0, v13, :cond_42

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_1d

    :cond_42
    aget-object v0, v5, v8

    :goto_1d
    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    array-length v4, v5

    if-ge v4, v7, :cond_43

    sget-object v4, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_1e

    :cond_43
    aget-object v4, v5, v13

    :goto_1e
    invoke-static {v4, v3}, Lw3/m;->k0(Ljava/lang/Object;Lw3/z2;)Lw3/z2;

    move-result-object v3

    invoke-static {v3}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lw3/a3;->U(Lw3/m;Lw3/a3;)V

    return-object v0

    :pswitch_13
    array-length v0, v5

    if-ge v0, v13, :cond_44

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_1f

    :cond_44
    aget-object v0, v5, v8

    :goto_1f
    if-nez v0, :cond_45

    const/4 v7, 0x0

    goto :goto_20

    :cond_45
    invoke-static {v0}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object v7

    :goto_20
    new-instance v0, Lw3/x1;

    invoke-direct {v0}, Lw3/x1;-><init>()V

    invoke-virtual {v0, v3}, Lw3/a3;->h(Lw3/z2;)V

    invoke-virtual {v0, v7}, Lw3/a3;->A(Lw3/z2;)V

    array-length v4, v5

    if-le v4, v13, :cond_46

    aget-object v4, v5, v13

    invoke-static {v4}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    aget-object v4, v5, v13

    invoke-static {v4, v3}, Lw3/m;->k0(Ljava/lang/Object;Lw3/z2;)Lw3/z2;

    move-result-object v3

    invoke-static {v3}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lw3/a3;->U(Lw3/m;Lw3/a3;)V

    :cond_46
    return-object v0

    :pswitch_14
    array-length v0, v5

    if-ge v0, v13, :cond_47

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_21

    :cond_47
    aget-object v0, v5, v8

    :goto_21
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_48

    instance-of v3, v0, Lw3/a3;

    if-nez v3, :cond_48

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_48
    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0}, Lw3/a3;->O0()Z

    move-result v3

    if-eqz v3, :cond_49

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_49
    invoke-virtual {v0}, Lw3/a3;->s()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    :goto_22
    if-ge v8, v4, :cond_4b

    aget-object v5, v3, v8

    invoke-virtual {v0, v2, v5}, Lw3/a3;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object v5

    invoke-virtual {v5, v15}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_4a
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_4b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_15
    array-length v0, v5

    if-ge v0, v13, :cond_4c

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_23

    :cond_4c
    aget-object v0, v5, v8

    :goto_23
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_4d

    instance-of v3, v0, Lw3/a3;

    if-nez v3, :cond_4d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_4d
    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0}, Lw3/a3;->O0()Z

    move-result v3

    if-eqz v3, :cond_4e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_4e
    invoke-virtual {v0}, Lw3/a3;->s()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    :goto_24
    if-ge v8, v4, :cond_51

    aget-object v5, v3, v8

    invoke-virtual {v0, v2, v5}, Lw3/a3;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v15}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_4f
    invoke-virtual {v1, v5}, Lw3/a3;->N0(Lw3/a3;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {v5, v9}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_16
    array-length v0, v5

    if-ge v0, v13, :cond_52

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_25

    :cond_52
    aget-object v0, v5, v8

    :goto_25
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_53

    instance-of v3, v0, Lw3/a3;

    if-nez v3, :cond_53

    return-object v0

    :cond_53
    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0}, Lw3/a3;->s()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_55

    aget-object v6, v3, v5

    invoke-virtual {v0, v2, v6}, Lw3/a3;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object v7

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15, v7, v9}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v6, v7, v8}, Lw3/a3;->W(Lw3/m;Ljava/lang/Object;Lw3/a3;Z)V

    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_55
    invoke-virtual {v0}, Lw3/a3;->T0()V

    return-object v0

    :pswitch_17
    array-length v0, v5

    if-ge v0, v13, :cond_56

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_27

    :cond_56
    aget-object v0, v5, v8

    :goto_27
    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_57

    instance-of v3, v0, Lw3/a3;

    if-nez v3, :cond_57

    return-object v0

    :cond_57
    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0, v13, v13}, Lw3/a3;->y0(ZZ)[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_5a

    aget-object v6, v3, v5

    invoke-virtual {v0, v2, v6}, Lw3/a3;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object v7

    invoke-virtual {v1, v7}, Lw3/a3;->N0(Lw3/a3;)Z

    move-result v10

    if-eqz v10, :cond_58

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v9}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v9, v7, v10}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :cond_58
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15, v7, v10}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :cond_59
    invoke-virtual {v0, v2, v6, v7, v8}, Lw3/a3;->W(Lw3/m;Ljava/lang/Object;Lw3/a3;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_5a
    invoke-virtual {v0}, Lw3/a3;->T0()V

    return-object v0

    :pswitch_18
    array-length v0, v5

    if-ge v0, v13, :cond_5b

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_29

    :cond_5b
    aget-object v0, v5, v8

    :goto_29
    invoke-static {v2, v3, v0}, Lw3/x1;->I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0, v13, v13}, Lw3/a3;->y0(ZZ)[Ljava/lang/Object;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_2a
    array-length v5, v0

    if-ge v8, v5, :cond_5d

    aget-object v5, v0, v8

    instance-of v6, v5, Lw3/i3;

    if-eqz v6, :cond_5c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_5d
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lw3/m;->R(Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    return-object v0

    :pswitch_19
    array-length v0, v5

    if-lez v0, :cond_5e

    aget-object v0, v5, v8

    goto :goto_2b

    :cond_5e
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :goto_2b
    invoke-static {v2, v4, v0}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    const/4 v3, 0x1

    :goto_2c
    array-length v6, v5

    if-ge v3, v6, :cond_65

    aget-object v6, v5, v3

    if-eqz v6, :cond_64

    invoke-static {v6}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    goto/16 :goto_30

    :cond_5f
    aget-object v6, v5, v3

    invoke-static {v2, v4, v6}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v6

    invoke-interface {v6}, Lw3/z2;->getIds()[Ljava/lang/Object;

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x0

    :goto_2d
    if-ge v11, v10, :cond_64

    aget-object v12, v7, v11

    instance-of v14, v0, Lw3/a3;

    if-eqz v14, :cond_61

    move-object v14, v0

    check-cast v14, Lw3/a3;

    invoke-virtual {v14, v2, v12}, Lw3/a3;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object v14

    if-eqz v14, :cond_61

    invoke-virtual {v1, v14}, Lw3/a3;->N0(Lw3/a3;)Z

    move-result v15

    if-eqz v15, :cond_61

    invoke-virtual {v14, v9}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lw3/a3;->P0(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_60

    goto :goto_2e

    :cond_60
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v12, v0, v8

    const-string v2, "msg.change.value.with.writable.false"

    invoke-static {v2, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_61
    :goto_2e
    instance-of v14, v12, Ljava/lang/String;

    if-eqz v14, :cond_62

    check-cast v12, Ljava/lang/String;

    invoke-interface {v6, v12, v6}, Lw3/z2;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v14, v15, :cond_63

    invoke-static {v14}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_63

    invoke-interface {v0, v12, v0, v14}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    goto :goto_2f

    :cond_62
    instance-of v14, v12, Ljava/lang/Number;

    if-eqz v14, :cond_63

    invoke-static {v12}, Lw3/u2;->R1(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v6, v12, v6}, Lw3/z2;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v14, v15, :cond_63

    invoke-static {v14}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_63

    invoke-interface {v0, v12, v0, v14}, Lw3/z2;->d(ILw3/z2;Ljava/lang/Object;)V

    :cond_63
    :goto_2f
    add-int/lit8 v11, v11, 0x1

    goto :goto_2d

    :cond_64
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_65
    return-object v0

    :pswitch_1a
    array-length v0, v5

    if-ge v0, v13, :cond_66

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_31

    :cond_66
    aget-object v0, v5, v8

    :goto_31
    array-length v2, v5

    if-ge v2, v7, :cond_67

    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_32

    :cond_67
    aget-object v2, v5, v13

    :goto_32
    invoke-static {v0, v2}, Lw3/u2;->q1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1b
    array-length v3, v5

    if-lt v3, v7, :cond_6f

    aget-object v3, v5, v13

    if-nez v3, :cond_68

    const/4 v7, 0x0

    goto :goto_33

    :cond_68
    invoke-static {v3}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object v7

    :goto_33
    instance-of v3, v7, Lw3/i3;

    if-nez v3, :cond_6e

    aget-object v3, v5, v8

    invoke-virtual/range {p2 .. p2}, Lw3/m;->v()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_69

    invoke-static {v2, v3, v0}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    :cond_69
    instance-of v0, v3, Lw3/a3;

    if-nez v0, :cond_6a

    return-object v3

    :cond_6a
    check-cast v3, Lw3/a3;

    invoke-virtual {v3}, Lw3/a3;->O0()Z

    move-result v0

    if-eqz v0, :cond_6d

    move-object v0, v7

    :goto_34
    if-eqz v0, :cond_6c

    if-eq v0, v3, :cond_6b

    invoke-interface {v0}, Lw3/z2;->l()Lw3/z2;

    move-result-object v0

    goto :goto_34

    :cond_6b
    new-array v0, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const-string v2, "msg.object.cyclic.prototype"

    invoke-static {v2, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_6c
    invoke-virtual {v3, v7}, Lw3/a3;->A(Lw3/z2;)V

    return-object v3

    :cond_6d
    const-string v0, "msg.not.extensible"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_6e
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v7}, Lw3/u2;->r2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const-string v2, "msg.arg.not.object"

    invoke-static {v2, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_6f
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Object.setPrototypeOf"

    aput-object v2, v0, v8

    const-string v2, "2"

    aput-object v2, v0, v13

    array-length v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "msg.method.missing.parameter"

    invoke-static {v2, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch -0x11
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
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lw3/u2;->r(Lw3/z2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw3/x1$c;

    invoke-direct {v0, p0}, Lw3/x1$c;-><init>(Lw3/x1;)V

    return-object v0
.end method

.method protected y1(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "__lookupSetter__"

    goto :goto_2

    :pswitch_1
    const-string v0, "__lookupGetter__"

    goto :goto_2

    :pswitch_2
    const-string v1, "__defineSetter__"

    goto :goto_0

    :pswitch_3
    const-string v1, "__defineGetter__"

    :goto_0
    move-object v0, v1

    const/4 v2, 0x2

    goto :goto_2

    :pswitch_4
    const-string v0, "toSource"

    goto :goto_1

    :pswitch_5
    const-string v0, "isPrototypeOf"

    goto :goto_2

    :pswitch_6
    const-string v0, "propertyIsEnumerable"

    goto :goto_2

    :pswitch_7
    const-string v0, "hasOwnProperty"

    goto :goto_2

    :pswitch_8
    const-string v0, "valueOf"

    goto :goto_1

    :pswitch_9
    const-string v0, "toLocaleString"

    goto :goto_1

    :pswitch_a
    const-string v0, "toString"

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_b
    const-string v0, "constructor"

    :goto_2
    sget-object v1, Lw3/x1;->j:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
