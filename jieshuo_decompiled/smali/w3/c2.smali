.class public Lw3/c2;
.super Lw3/n0;
.source "SourceFile"

# interfaces
.implements Lw3/i3;


# static fields
.field private static final l:Ljava/lang/Object;

.field private static final m:Ljava/lang/Object;


# instance fields
.field private final j:Lw3/j3;

.field private final k:Lw3/c2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw3/c2;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw3/c2;->m:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    new-instance v0, Lw3/j3;

    invoke-direct {v0, p1}, Lw3/j3;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lw3/c2;->j:Lw3/j3;

    const/4 p1, 0x0

    iput-object p1, p0, Lw3/c2;->k:Lw3/c2;

    return-void
.end method

.method public constructor <init>(Lw3/c2;)V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    iget-object v0, p1, Lw3/c2;->j:Lw3/j3;

    iput-object v0, p0, Lw3/c2;->j:Lw3/j3;

    iget-object p1, p1, Lw3/c2;->k:Lw3/c2;

    iput-object p1, p0, Lw3/c2;->k:Lw3/c2;

    return-void
.end method

.method private constructor <init>(Lw3/j3;)V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    iput-object p1, p0, Lw3/c2;->j:Lw3/j3;

    iput-object p0, p0, Lw3/c2;->k:Lw3/c2;

    return-void
.end method

