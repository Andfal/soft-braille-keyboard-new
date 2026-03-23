.class public Lcom/unisound/sdk/x;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field protected static g:J = 0x1eL


# instance fields
.field protected volatile a:Z

.field protected b:Lcom/unisound/sdk/ap;

.field protected c:Lcn/yunzhisheng/asr/a;

.field protected d:Lcn/yunzhisheng/asr/VAD;

.field protected e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field f:[B

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/x;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/x;->b:Lcom/unisound/sdk/ap;

    iput-object v0, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    iput-object v0, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/x;->e:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/unisound/sdk/x;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    iput-object p3, p0, Lcom/unisound/sdk/x;->b:Lcom/unisound/sdk/ap;

    const-string p1, "InputVadThread::VAD new"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    new-instance p1, Lcn/yunzhisheng/asr/VAD;

    invoke-direct {p1, p2, p3}, Lcn/yunzhisheng/asr/VAD;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/cf;)V

    iput-object p1, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/VAD;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/unisound/sdk/x;->a:Z

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/unisound/sdk/x;->b:Lcom/unisound/sdk/ap;

    iput-object p4, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    iput-object p4, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    new-instance p4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p4, p0, Lcom/unisound/sdk/x;->e:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/unisound/sdk/x;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    iput-object p3, p0, Lcom/unisound/sdk/x;->b:Lcom/unisound/sdk/ap;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iput-boolean p1, v0, Lcn/yunzhisheng/asr/VAD;->l:Z

    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/x;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iget-boolean v0, v0, Lcn/yunzhisheng/asr/VAD;->l:Z

    return v0
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InputVadThread::stopVad"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/x;->a:Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->a:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/x;->b:Lcom/unisound/sdk/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->b()V

    const-string v0, "InputVadThread::cancel"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/x;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/x;->b:Lcom/unisound/sdk/ap;

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->a:Z

    return v0
.end method

.method public g()V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->e()V

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    const-string v0, "InputVadThread::waitEnd()"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "InputVadThread::VAD destory"

    const-string v1, "InputVadThread start"

    invoke-static {v1}, Lcom/unisound/common/r;->g(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/sdk/x;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/x;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_1
    invoke-virtual {p0}, Lcom/unisound/sdk/x;->d()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->y()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v1, v1, Lcn/yunzhisheng/asr/VAD;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->N()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    iget v1, v1, Lcn/yunzhisheng/asr/a;->aj:I

    iget-object v4, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v4}, Lcn/yunzhisheng/asr/a;->K()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    iget v5, v4, Lcn/yunzhisheng/asr/a;->aj:I

    invoke-virtual {v4, v5}, Lcn/yunzhisheng/asr/a;->l(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->J()I

    move-result v1

    iget-object v4, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v4, v3}, Lcn/yunzhisheng/asr/a;->k(I)V

    :goto_2
    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/common/i;->a(Landroid/content/Context;)[B

    move-result-object v1

    iget-object v4, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    array-length v5, v1

    invoke-virtual {v4, v2, v1, v3, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    goto :goto_3

    :cond_5
    if-lez v1, :cond_6

    iget-object v4, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v4, v1}, Lcn/yunzhisheng/asr/VAD;->b(I)V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v1, v1, Lcn/yunzhisheng/asr/VAD;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v1, v1, Lcn/yunzhisheng/asr/VAD;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v4, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    array-length v5, v1

    invoke-virtual {v4, v2, v1, v3, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/unisound/sdk/x;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v1, v1, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iget-boolean v1, v1, Lcn/yunzhisheng/asr/VAD;->i:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v1, v1, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v2, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    iget-boolean v4, v2, Lcn/yunzhisheng/asr/VAD;->i:Z

    array-length v5, v1

    invoke-virtual {v2, v4, v1, v3, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/unisound/sdk/x;->e:Ljava/util/concurrent/BlockingQueue;

    sget-wide v4, Lcom/unisound/sdk/x;->g:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/unisound/sdk/x;->f:[B

    if-eqz v1, :cond_a

    array-length v4, v1

    if-ne v4, v2, :cond_9

    aget-byte v2, v1, v3

    const/16 v4, 0x64

    if-ne v2, v4, :cond_9

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->e()V

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Lcn/yunzhisheng/asr/VAD;->a([BII)I

    goto/16 :goto_0

    :cond_a
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/unisound/sdk/x;->b:Lcom/unisound/sdk/ap;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/VAD;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    :goto_5
    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VAD;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/x;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const-string v0, "InputVadThread stop"

    invoke-static {v0}, Lcom/unisound/common/r;->g(Ljava/lang/String;)V

    return-void

    :goto_6
    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/x;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VAD;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/x;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    throw v1
.end method
