.class public Lw3/d2;
.super Lw3/n0;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/Object;

.field private static final m:Ljava/lang/Object;


# instance fields
.field private j:Z

.field private transient k:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lw3/z2;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WeakMap"

    sput-object v0, Lw3/d2;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw3/d2;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/d2;->j:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lw3/d2;->k:Ljava/util/WeakHashMap;

    return-void
.end method

.method static I1(Lw3/z2;Z)V
    .locals 2

    new-instance v0, Lw3/d2;

    invoke-direct {v0}, Lw3/d2;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    return-void
.end method

.method private J1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lw3/u2;->D0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v0, p0, Lw3/d2;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private K1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lw3/u2;->D0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, Lw3/d2;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1

    :cond_1
    sget-object v0, Lw3/d2;->m:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method private L1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lw3/u2;->D0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v0, p0, Lw3/d2;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private M1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lw3/u2;->D0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    sget-object p2, Lw3/d2;->m:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lw3/d2;->k:Ljava/util/WeakHashMap;

    check-cast p1, Lw3/z2;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lw3/u2;->r2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "msg.arg.not.object"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method private static N1(Lw3/z2;Lw3/l0;)Lw3/d2;
    .locals 1

    const-class v0, Lw3/d2;

    invoke-static {p0, v0, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/d2;

    iget-boolean v0, p0, Lw3/d2;->j:Z

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

    const-string v0, "WeakMap"

    return-object v0
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "has"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x1

    :goto_1
    :pswitch_4
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x5ead2806 -> :sswitch_4
        -0x4f997a55 -> :sswitch_3
        0x18f56 -> :sswitch_2
        0x1929a -> :sswitch_1
        0x1bc62 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected s1(Lw3/i3;)I
    .locals 1

    sget-object v0, Lw3/j3;->c:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lw3/d2;->l:Ljava/lang/Object;

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

    if-eq v0, v1, :cond_a

    const/4 p2, 0x2

    if-eq v0, p2, :cond_8

    const/4 p2, 0x3

    if-eq v0, p2, :cond_6

    const/4 p2, 0x4

    if-eq v0, p2, :cond_4

    const/4 p2, 0x5

    if-ne v0, p2, :cond_3

    invoke-static {p4, p1}, Lw3/d2;->N1(Lw3/z2;Lw3/l0;)Lw3/d2;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_1

    aget-object p2, p5, v2

    goto :goto_0

    :cond_1
    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    array-length p3, p5

    if-le p3, v1, :cond_2

    aget-object p3, p5, v1

    goto :goto_1

    :cond_2
    sget-object p3, Lw3/w3;->a:Ljava/lang/Object;

    :goto_1
    invoke-direct {p1, p2, p3}, Lw3/d2;->M1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "WeakMap.prototype has no method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    invoke-static {p4, p1}, Lw3/d2;->N1(Lw3/z2;Lw3/l0;)Lw3/d2;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_5

    aget-object p2, p5, v2

    goto :goto_2

    :cond_5
    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_2
    invoke-direct {p1, p2}, Lw3/d2;->L1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {p4, p1}, Lw3/d2;->N1(Lw3/z2;Lw3/l0;)Lw3/d2;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_7

    aget-object p2, p5, v2

    goto :goto_3

    :cond_7
    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_3
    invoke-direct {p1, p2}, Lw3/d2;->K1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {p4, p1}, Lw3/d2;->N1(Lw3/z2;Lw3/l0;)Lw3/d2;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_9

    aget-object p2, p5, v2

    goto :goto_4

    :cond_9
    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_4
    invoke-direct {p1, p2}, Lw3/d2;->J1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    if-nez p4, :cond_c

    new-instance p1, Lw3/d2;

    invoke-direct {p1}, Lw3/d2;-><init>()V

    iput-boolean v1, p1, Lw3/d2;->j:Z

    array-length p4, p5

    if-lez p4, :cond_b

    aget-object p4, p5, v2

    invoke-static {p2, p3, p1, p4}, Lw3/u1;->R1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/Object;)V

    :cond_b
    return-object p1

    :cond_c
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "WeakMap"

    aput-object p2, p1, v2

    const-string p2, "msg.no.new"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method protected y1(I)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    sget-object p1, Lw3/j3;->c:Lw3/j3;

    invoke-virtual {p0}, Lw3/d2;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2, v0}, Lw3/n0;->D1(ILw3/i3;Ljava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string v0, "set"

    move-object v6, v0

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "has"

    goto :goto_0

    :cond_3
    const-string v0, "get"

    goto :goto_0

    :cond_4
    const-string v0, "delete"

    :goto_0
    move-object v6, v0

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    const-string v1, "constructor"

    move-object v6, v1

    const/4 v8, 0x0

    :goto_1
    sget-object v4, Lw3/d2;->l:Ljava/lang/Object;

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lw3/n0;->A1(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lw3/l0;

    return-void
.end method
