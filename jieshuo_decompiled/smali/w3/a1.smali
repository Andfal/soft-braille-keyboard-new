.class final Lw3/a1;
.super Lw3/n0;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/Object;


# instance fields
.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Boolean"

    sput-object v0, Lw3/a1;->k:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    iput-boolean p1, p0, Lw3/a1;->j:Z

    return-void
.end method

.method static I1(Lw3/z2;Z)V
    .locals 2

    new-instance v0, Lw3/a1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw3/a1;-><init>(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lw3/u2;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lw3/a1;->j:Z

    invoke-static {p1}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lw3/a3;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Boolean"

    return-object v0
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "valueOf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "toSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x2

    :goto_1
    :pswitch_3
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x6a2ea58a -> :sswitch_3
        -0x69e9ad94 -> :sswitch_2
        -0x5ead2806 -> :sswitch_1
        0xdce0328 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lw3/a1;->k:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    array-length p1, p5

    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, p5, p2

    instance-of p3, p1, Lw3/a3;

    if-eqz p3, :cond_2

    check-cast p1, Lw3/a3;

    invoke-virtual {p1}, Lw3/a3;->J()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    aget-object p1, p5, p2

    invoke-static {p1}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result p1

    move p2, p1

    :goto_0
    if-nez p4, :cond_3

    new-instance p1, Lw3/a1;

    invoke-direct {p1, p2}, Lw3/a1;-><init>(Z)V

    return-object p1

    :cond_3
    invoke-static {p2}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    const-class p3, Lw3/a1;

    invoke-static {p4, p3, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/a1;

    iget-boolean p1, p1, Lw3/a1;->j:Z

    const/4 p3, 0x2

    if-eq p2, p3, :cond_8

    const/4 p3, 0x3

    if-eq p2, p3, :cond_6

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    invoke-static {p1}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-eqz p1, :cond_7

    const-string p1, "(new Boolean(true))"

    goto :goto_1

    :cond_7
    const-string p1, "(new Boolean(false))"

    :goto_1
    return-object p1

    :cond_8
    if-eqz p1, :cond_9

    const-string p1, "true"

    goto :goto_2

    :cond_9
    const-string p1, "false"

    :goto_2
    return-object p1
.end method

.method protected y1(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "valueOf"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "toSource"

    goto :goto_0

    :cond_2
    const-string v0, "toString"

    goto :goto_0

    :cond_3
    const-string v1, "constructor"

    move-object v0, v1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lw3/a1;->k:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void
.end method
