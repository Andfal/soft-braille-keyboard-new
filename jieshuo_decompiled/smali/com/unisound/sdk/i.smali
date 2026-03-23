.class public Lcom/unisound/sdk/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field protected static f:J = 0x1eL


# instance fields
.field protected g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field protected h:Lcom/unisound/sdk/af;

.field protected i:Lcom/unisound/sdk/ag;

.field protected j:Lcom/unisound/sdk/u;

.field protected k:Lcn/yunzhisheng/asrfix/JniAsrFix;

.field protected l:Z

.field protected m:Z

.field protected n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Lcom/unisound/sdk/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/i;->g:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/i;->h:Lcom/unisound/sdk/af;

    iput-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/i;->l:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/i;->m:Z

    iput-object p1, p0, Lcom/unisound/sdk/i;->k:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iput-object p2, p0, Lcom/unisound/sdk/i;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/i;->j:Lcom/unisound/sdk/u;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doRecognitionMaxSpeechTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ag;->a(I)V

    :cond_0
    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/common/aj;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/af;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/i;->h:Lcom/unisound/sdk/af;

    return-void
.end method

.method public a(Lcom/unisound/sdk/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionThreadInterface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doRecognitionResult partial="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unisound/sdk/i;->c(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/unisound/sdk/ag;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;ZI)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doRecognitionResult partial="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unisound/sdk/i;->c(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0, p3}, Lcom/unisound/sdk/ag;->a(Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/unisound/sdk/i;->c()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/32 v0, 0x9858

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "waitEnd()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/i;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/i;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionThreadInterface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/i;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecognitionThreadInterface::cancel"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/i;->l:Z

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionThreadInterface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/i;->l:Z

    if-nez v0, :cond_0

    const-string v0, "RecognitionThreadInterface::stopRecognition"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/i;->l:Z

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/i;->h:Lcom/unisound/sdk/af;

    iput-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/i;->l:Z

    return v0
.end method

.method protected h()[B
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/i;->g:Ljava/util/concurrent/BlockingQueue;

    sget-wide v1, Lcom/unisound/sdk/i;->f:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected i()V
    .locals 1

    const-string v0, "doRecognitionMaxSpeechTimeout"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ag;->l()V

    :cond_0
    return-void
.end method

.method protected j()V
    .locals 1

    const-string v0, "onRecognitionVADTimeout"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ag;->k()V

    :cond_0
    return-void
.end method

.method protected k()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/i;->k:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected l()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/i;->i:Lcom/unisound/sdk/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ag;->h()V

    :cond_0
    return-void
.end method

.method protected m()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/i;->h:Lcom/unisound/sdk/af;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/af;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
