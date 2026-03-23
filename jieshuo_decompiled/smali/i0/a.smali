.class public Li0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/a$c;,
        Li0/a$e;,
        Li0/a$d;
    }
.end annotation


# instance fields
.field private a:Ll0/c;

.field private b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Lm0/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li0/a$a;

    invoke-direct {v0, p0}, Li0/a$a;-><init>(Li0/a;)V

    iput-object v0, p0, Li0/a;->d:Lm0/b;

    invoke-direct {p0}, Li0/a;->D()Ll0/c;

    move-result-object v0

    iput-object v0, p0, Li0/a;->a:Ll0/c;

    iget-object v1, p0, Li0/a;->d:Lm0/b;

    invoke-interface {v0, v1}, Ll0/c;->l(Lm0/b;)V

    return-void
.end method

.method private D()Ll0/c;
    .locals 1

    new-instance v0, Ll0/g;

    invoke-direct {v0}, Ll0/g;-><init>()V

    invoke-interface {v0}, Lk0/f;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/c;

    return-object v0
.end method

.method private declared-synchronized E()Ljava/util/concurrent/ExecutorService;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Li0/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lu0/a;

    const-string v1, "bdtts-SpeechSynthesizerPoolThread"

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/16 v3, 0x3a98

    invoke-direct {v0, v3, v1, v2}, Lu0/a;-><init>(ILjava/lang/String;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Li0/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Li0/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private F()V
    .locals 5

    const-string v0, "SpeechSynthesizerAdapter"

    iget-object v1, p0, Li0/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Li0/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    :try_start_0
    iget-object v1, p0, Li0/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v2, Lb1/l;->c:Lb1/l;

    invoke-virtual {v2}, Lb1/l;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTerminated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "InterruptedException"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Li0/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    return-void
.end method

.method private g(Ljava/lang/String;Ljava/util/concurrent/Callable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lq1/h;->d(Ljava/lang/String;)Lb1/n;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Li0/a;->i(Ljava/util/concurrent/Callable;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method private i(Ljava/util/concurrent/Callable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Li0/a;->E()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "SpeechSynthesizerAdapter"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p1, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    return p1

    :catch_1
    invoke-direct {p0}, Li0/a;->E()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bdtts-Queue"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic k(Li0/a;Ll1/h;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Li0/a;->l(Ll1/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private l(Ll1/h;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll1/h;->x()Ll1/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll1/i;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "SpeechSynthesizerAdapter"

    const-string v0, "getUtteranceId null"

    invoke-static {p1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic m(Li0/a;)Ll0/c;
    .locals 0

    iget-object p0, p0, Li0/a;->a:Ll0/c;

    return-object p0
.end method

.method static synthetic u(Li0/a;Ll1/h;)Lcom/baidu/tts/client/SpeechError;
    .locals 0

    invoke-direct {p0, p1}, Li0/a;->v(Ll1/h;)Lcom/baidu/tts/client/SpeechError;

    move-result-object p0

    return-object p0
.end method

.method private v(Ll1/h;)Lcom/baidu/tts/client/SpeechError;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ll1/h;->y()Ll0/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll0/f;->b()I

    move-result v0

    invoke-virtual {p1}, Ll0/f;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/baidu/tts/client/SpeechError;

    invoke-direct {v1}, Lcom/baidu/tts/client/SpeechError;-><init>()V

    iput v0, v1, Lcom/baidu/tts/client/SpeechError;->code:I

    iput-object p1, v1, Lcom/baidu/tts/client/SpeechError;->description:Ljava/lang/String;

    return-object v1

    :cond_0
    const-string p1, "SpeechSynthesizerAdapter"

    const-string v0, "ttsError is null"

    invoke-static {p1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/baidu/tts/client/SpeechError;

    invoke-direct {p1}, Lcom/baidu/tts/client/SpeechError;-><init>()V

    sget-object v0, Lb1/n;->q0:Lb1/n;

    invoke-virtual {v0}, Lb1/n;->b()I

    move-result v1

    iput v1, p1, Lcom/baidu/tts/client/SpeechError;->code:I

    invoke-virtual {v0}, Lb1/n;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/tts/client/SpeechError;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;
    .locals 0

    iget-object p0, p0, Li0/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 1

    invoke-direct {p0}, Li0/a;->F()V

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg1/b;->e()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public B()I
    .locals 1

    invoke-direct {p0}, Li0/a;->F()V

    :try_start_0
    iget-object v0, p0, Li0/a;->a:Ll0/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg1/b;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Li0/a;->a:Ll0/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public C()I
    .locals 2

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ll0/c;->A(Ll1/e;)I

    move-result v0

    return v0
.end method

.method public a(FF)I
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    invoke-interface {v0, p1, p2}, Ll0/c;->n(FF)I

    move-result p1

    return p1
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    invoke-interface {v0, p1}, Ll0/c;->q(I)I

    move-result p1

    return p1
.end method

.method public c(II)I
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    invoke-interface {v0, p1, p2}, Ll0/c;->o(II)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ll1/e;

    invoke-direct {v0}, Ll1/e;-><init>()V

    invoke-virtual {v0, p1}, Ll1/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Li0/a;->a:Ll0/c;

    invoke-interface {p1, v0}, Ll0/c;->j(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p1}, Lb1/g;->valueOf(Ljava/lang/String;)Lb1/g;

    move-result-object p1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    invoke-interface {v0, p1, p2}, Ll0/c;->z(Lb1/g;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    new-instance p3, Li0/a$d;

    invoke-direct {p3, p0, p1, p2}, Li0/a$d;-><init>(Li0/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Li0/a;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)I

    move-result p1

    return p1
.end method

.method public h(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    new-instance v0, Li0/a$c;

    invoke-direct {v0, p0, p1}, Li0/a$c;-><init>(Li0/a;Ljava/util/List;)V

    invoke-direct {p0, v0}, Li0/a;->i(Ljava/util/concurrent/Callable;)I

    move-result p1

    return p1

    :cond_0
    sget p1, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_LIST_IS_TOO_LONG:I

    return p1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v0

    invoke-virtual {v0}, Le1/b;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/baidu/tts/client/TtsMode;)Ll0/f;
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getTtsEnum()Lb1/m;

    move-result-object p1

    invoke-interface {v0, p1}, Ll0/c;->p(Lb1/m;)V

    iget-object p1, p0, Li0/a;->a:Ll0/c;

    invoke-interface {p1}, Lg1/b;->b()Ll0/f;

    move-result-object p1

    return-object p1
.end method

.method public o(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    invoke-interface {v0, p1}, Ll0/c;->u(Landroid/content/Context;)V

    return-void
.end method

.method public p(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .locals 1

    iget-object v0, p0, Li0/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Li0/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    :cond_0
    return-void
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg1/b;->d()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r(I)I
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    invoke-interface {v0, p1}, Ll0/c;->r(I)I

    move-result p1

    return p1
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ll1/g;

    invoke-direct {v0}, Ll1/g;-><init>()V

    invoke-virtual {v0, p1}, Ll1/g;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ll1/g;->b(Ljava/lang/String;)V

    iget-object p1, p0, Li0/a;->a:Ll0/c;

    invoke-interface {p1, v0}, Ll0/c;->w(Ll1/g;)I

    move-result p1

    return p1
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    new-instance p3, Li0/a$e;

    invoke-direct {p3, p0, p1, p2}, Li0/a$e;-><init>(Li0/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Li0/a;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)I

    move-result p1

    return p1
.end method

.method public x(Lcom/baidu/tts/client/TtsMode;)Ln0/a;
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getTtsEnum()Lb1/m;

    move-result-object p1

    invoke-interface {v0, p1}, Ll0/c;->m(Lb1/m;)Ln0/a;

    move-result-object p1

    return-object p1
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Li0/a;->a:Ll0/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg1/b;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ll1/f;

    invoke-direct {v0}, Ll1/f;-><init>()V

    invoke-virtual {v0, p1}, Ll1/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ll1/f;->d(Ljava/lang/String;)V

    iget-object p1, p0, Li0/a;->a:Ll0/c;

    invoke-interface {p1, v0}, Ll0/c;->k(Ll1/f;)I

    move-result p1

    return p1
.end method
