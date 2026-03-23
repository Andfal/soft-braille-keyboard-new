.class public Lcom/vivo/speechsdk/a/g/i;
.super Lcom/vivo/speechsdk/a/g/b;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/vad/VadListener;


# static fields
.field private static final q:Ljava/lang/String; = "VadInterceptor"

.field private static final r:I = 0x7fffffff


# instance fields
.field private e:I

.field private f:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private g:Lcom/vivo/speechsdk/module/api/vad/IVadService;

.field private h:Z

.field private i:Z

.field private j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

.field private k:I

.field private l:Z

.field private m:Ljava/lang/StringBuilder;

.field private n:Z

.field private o:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/api/vad/IVadService;ILcom/vivo/speechsdk/module/api/session/ISessionCollect;)V
    .locals 2

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/b;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/vivo/speechsdk/a/g/i;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->h:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/speechsdk/a/g/i;->l:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/vivo/speechsdk/a/g/i;->m:Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->n:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->p:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/g/i;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iput p2, p0, Lcom/vivo/speechsdk/a/g/i;->k:I

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/i;->g:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    iput-object p3, p0, Lcom/vivo/speechsdk/a/g/i;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    const-string p2, "Tracker"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/i;->o:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/vivo/speechsdk/a/g/i;->p:Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/a/g/i;->e:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-string v0, "all"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private a(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/i;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->event(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a([BI)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/vivo/speechsdk/a/g/i;->a(IILjava/lang/Object;)V

    :cond_0
    const/4 p2, 0x3

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0, p1}, Lcom/vivo/speechsdk/a/g/i;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private b()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/a/g/i;->e:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/i;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/i;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/vivo/speechsdk/a/g/i;->a(IILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;II)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/g/i;->a(I[BII)V

    return-void
.end method

.method public a(I[BII)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/i;->g:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    invoke-interface {v3}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->destroy()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/i;->g:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    invoke-interface {v3, p2}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->check([B)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/i;->g:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    invoke-interface {v3}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->stop()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/i;->g:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    invoke-interface {v3, v1}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->event(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    const-string v4, "key_silence_count"

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/vivo/speechsdk/a/g/i;->e:I

    iget-object v3, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    const-string v4, "key_denoise"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vivo/speechsdk/a/g/i;->n:Z

    iget-object v3, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    const-string v4, "key_request_mode"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/vivo/speechsdk/a/g/i;->l:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEEP_COUNT | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vivo/speechsdk/a/g/i;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VadInterceptor"

    invoke-static {v4, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/i;->g:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    iget-object v4, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    invoke-interface {v3, v4, p0}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/vad/VadListener;)I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v4, 0x6a

    invoke-virtual {p0, v4, v3}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    const/16 v3, 0x6b

    const/16 v4, 0x10

    invoke-virtual {p0, v3, v4}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    :cond_6
    :goto_1
    if-eq v0, p1, :cond_7

    if-eq v2, p1, :cond_7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->b(ILjava/lang/Object;II)V

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->n:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/i;->b()Z

    move-result v0

    if-nez v0, :cond_8

    if-eq v2, p1, :cond_8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->b(ILjava/lang/Object;II)V

    invoke-direct {p0, v1, v2, p2}, Lcom/vivo/speechsdk/a/g/i;->a(IILjava/lang/Object;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method public onVadData([BI)V
    .locals 5

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->isPrivateLog()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/i;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/i;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "data=%d flag=%d keep=%s queue=%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VadInterceptor"

    invoke-static {v3, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/i;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->h:Z

    if-nez v0, :cond_2

    if-ne p2, v2, :cond_2

    iput-boolean v2, p0, Lcom/vivo/speechsdk/a/g/i;->h:Z

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/b/e/a;->b(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->n:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/i;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->h:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/vivo/speechsdk/a/g/i;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p2

    iget v0, p0, Lcom/vivo/speechsdk/a/g/i;->e:I

    if-ne p2, v0, :cond_7

    goto :goto_2

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/a/g/i;->a([BI)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/i;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->h:Z

    if-eqz v0, :cond_6

    :goto_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/i;->c()V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/vivo/speechsdk/a/g/i;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p2

    iget v0, p0, Lcom/vivo/speechsdk/a/g/i;->e:I

    if-ne p2, v0, :cond_7

    :goto_2
    iget-object p2, p0, Lcom/vivo/speechsdk/a/g/i;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    :cond_7
    iget-object p2, p0, Lcom/vivo/speechsdk/a/g/i;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    return-void
.end method

.method public onVadEvent(II)V
    .locals 9

    const-string v0, "VadInterceptor"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/vivo/speechsdk/a/g/i;->l:Z

    if-eqz v3, :cond_1

    const-string v3, "vad begin time out"

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x6a

    if-ne p2, v2, :cond_0

    iget v4, p0, Lcom/vivo/speechsdk/a/g/i;->k:I

    if-eq v4, v1, :cond_0

    const/16 v4, 0x7606

    goto :goto_0

    :cond_0
    const/16 v4, 0x75f8

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    :cond_1
    const/16 v3, 0x66

    if-ne p1, v2, :cond_2

    iget-boolean v4, p0, Lcom/vivo/speechsdk/a/g/i;->l:Z

    if-eqz v4, :cond_2

    const-string v4, "vad end time out"

    invoke-static {v0, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/vivo/speechsdk/a/g/i;->i:Z

    invoke-virtual {p0, v3}, Lcom/vivo/speechsdk/b/e/a;->b(I)V

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne p1, v1, :cond_5

    iget-boolean v6, p0, Lcom/vivo/speechsdk/a/g/i;->l:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/vivo/speechsdk/a/g/i;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object v6, v7, v2

    const-string v6, "vad check count=%d | %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->h:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->i:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/vivo/speechsdk/a/g/i;->i:Z

    invoke-virtual {p0, v3}, Lcom/vivo/speechsdk/b/e/a;->b(I)V

    :cond_4
    invoke-virtual {p0, v1, v4}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    const/16 v0, 0x6b

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1, p2}, Lcom/vivo/speechsdk/b/e/a;->a(III)V

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/i;->o:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->p:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/g/i;->o:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/16 v2, 0xe

    invoke-interface {v1, v2, v0}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/i;->o:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/i;->p:Z

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vivo/speechsdk/a/g/i;->o:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/16 v2, 0xd

    invoke-interface {v1, v2, v0}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_microphone_count"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x69

    const/16 v1, 0x1398

    invoke-virtual {p0, v0, v1, v5, p1}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    const/16 p1, 0x18

    invoke-direct {p0, p1, p2, v4}, Lcom/vivo/speechsdk/a/g/i;->a(IILjava/lang/Object;)V

    :cond_8
    return-void
.end method
