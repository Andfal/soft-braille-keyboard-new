.class Lcom/vivo/speechsdk/module/vad/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/vad/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/vad/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/vad/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "VadCheckThread start"

    const-string v1, "VadServiceImpl"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "Vad_Thread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->k(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/d;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/vad/c;->a(Lcom/vivo/speechsdk/module/vad/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/vad/c;->b(Lcom/vivo/speechsdk/module/vad/c;)Z

    move-result v3

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->i(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v4

    iget-object v5, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/vad/c;->j(Lcom/vivo/speechsdk/module/vad/c;)Z

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vivo/speechsdk/module/vad/d;->a(Ljava/lang/String;ZIZ)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vad mode init false, not start vad Thread | "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/vad/c;->a(Lcom/vivo/speechsdk/module/vad/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->a(Lcom/vivo/speechsdk/module/vad/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x76c1

    invoke-virtual {v0, v4, v1}, Lcom/vivo/speechsdk/module/vad/b;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/vivo/speechsdk/module/vad/b;->onVadEvent(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->k(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/d;->getVadInnerDelay()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->m(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v4

    iget-object v5, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/vad/c;->m(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v5, v6}, Lcom/vivo/speechsdk/module/vad/c;->a(Lcom/vivo/speechsdk/module/vad/c;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fix vad endtime form "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->m(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->n(Lcom/vivo/speechsdk/module/vad/c;)Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/vad/c;->o(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v5

    iget-object v6, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/vad/c;->m(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/vivo/speechsdk/module/vad/b;->a(Landroid/os/Looper;II)V

    const/4 v0, 0x0

    move-object v4, v0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/vad/c;->p(Lcom/vivo/speechsdk/module/vad/c;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_4

    :try_start_1
    invoke-static {}, Lcom/vivo/speechsdk/module/vad/c;->a()[B

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/module/vad/c;->b()[B

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/module/vad/c;->a(Lcom/vivo/speechsdk/module/vad/c;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    const-string v6, "vad queue.take() | "

    invoke-static {v1, v6, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v4

    const/16 v6, 0x76c2

    invoke-virtual {v4, v6, v0}, Lcom/vivo/speechsdk/module/vad/b;->onError(ILjava/lang/String;)V

    :cond_4
    :goto_2
    invoke-static {}, Lcom/vivo/speechsdk/module/vad/c;->b()[B

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->c(Lcom/vivo/speechsdk/module/vad/c;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->d(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v4

    sub-int/2addr v4, v0

    new-array v0, v4, [B

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4, v0}, Lcom/vivo/speechsdk/module/vad/c;->a(Lcom/vivo/speechsdk/module/vad/c;[B)V

    :cond_5
    const-string v0, "VadCheckThread stop !!!"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->p(Lcom/vivo/speechsdk/module/vad/c;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->e(Lcom/vivo/speechsdk/module/vad/c;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->c(Lcom/vivo/speechsdk/module/vad/c;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/b;->b()I

    move-result v0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/speechsdk/module/vad/b;->c()V

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->f(Lcom/vivo/speechsdk/module/vad/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/vad/c;->k(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/module/vad/d;->clear()V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/vad/c;->b(Lcom/vivo/speechsdk/module/vad/c;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/vad/c;->g(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v3

    invoke-static {}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c()Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->b()I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Lcom/vivo/speechsdk/module/vad/b;->onVadEvent(II)V

    :cond_6
    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/vad/c;->g(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Lcom/vivo/speechsdk/module/vad/b;->onVadEvent(II)V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/vad/c;->h(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const-string v3, "fake 2 channel"

    invoke-static {v1, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c()Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->a()V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/vad/c;->h(Lcom/vivo/speechsdk/module/vad/c;)I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Lcom/vivo/speechsdk/module/vad/b;->onVadEvent(II)V

    :cond_7
    iget-object v1, p0, Lcom/vivo/speechsdk/module/vad/c$a;->a:Lcom/vivo/speechsdk/module/vad/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/vad/c;->l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/vivo/speechsdk/module/vad/b;->onVadEvent(II)V

    return-void
.end method