.method public static I1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/c2;
    .locals 2

    sget-object v0, Lw3/c2;->m:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lw3/m;->Y(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "Symbol"

    invoke-virtual {p0, p1, v1, p2}, Lw3/m;->U(Lw3/z2;Ljava/lang/String;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    check-cast p1, Lw3/c2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lw3/m;->Z(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    sget-object p2, Lw3/c2;->m:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lw3/m;->Z(Ljava/lang/Object;)V

    throw p1
.end method

.method private static J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const-string p4, "Symbol"

    invoke-virtual {p0, p1, p4, v0}, Lw3/m;->U(Lw3/z2;Ljava/lang/String;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p2, p3, p0, p1}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private K1()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw3/c2;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v0

    check-cast v0, Lw3/a3;

    sget-object v1, Lw3/c2;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lw3/a3;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Lw3/a3;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method private static M1(Ljava/lang/Object;)Lw3/c2;
    .locals 2

    :try_start_0
    check-cast p0, Lw3/c2;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "msg.invalid.type"

    invoke-static {p0, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method public static N1(Lw3/m;Lw3/z2;Z)V
    .locals 4

    new-instance v0, Lw3/c2;

    const-string v1, ""

    invoke-direct {v0, v1}, Lw3/c2;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    move-result-object v0

    sget-object v1, Lw3/c2;->m:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lw3/m;->Y(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    const-string v2, "iterator"

    sget-object v3, Lw3/j3;->b:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "species"

    sget-object v3, Lw3/j3;->d:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "toStringTag"

    sget-object v3, Lw3/j3;->c:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "hasInstance"

    sget-object v3, Lw3/j3;->e:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "isConcatSpreadable"

    sget-object v3, Lw3/j3;->f:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "isRegExp"

    sget-object v3, Lw3/j3;->g:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "toPrimitive"

    sget-object v3, Lw3/j3;->h:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "match"

    sget-object v3, Lw3/j3;->i:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "replace"

    sget-object v3, Lw3/j3;->j:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "search"

    sget-object v3, Lw3/j3;->k:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "split"

    sget-object v3, Lw3/j3;->l:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V

    const-string v2, "unscopables"

    sget-object v3, Lw3/j3;->m:Lw3/j3;

    invoke-static {p0, p1, v0, v2, v3}, Lw3/c2;->J1(Lw3/m;Lw3/z2;Lw3/a3;Ljava/lang/String;Lw3/j3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lw3/m;->Z(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lw3/a3;->c1()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lw3/c2;->m:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lw3/m;->Z(Ljava/lang/Object;)V

    throw p1
.end method

.method private static O1()Z
    .locals 1

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw3/m;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static Q1([Ljava/lang/Object;)Lw3/c2;
    .locals 4

    array-length v0, p0

    const-string v1, ""

    if-lez v0, :cond_1

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, p0, v2

    invoke-static {v0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    array-length v0, p0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    new-instance v0, Lw3/c2;

    aget-object p0, p0, v2

    check-cast p0, Lw3/j3;

    invoke-direct {v0, p0}, Lw3/c2;-><init>(Lw3/j3;)V

    return-object v0

    :cond_2
    new-instance p0, Lw3/c2;

    new-instance v0, Lw3/j3;

    invoke-direct {v0, v1}, Lw3/j3;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lw3/c2;-><init>(Lw3/j3;)V

    return-object p0
.end method

.method private R1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object p3, p3, v1

    goto :goto_0

    :cond_0
    sget-object p3, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-static {p3}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0}, Lw3/c2;->K1()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/c2;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-static {p1, p2, v2}, Lw3/c2;->I1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/c2;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2
.end method

.method private S1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p3, p3, v0

    goto :goto_0

    :cond_0
    sget-object p3, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    instance-of v0, p3, Lw3/c2;

    if-eqz v0, :cond_3

    check-cast p3, Lw3/c2;

    invoke-direct {p0}, Lw3/c2;->K1()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/c2;

    iget-object v0, v0, Lw3/c2;->j:Lw3/j3;

    iget-object v1, p3, Lw3/c2;->j:Lw3/j3;

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1

    :cond_3
    const-string p3, "TypeError"

    const-string v0, "Not a Symbol"

    invoke-static {p1, p2, p3, v0}, Lw3/u2;->N1(Lw3/m;Lw3/z2;Ljava/lang/String;Ljava/lang/String;)Lw3/u0;

    move-result-object p1

    throw p1
.end method

.method private T1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/c2;->k:Lw3/c2;

    return-object v0
.end method


# virtual methods
.method public F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lw3/c2;->P1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lw3/n0;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw3/c2;->O1()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method public I0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw3/c2;->P1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "symbol"

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lw3/a3;->I0()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method L1()Lw3/j3;
    .locals 1

    iget-object v0, p0, Lw3/c2;->j:Lw3/j3;

    return-object v0
.end method

.method public P1()Z
    .locals 1

    iget-object v0, p0, Lw3/c2;->k:Lw3/c2;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lw3/c2;->P1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lw3/a3;->d(ILw3/z2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw3/c2;->O1()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lw3/c2;->j:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lw3/c2;->j:Lw3/j3;

    invoke-virtual {v0}, Lw3/j3;->hashCode()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Symbol"

    return-object v0
.end method

.method protected o1(Lw3/l0;)V
    .locals 12

    invoke-super {p0, p1}, Lw3/n0;->o1(Lw3/l0;)V

    const-string v2, "Symbol"

    const/4 v3, -0x1

    const-string v4, "for"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v8, "Symbol"

    const/4 v9, -0x2

    const-string v10, "keyFor"

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    return-void
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
    const-string v0, "valueOf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "toString"

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
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    :goto_1
    :pswitch_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_2
        -0x5ead2806 -> :sswitch_1
        0xdce0328 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected s1(Lw3/i3;)I
    .locals 1

    sget-object v0, Lw3/j3;->c:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    sget-object v0, Lw3/j3;->h:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Symbol"

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p4}, Lw3/c2;->M1(Ljava/lang/Object;)Lw3/c2;

    move-result-object p1

    invoke-direct {p1}, Lw3/c2;->T1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p4}, Lw3/c2;->M1(Ljava/lang/Object;)Lw3/c2;

    move-result-object p1

    invoke-virtual {p1}, Lw3/c2;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p4, :cond_5

    sget-object p1, Lw3/c2;->m:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lw3/m;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p5}, Lw3/c2;->Q1([Ljava/lang/Object;)Lw3/c2;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.symbol.new"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_5
    invoke-static {p2, p3, p5}, Lw3/c2;->I1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/c2;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-direct {p0, p2, p3, p5}, Lw3/c2;->R1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-direct {p0, p2, p3, p5}, Lw3/c2;->S1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/c2;->j:Lw3/j3;

    invoke-virtual {v0}, Lw3/j3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lw3/c2;->P1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lw3/n0;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw3/c2;->O1()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method protected y1(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Symbol"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lw3/n0;->y1(I)V

    goto :goto_1

    :cond_0
    const-string v2, "Symbol"

    sget-object v4, Lw3/j3;->h:Lw3/j3;

    const-string v5, "Symbol.toPrimitive"

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lw3/n0;->B1(Ljava/lang/Object;ILw3/i3;Ljava/lang/String;I)Lw3/l0;

    goto :goto_1

    :cond_1
    const-string v0, "valueOf"

    goto :goto_0

    :cond_2
    sget-object v1, Lw3/j3;->c:Lw3/j3;

    invoke-virtual {p0, p1, v1, v2, v0}, Lw3/n0;->D1(ILw3/i3;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    const-string v0, "toString"

    goto :goto_0

    :cond_4
    const-string v0, "constructor"

    :goto_0
    invoke-virtual {p0, v2, p1, v0, v1}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    :goto_1
    return-void
.end method
