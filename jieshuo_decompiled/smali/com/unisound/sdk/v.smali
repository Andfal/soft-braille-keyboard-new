.class public Lcom/unisound/sdk/v;
.super Lcom/unisound/sdk/w;
.source "SourceFile"


# static fields
.field private static final f:I = 0x32


# instance fields
.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/unisound/sdk/w;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;Z)V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/unisound/sdk/v;->e:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/v;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()[B
    .locals 5

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/w;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/v;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x32

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method
