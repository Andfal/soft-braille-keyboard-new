.class public Lq0/f;
.super Lq0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/f$b;,
        Lq0/f$a;,
        Lq0/f$d;,
        Lq0/f$c;
    }
.end annotation


# instance fields
.field private b:Lq0/f$b;

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq0/a;-><init>()V

    return-void
.end method

.method private i(ILjava/lang/String;Ll1/i;Lq0/f$b;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lb1/g;->c0:Lb1/g;

    invoke-virtual {v2}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lb1/g;->b0:Lb1/g;

    invoke-virtual {v2}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lb1/g;->G:Lb1/g;

    invoke-virtual {p2}, Lb1/g;->c()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Android"

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object p2

    invoke-virtual {p2}, Le1/b;->J()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lb1/g;->g0:Lb1/g;

    invoke-virtual {v3}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lq0/f$b;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lb1/g;->S:Lb1/g;

    invoke-virtual {v3}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p4}, Lq0/f$b;->R()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lb1/g;->q0:Lb1/g;

    invoke-virtual {v4}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p4}, Ll1/d;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ll1/i;->j(Ljava/lang/String;)V

    invoke-virtual {p3}, Ll1/i;->k()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "OnlineSynthesizer"

    if-ne p1, v4, :cond_9

    :try_start_0
    invoke-virtual {p3}, Ll1/i;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lb1/g;->d0:Lb1/g;

    invoke-virtual {p3}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->e0:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Le1/b;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Le1/b;->I()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p3, Lb1/g;->f0:Lb1/g;

    invoke-virtual {p3}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v2}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "before online auth"

    invoke-static {v5, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln0/b;->f()Ln0/b;

    move-result-object p1

    invoke-virtual {p1, p4}, Ln0/b;->h(Lq0/f$b;)Ln0/f$b;

    move-result-object p1

    const-string p3, "after online auth"

    invoke-static {v5, p3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f$b;->h()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ln0/f$b;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lb1/g;->o0:Lb1/g;

    invoke-virtual {p3}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance p1, Lp1/a;

    invoke-direct {p1}, Lp1/a;-><init>()V

    throw p1

    :cond_5
    :goto_0
    sget-object p1, Lb1/g;->L:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ll1/d;->q()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->N:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->N()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->O:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->T()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lq0/f$b;->L()Lb1/b;

    move-result-object p1

    invoke-virtual {p1}, Lb1/b;->c()[Lb1/c;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->T()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lb1/c;->c()D

    move-result-wide v2

    iput-wide v2, p0, Lq0/f;->c:D

    sget-object p1, Lb1/g;->P:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->V()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->h0:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->X()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->i0:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->Z()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->Q:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->b0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->R:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->d0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->j0:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->e0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->k0:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lq0/f$b;->f0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->K:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ll1/d;->r()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->H:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ll1/d;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->J:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ll1/d;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->I:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ll1/d;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lb1/g;->X:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ll1/d;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lq0/f$b;->j0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p3, Lb1/g;->E0:Lb1/g;

    invoke-virtual {p3}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p4}, Lq0/f$b;->i0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p3, Lb1/g;->F0:Lb1/g;

    invoke-virtual {p3}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p2}, Le1/b;->H()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lb1/g;->G0:Lb1/g;

    invoke-virtual {p2}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lq1/i;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-gez p3, :cond_8

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    const p4, 0x5f5e100

    invoke-virtual {p3, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    invoke-virtual {p2}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p3}, Lq1/i;->g(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_8
    invoke-virtual {p2}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_1
    :try_start_1
    invoke-static {v1}, Lq1/a;->i(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "request params: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic j(Lq0/f;ILjava/lang/String;Ll1/i;Lq0/f$b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lq0/f;->i(ILjava/lang/String;Ll1/i;Lq0/f$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private k(ILq0/f$c;Ll1/i;)Ll1/h;
    .locals 10

    invoke-static {p3}, Ll1/h;->p(Ll1/i;)Ll1/h;

    move-result-object v7

    iget-object v0, p0, Lq0/f;->b:Lq0/f$b;

    invoke-virtual {v0}, Lm1/a;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lq0/f$b;

    new-instance v9, Lq0/f$a;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lq0/f$a;-><init>(Lq0/f;ILq0/f$c;Ll1/i;Lq0/f$b;Ll1/h;)V

    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p3, "bdtts-OnlineSynthesizer"

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v8}, Lq0/f$b;->g0()I

    move-result p2

    int-to-long p2, p2

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll1/h;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, p2

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "OnlineSynthesizer"

    const-string v1, "startOnceHttpRequest timeout"

    invoke-static {p3, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    invoke-virtual {v9}, Lq0/f$a;->b()V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p1

    sget-object p3, Lb1/n;->r:Lb1/n;

    invoke-virtual {p1, p3, p2}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p2

    sget-object p3, Lb1/n;->q:Lb1/n;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    :goto_0
    invoke-virtual {v7, p1}, Ll1/h;->k(Ll0/f;)V

    :goto_1
    return-object v7

    :catch_2
    move-exception p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    invoke-virtual {v9}, Lq0/f$a;->b()V

    throw p2
.end method

.method static synthetic l(Lq0/f;ILq0/f$c;Ll1/i;)Ll1/h;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lq0/f;->k(ILq0/f$c;Ll1/i;)Ll1/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lq0/f;)Lq0/f$b;
    .locals 0

    iget-object p0, p0, Lq0/f;->b:Lq0/f$b;

    return-object p0
.end method

.method static synthetic n(Lq0/f;)D
    .locals 2

    iget-wide v0, p0, Lq0/f;->c:D

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OnlineSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TOnlineSynthesizerParams;)V"
        }
    .end annotation

    check-cast p1, Lq0/f$b;

    iput-object p1, p0, Lq0/f;->b:Lq0/f$b;

    return-void
.end method

.method public b(Ll1/i;)Ll0/f;
    .locals 2

    :try_start_0
    new-instance v0, Lq0/f$d;

    invoke-direct {v0, p0, p1}, Lq0/f$d;-><init>(Lq0/f;Ll1/i;)V

    invoke-virtual {v0}, Lq0/f$d;->a()Ll0/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->m:Lb1/n;

    invoke-virtual {v0, v1, p1}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method public d(Ll1/g;)I
    .locals 0

    sget-object p1, Lb1/n;->n:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public e(Ll1/f;)I
    .locals 0

    sget-object p1, Lb1/n;->n:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public f(Ll1/e;)I
    .locals 0

    sget-object p1, Lb1/n;->n:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public g(Ll1/e;)I
    .locals 0

    sget-object p1, Lb1/n;->n:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method
