.class public final Lw3/j1;
.super Lw3/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/j1$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/Object;


# instance fields
.field private j:Lw3/i1;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Generator"

    sput-object v0, Lw3/j1;->p:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/j1;->n:Z

    return-void
.end method

.method public constructor <init>(Lw3/z2;Lw3/i1;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/j1;->n:Z

    iput-object p2, p0, Lw3/j1;->j:Lw3/i1;

    iput-object p3, p0, Lw3/j1;->k:Ljava/lang/Object;

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/a3;->h(Lw3/z2;)V

    sget-object p2, Lw3/j1;->p:Ljava/lang/Object;

    invoke-static {p1, p2}, Lw3/a3;->H0(Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/j1;

    invoke-virtual {p0, p1}, Lw3/a3;->A(Lw3/z2;)V

    return-void
.end method

.method static I1(Lw3/a3;Z)Lw3/j1;
    .locals 2

    new-instance v0, Lw3/j1;

    invoke-direct {v0}, Lw3/j1;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lw3/a3;->h(Lw3/z2;)V

    invoke-static {p0}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/a3;->A(Lw3/z2;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lw3/n0;->h1(I)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lw3/a3;->c1()V

    :cond_1
    if-eqz p0, :cond_2

    sget-object p1, Lw3/j1;->p:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lw3/a3;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private J1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lw3/j1;->k:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_2

    if-ne p3, v2, :cond_0

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1

    :cond_0
    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lw3/l1;->J1(Lw3/z2;)Ljava/lang/Object;

    move-result-object p4

    :goto_0
    new-instance p1, Lw3/u0;

    iget-object p2, p0, Lw3/j1;->l:Ljava/lang/String;

    iget p3, p0, Lw3/j1;->m:I

    invoke-direct {p1, p4, p2, p3}, Lw3/u0;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lw3/j1$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lw3/s2; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean v4, p0, Lw3/j1;->o:Z

    if-nez v4, :cond_4

    iput-boolean v1, p0, Lw3/j1;->o:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lw3/j1;->j:Lw3/i1;

    iget-object v9, p0, Lw3/j1;->k:Ljava/lang/Object;

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lw3/i1;->h2(Lw3/m;Lw3/z2;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lw3/j1$a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lw3/s2; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-enter p0

    :try_start_3
    iput-boolean v3, p0, Lw3/j1;->o:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p3, v2, :cond_3

    iput-object v0, p0, Lw3/j1;->k:Ljava/lang/Object;

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_4
    :try_start_5
    const-string p1, "msg.already.exec.gen"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Lw3/j1$a; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lw3/s2; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_7
    invoke-virtual {p1}, Lw3/s2;->i()I

    move-result p2

    iput p2, p0, Lw3/j1;->m:I

    invoke-virtual {p1}, Lw3/s2;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw3/j1;->l:Ljava/lang/String;

    iput-object v0, p0, Lw3/j1;->k:Ljava/lang/Object;

    throw p1

    :catch_1
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-enter p0

    :try_start_8
    iput-boolean v3, p0, Lw3/j1;->o:Z

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ne p3, v2, :cond_5

    iput-object v0, p0, Lw3/j1;->k:Ljava/lang/Object;

    :cond_5
    return-object p1

    :catchall_3
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1

    :goto_1
    monitor-enter p0

    :try_start_a
    iput-boolean v3, p0, Lw3/j1;->o:Z

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-ne p3, v2, :cond_6

    iput-object v0, p0, Lw3/j1;->k:Ljava/lang/Object;

    :cond_6
    throw p1

    :catchall_4
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p1
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Generator"

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
    const-string v0, "throw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "send"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "__iterator__"

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
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x5

    :goto_1
    :pswitch_4
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4c999b52 -> :sswitch_4
        0x338af3 -> :sswitch_3
        0x35cf88 -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x693a6e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lw3/j1;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v0

    const-class v1, Lw3/j1;

    invoke-static {p4, v1, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/j1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 p1, 0x5

    if-ne v0, p1, :cond_1

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    array-length p4, p5

    if-lez p4, :cond_3

    aget-object p4, p5, v3

    goto :goto_0

    :cond_3
    sget-object p4, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-direct {p1, p2, p3, v2, p4}, Lw3/j1;->J1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    array-length p4, p5

    if-lez p4, :cond_5

    aget-object p4, p5, v3

    goto :goto_1

    :cond_5
    sget-object p4, Lw3/w3;->a:Ljava/lang/Object;

    :goto_1
    iget-boolean p5, p1, Lw3/j1;->n:Z

    if-eqz p5, :cond_7

    sget-object p5, Lw3/w3;->a:Ljava/lang/Object;

    invoke-virtual {p4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "msg.send.newborn"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_7
    :goto_2
    invoke-direct {p1, p2, p3, v3, p4}, Lw3/j1;->J1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    iput-boolean v3, p1, Lw3/j1;->n:Z

    sget-object p4, Lw3/w3;->a:Ljava/lang/Object;

    invoke-direct {p1, p2, p3, v3, p4}, Lw3/j1;->J1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p4, Lw3/j1$a;

    invoke-direct {p4}, Lw3/j1$a;-><init>()V

    invoke-direct {p1, p2, p3, v1, p4}, Lw3/j1;->J1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected y1(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const-string v1, "__iterator__"

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "throw"

    goto :goto_0

    :cond_2
    const-string v1, "send"

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "next"

    goto :goto_1

    :cond_4
    const-string v1, "close"

    :goto_1
    sget-object v2, Lw3/j1;->p:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void
.end method
