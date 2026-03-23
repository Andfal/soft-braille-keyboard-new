.class public final Lw3/l1;
.super Lw3/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/l1$b;,
        Lw3/l1$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/Object;


# instance fields
.field private j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Iterator"

    sput-object v0, Lw3/l1;->k:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    iput-object p1, p0, Lw3/l1;->j:Ljava/lang/Object;

    return-void
.end method

.method private static I1(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lw3/b4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lw3/b4;

    invoke-interface {p0}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    :cond_0
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static J1(Lw3/z2;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p0

    sget-object v0, Lw3/l1;->k:Ljava/lang/Object;

    invoke-static {p0, v0}, Lw3/a3;->H0(Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static K1(Lw3/m;Lw3/a3;Z)V
    .locals 2

    new-instance v0, Lw3/l1;

    invoke-direct {v0}, Lw3/l1;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    invoke-virtual {p0}, Lw3/m;->v()I

    move-result p0

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    invoke-static {p1, p2}, Lw3/u;->J1(Lw3/a3;Z)Lw3/u;

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lw3/j1;->I1(Lw3/a3;Z)Lw3/j1;

    :goto_0
    new-instance p0, Lw3/l1$a;

    invoke-direct {p0}, Lw3/l1$a;-><init>()V

    invoke-static {p1}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/a3;->A(Lw3/z2;)V

    invoke-virtual {p0, p1}, Lw3/a3;->h(Lw3/z2;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lw3/a3;->c1()V

    :cond_1
    const-string p2, "StopIteration"

    const/4 v0, 0x2

    invoke-static {p1, p2, p0, v0}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object p2, Lw3/l1;->k:Ljava/lang/Object;

    invoke-virtual {p1, p2, p0}, Lw3/a3;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static L1(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    aget-object v0, p3, v1

    if-eqz v0, :cond_5

    sget-object v3, Lw3/w3;->a:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, v0}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    array-length v3, p3

    if-le v3, v2, :cond_1

    aget-object p3, p3, v2

    invoke-static {p3}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz p2, :cond_3

    invoke-static {v0}, Lw3/l1;->I1(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p1

    invoke-virtual {p0}, Lw3/m;->D()Lw3/z3;

    move-result-object p3

    new-instance v0, Lw3/l1$b;

    invoke-direct {v0, p2, p1}, Lw3/l1$b;-><init>(Ljava/util/Iterator;Lw3/z2;)V

    const-class p2, Lw3/l1$b;

    invoke-virtual {p3, p0, p1, v0, p2}, Lw3/z3;->b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1, v0, v1}, Lw3/u2;->W1(Lw3/m;Lw3/z2;Lw3/z2;Z)Lw3/z2;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    if-eqz v1, :cond_4

    const/4 p2, 0x3

    goto :goto_0

    :cond_4
    const/4 p2, 0x5

    :goto_0
    invoke-static {v0, p0, p1, p2}, Lw3/u2;->C(Ljava/lang/Object;Lw3/m;Lw3/z2;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lw3/u2;->v1(Ljava/lang/Object;Z)V

    new-instance p2, Lw3/l1;

    invoke-direct {p2, p0}, Lw3/l1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lw3/l1;->m()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lw3/a3;->s0(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lw3/a3;->A(Lw3/z2;)V

    invoke-virtual {p2, p1}, Lw3/a3;->h(Lw3/z2;)V

    return-object p2

    :cond_5
    :goto_1
    array-length p0, p3

    if-nez p0, :cond_6

    sget-object p0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    aget-object p0, p3, v1

    :goto_2
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "msg.no.properties"

    invoke-static {p0, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method private M1(Lw3/m;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/l1;->j:Ljava/lang/Object;

    invoke-static {v0}, Lw3/u2;->E(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lw3/l1;->j:Ljava/lang/Object;

    invoke-static {p2, p1}, Lw3/u2;->B(Ljava/lang/Object;Lw3/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lw3/u0;

    invoke-static {p2}, Lw3/l1;->J1(Lw3/z2;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lw3/u0;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p1
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Iterator"

    return-object v0
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "__iterator__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    :goto_1
    :pswitch_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x5ead2806 -> :sswitch_2
        -0x4c999b52 -> :sswitch_1
        0x338af3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lw3/l1;->k:Ljava/lang/Object;

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

    if-ne v0, v1, :cond_1

    invoke-static {p2, p3, p4, p5}, Lw3/l1;->L1(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-class p5, Lw3/l1;

    invoke-static {p4, p5, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/l1;

    const/4 p5, 0x2

    if-eq v0, p5, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    return-object p4

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-direct {p1, p2, p3}, Lw3/l1;->M1(Lw3/m;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected y1(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string v0, "__iterator__"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "next"

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "constructor"

    move-object v0, v1

    const/4 v1, 0x2

    :goto_0
    sget-object v2, Lw3/l1;->k:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void
.end method
