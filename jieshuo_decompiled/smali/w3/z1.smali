.class public Lw3/z1;
.super Lw3/n0;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/Object;

.field static final m:Lw3/j3;


# instance fields
.field private final j:Lw3/h0;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Set"

    sput-object v0, Lw3/z1;->l:Ljava/lang/Object;

    new-instance v0, Lw3/j3;

    const-string v1, "[Symbol.getSize]"

    invoke-direct {v0, v1}, Lw3/j3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw3/z1;->m:Lw3/j3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    new-instance v0, Lw3/h0;

    invoke-direct {v0}, Lw3/h0;-><init>()V

    iput-object v0, p0, Lw3/z1;->j:Lw3/h0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/z1;->k:Z

    return-void
.end method

.method static I1(Lw3/m;Lw3/z2;Z)V
    .locals 3

    new-instance v0, Lw3/z1;

    invoke-direct {v0}, Lw3/z1;-><init>()V

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    invoke-virtual {p0, p1}, Lw3/m;->S(Lw3/z2;)Lw3/z2;

    move-result-object p1

    check-cast p1, Lw3/a3;

    const-string v1, "enumerable"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, p1, v2}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    const-string v1, "configurable"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, p1, v2}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    sget-object v1, Lw3/z1;->m:Lw3/j3;

    invoke-virtual {v0, v1, v0}, Lw3/n0;->B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {p1, v2, p1, v1}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    const-string v1, "size"

    invoke-virtual {v0, p0, v1, p1}, Lw3/n0;->V(Lw3/m;Ljava/lang/Object;Lw3/a3;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lw3/a3;->c1()V

    :cond_0
    return-void
.end method

.method private J1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-wide v2, Lw3/u2;->u:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    sget-object p1, Lw3/u2;->v:Ljava/lang/Double;

    :cond_0
    iget-object v0, p0, Lw3/z1;->j:Lw3/h0;

    invoke-virtual {v0, p1, p1}, Lw3/h0;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private K1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/z1;->j:Lw3/h0;

    invoke-virtual {v0}, Lw3/h0;->clear()V

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private L1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/z1;->j:Lw3/h0;

    invoke-virtual {v0, p1}, Lw3/h0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private M1(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Lw3/f;

    if-eqz v0, :cond_3

    check-cast p3, Lw3/f;

    invoke-virtual {p1}, Lw3/m;->L()Z

    move-result v0

    iget-object v1, p0, Lw3/z1;->j:Lw3/h0;

    invoke-virtual {v1}, Lw3/h0;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, p4, p2}, Lw3/u2;->d2(Lw3/m;Ljava/lang/Object;Lw3/z2;)Lw3/z2;

    move-result-object v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    move-object v2, p2

    :cond_0
    if-nez v2, :cond_1

    sget-object v2, Lw3/w3;->b:Lw3/z2;

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw3/h0$a;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v3, v3, Lw3/h0$a;->b:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object p0, v4, v3

    invoke-interface {p3, p1, p2, v2, v4}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1

    :cond_3
    invoke-static {p3}, Lw3/u2;->f1(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private N1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/z1;->j:Lw3/h0;

    invoke-virtual {v0}, Lw3/h0;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private O1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/z1;->j:Lw3/h0;

    invoke-virtual {v0, p1}, Lw3/h0;->e(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private P1(Lw3/z2;Lw3/d1$b;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lw3/d1;

    iget-object v1, p0, Lw3/z1;->j:Lw3/h0;

    invoke-virtual {v1}, Lw3/h0;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "Set Iterator"

    invoke-direct {v0, p1, v2, p2, v1}, Lw3/d1;-><init>(Lw3/z2;Ljava/lang/String;Lw3/d1$b;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static Q1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/Object;)V
    .locals 5

    if-eqz p3, :cond_4

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3, p0, p1}, Lw3/u2;->d(Ljava/lang/Object;Lw3/m;Lw3/z2;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lw3/a3;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lw3/m;->T(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object v0

    invoke-static {v0}, Lw3/a3;->c0(Ljava/lang/Object;)Lw3/a3;

    move-result-object v0

    invoke-virtual {v0}, Lw3/a3;->l()Lw3/z2;

    move-result-object v0

    const-string v1, "add"

    invoke-static {v0, v1, p0, p1}, Lw3/u2;->j0(Ljava/lang/Object;Ljava/lang/String;Lw3/m;Lw3/z2;)Lw3/f;

    move-result-object v0

    invoke-static {p0}, Lw3/u2;->L0(Lw3/m;)Lw3/z2;

    new-instance v1, Lw3/s0;

    invoke-direct {v1, p0, p1, p3}, Lw3/s0;-><init>(Lw3/m;Lw3/z2;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v1}, Lw3/s0;->i()Lw3/s0$a;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-interface {v0, p0, p1, p2, v3}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lw3/s0;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Lw3/s0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method private static R1(Lw3/z2;Lw3/l0;)Lw3/z1;
    .locals 1

    const-class v0, Lw3/z1;

    invoke-static {p0, v0, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/z1;

    iget-boolean v0, p0, Lw3/z1;->k:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "msg.incompat.call"

    invoke-static {p1, p0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Set"

    return-object v0
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "keys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "has"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "forEach"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "values"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "entries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x7

    :goto_1
    :pswitch_7
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5edd7b70 -> :sswitch_8
        -0x5ead2806 -> :sswitch_7
        -0x4f997a55 -> :sswitch_6
        -0x311a62de -> :sswitch_5
        -0x28732996 -> :sswitch_4
        0x178a1 -> :sswitch_3
        0x1929a -> :sswitch_2
        0x322df4 -> :sswitch_1
        0x5a5b64d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected s1(Lw3/i3;)I
    .locals 1

    sget-object v0, Lw3/z1;->m:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x9

    return p1

    :cond_0
    sget-object v0, Lw3/j3;->b:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x6

    return p1

    :cond_1
    sget-object v0, Lw3/j3;->c:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xa

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lw3/z1;->l:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Set.prototype has no method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-static {p4, p1}, Lw3/z1;->R1(Lw3/z2;Lw3/l0;)Lw3/z1;

    move-result-object p1

    invoke-direct {p1}, Lw3/z1;->N1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p4, p1}, Lw3/z1;->R1(Lw3/z2;Lw3/l0;)Lw3/z1;

    move-result-object p1

    array-length p4, p5

    if-lez p4, :cond_1

    aget-object p4, p5, v2

    goto :goto_0

    :cond_1
    sget-object p4, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    array-length v0, p5

    if-le v0, v1, :cond_2

    aget-object p5, p5, v1

    goto :goto_1

    :cond_2
    sget-object p5, Lw3/w3;->a:Ljava/lang/Object;

    :goto_1
    invoke-direct {p1, p2, p3, p4, p5}, Lw3/z1;->M1(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p4, p1}, Lw3/z1;->R1(Lw3/z2;Lw3/l0;)Lw3/z1;

    move-result-object p1

    sget-object p2, Lw3/d1$b;->c:Lw3/d1$b;

    invoke-direct {p1, p3, p2}, Lw3/z1;->P1(Lw3/z2;Lw3/d1$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p4, p1}, Lw3/z1;->R1(Lw3/z2;Lw3/l0;)Lw3/z1;

    move-result-object p1

    sget-object p2, Lw3/d1$b;->b:Lw3/d1$b;

    invoke-direct {p1, p3, p2}, Lw3/z1;->P1(Lw3/z2;Lw3/d1$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p4, p1}, Lw3/z1;->R1(Lw3/z2;Lw3/l0;)Lw3/z1;

    move-result-object p1

    invoke-direct {p1}, Lw3/z1;->K1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p4, p1}, Lw3/z1;->R1(Lw3/z2;Lw3/l0;)Lw3/z1;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_3

    aget-object p2, p5, v2

    goto :goto_2

    :cond_3
    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_2
    invoke-direct {p1, p2}, Lw3/z1;->O1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p4, p1}, Lw3/z1;->R1(Lw3/z2;Lw3/l0;)Lw3/z1;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_4

    aget-object p2, p5, v2

    goto :goto_3

    :cond_4
    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_3
    invoke-direct {p1, p2}, Lw3/z1;->L1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p4, p1}, Lw3/z1;->R1(Lw3/z2;Lw3/l0;)Lw3/z1;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_5

    aget-object p2, p5, v2

    goto :goto_4

    :cond_5
    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_4
    invoke-direct {p1, p2}, Lw3/z1;->J1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    if-nez p4, :cond_7

    new-instance p1, Lw3/z1;

    invoke-direct {p1}, Lw3/z1;-><init>()V

    iput-boolean v1, p1, Lw3/z1;->k:Z

    array-length p4, p5

    if-lez p4, :cond_6

    aget-object p4, p5, v2

    invoke-static {p2, p3, p1, p4}, Lw3/z1;->Q1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/Object;)V

    :cond_6
    return-object p1

    :cond_7
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Set"

    aput-object p2, p1, v2

    const-string p2, "msg.no.new"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
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
    .locals 9

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "forEach"

    goto :goto_0

    :pswitch_1
    const-string v0, "entries"

    goto :goto_1

    :pswitch_2
    const-string v0, "values"

    goto :goto_1

    :pswitch_3
    const-string v0, "clear"

    goto :goto_1

    :pswitch_4
    const-string v1, "has"

    goto :goto_0

    :pswitch_5
    const-string v1, "delete"

    goto :goto_0

    :pswitch_6
    const-string v1, "add"

    :goto_0
    move-object v4, v1

    const/4 v6, 0x1

    goto :goto_2

    :pswitch_7
    const-string v0, "constructor"

    :goto_1
    move-object v4, v0

    const/4 v6, 0x0

    :goto_2
    sget-object v2, Lw3/z1;->l:Ljava/lang/Object;

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lw3/n0;->A1(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lw3/l0;

    return-void

    :cond_0
    sget-object p1, Lw3/j3;->c:Lw3/j3;

    invoke-virtual {p0}, Lw3/z1;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, p1, v1, v2}, Lw3/n0;->D1(ILw3/i3;Ljava/lang/Object;I)V

    return-void

    :cond_1
    sget-object v4, Lw3/z1;->l:Ljava/lang/Object;

    sget-object v6, Lw3/z1;->m:Lw3/j3;

    const-string v7, "get size"

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lw3/n0;->B1(Ljava/lang/Object;ILw3/i3;Ljava/lang/String;I)Lw3/l0;

    return-void

    nop

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
