.class public Ln0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh1/b<",
        "Ln0/e;",
        "Ln0/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln0/e;)I
    .locals 2

    invoke-virtual {p1}, Ln0/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ln0/e;->d()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ln0/e;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lq1/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Ln0/e;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lq1/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/e;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln0/e;->f()Ln0/e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ln0/e;

    invoke-virtual {p0, p1}, Ln0/e;->a(Ln0/e;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/e;->c:Ljava/lang/String;

    return-void
.end method

.method public f()Ln0/e$a;
    .locals 14

    new-instance v0, Ln0/e$a;

    invoke-direct {v0}, Ln0/e$a;-><init>()V

    iget-object v1, p0, Ln0/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln0/e$a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Ln0/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln0/e$a;->f(Ljava/lang/String;)V

    iget-object v1, p0, Ln0/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln0/e$a;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ln0/e$a;->h()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v1

    invoke-virtual {v1}, Le1/b;->H()Landroid/content/Context;

    move-result-object v1

    const-string v2, "+ downloadLicense"

    const-string v3, "OfflineAuth"

    invoke-static {v3, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "getLicense_expires"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v4, v5}, Lq1/i;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "getLicense_time"

    invoke-static {v1, v2, v4, v5}, Lq1/i;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v2, "getLicense_err_no"

    const/4 v8, -0x1

    invoke-static {v1, v2, v8}, Lq1/i;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v9, "SN"

    const-string v10, ""

    invoke-static {v1, v9, v10}, Lq1/i;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    iget-object v4, p0, Ln0/e;->c:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "--licensePath="

    const-string v9, "appCode="

    if-eqz v4, :cond_1

    const/16 v4, -0x3ee

    if-eq v2, v4, :cond_0

    const/16 v4, -0x3ef

    if-eq v2, v4, :cond_0

    const/16 v4, -0x3f0

    if-eq v2, v4, :cond_0

    const/16 v4, -0x3f3

    if-ne v2, v4, :cond_1

    :cond_0
    const-wide/32 v12, 0x5265c00

    cmp-long v2, v10, v12

    if-gtz v2, :cond_1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->M:Lb1/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ln0/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ln0/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " SN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ln0/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v3}, Ld1/c;->d(Lb1/n;ILjava/lang/String;)Ll0/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln0/e$a;->d(Ll0/f;)V

    return-object v0

    :cond_1
    cmp-long v2, v10, v6

    if-lez v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v4, Ln0/d;

    iget-object v6, p0, Ln0/e;->a:Ljava/lang/String;

    iget-object v7, p0, Ln0/e;->b:Ljava/lang/String;

    iget-object v10, p0, Ln0/e;->c:Ljava/lang/String;

    invoke-direct {v4, v1, v6, v7, v10}, Ln0/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v6, v7, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- downloadLicense ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ln0/e$a;->b(I)V

    if-gez v8, :cond_3

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->w:Lb1/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ln0/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ln0/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v3}, Ld1/c;->d(Lb1/n;ILjava/lang/String;)Ll0/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln0/e$a;->d(Ll0/f;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ln0/e$a;->h()Z

    :cond_4
    :goto_3
    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/e;->b:Ljava/lang/String;

    return-void
.end method
