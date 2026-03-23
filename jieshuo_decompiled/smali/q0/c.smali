.class public Lq0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ll1/b;

.field private b:Lb1/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lq0/c;->d(I)I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    const/4 p1, 0x2

    return p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private e()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lq0/c;->a:Ll1/b;

    invoke-virtual {v0}, Ll1/b;->j()Lb1/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lq0/c;->b:Lb1/j;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    sget-object v0, Lb1/j;->a:Lb1/j;

    :cond_0
    iput-object v0, p0, Lq0/c;->b:Lb1/j;

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    if-nez v0, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :goto_2
    return v2
.end method

.method private f(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Ll1/b;)V
    .locals 0

    iput-object p1, p0, Lq0/c;->a:Ll1/b;

    return-void
.end method

.method public b()Z
    .locals 8

    const-string v0, "MixStrategy"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v2

    invoke-virtual {v2}, Le1/b;->H()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lq0/c;->e()Z

    move-result v3

    iget-object v4, p0, Lq0/c;->a:Ll1/b;

    invoke-virtual {v4}, Ll1/b;->c()Lq0/f$b;

    move-result-object v4

    iget-object v5, p0, Lq0/c;->a:Ll1/b;

    invoke-virtual {v5}, Ll1/b;->m()Lb1/l;

    move-result-object v5

    invoke-virtual {v5}, Lb1/l;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Lq0/f$b;->F(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MixOnlineRequestTimeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lq0/f$b;->g0()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isModeChanged: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    sget-object v4, Lq0/c$a;->a:[I

    iget-object v5, p0, Lq0/c;->b:Lb1/j;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    const/4 v7, 0x3

    if-eq v4, v7, :cond_0

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lq0/c;->f(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-eq v3, v5, :cond_2

    invoke-direct {p0, v2}, Lq0/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lq0/c;->f(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    if-ne v3, v5, :cond_3

    :cond_2
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v1
.end method
