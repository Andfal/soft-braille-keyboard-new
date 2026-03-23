.class public Lcom/vivo/speechsdk/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IVad;
.implements Lcom/vivo/speechsdk/module/api/session/SessionListener;


# static fields
.field private static final h:Ljava/lang/String; = "VadHandler"


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/vad/IVadService;

.field private b:Lcom/vivo/speechsdk/b/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/b/e/d<",
            "[B>;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:Lcom/vivo/speechsdk/a/h/e;

.field private e:Z

.field private f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

.field private g:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/a/f;->d:Lcom/vivo/speechsdk/a/h/e;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/speechsdk/a/f;->e:Z

    new-instance v1, Lcom/vivo/speechsdk/a/f$a;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/a/f$a;-><init>(Lcom/vivo/speechsdk/a/f;)V

    iput-object v1, p0, Lcom/vivo/speechsdk/a/f;->g:Landroid/os/Handler$Callback;

    new-instance v1, Lcom/vivo/speechsdk/a/h/e;

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    invoke-direct {v1, v0}, Lcom/vivo/speechsdk/a/h/e;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/speechsdk/a/f;->d:Lcom/vivo/speechsdk/a/h/e;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/f;)Lcom/vivo/speechsdk/a/h/e;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/f;->d:Lcom/vivo/speechsdk/a/h/e;

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/a/f;->e:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Z
    .locals 4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "Vad"

    invoke-virtual {v0, v2, p1, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/vad/IVadService;

    iput-object v0, p0, Lcom/vivo/speechsdk/a/f;->a:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    const-string v3, "Session"

    invoke-virtual {v2, v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;

    if-nez v2, :cond_1

    const-string p1, "VadHandler"

    const-string v0, "session module not found "

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;->getVadSessionCollect()Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/a/f;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->init(Landroid/os/Bundle;Landroid/os/Looper;)V

    return v0
.end method

.method public check([B)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/f;->b:Lcom/vivo/speechsdk/b/e/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/vivo/speechsdk/b/e/d;->a(ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/f;->b:Lcom/vivo/speechsdk/b/e/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/b/e/d;->a(I)V

    :cond_0
    return-void
.end method

.method public event(I)V
    .locals 0

    return-void
.end method

.method public onSessionFinished(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IVadListener;)I
    .locals 4

    const-string v0, "key_inner_record"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "key_volume_enable"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/speechsdk/a/f;->e:Z

    iget-object v2, p0, Lcom/vivo/speechsdk/a/f;->d:Lcom/vivo/speechsdk/a/h/e;

    invoke-virtual {v2, p2}, Lcom/vivo/speechsdk/a/h/e;->a(Lcom/vivo/speechsdk/asr/api/IVadListener;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/f;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-interface {p2, p0}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->setSessionListener(Lcom/vivo/speechsdk/module/api/session/SessionListener;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/speechsdk/a/f;->g:Landroid/os/Handler$Callback;

    invoke-direct {p2, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/vivo/speechsdk/a/f;->c:Landroid/os/Handler;

    new-instance v2, Lcom/vivo/speechsdk/b/e/d;

    invoke-direct {v2, p2, p1}, Lcom/vivo/speechsdk/b/e/d;-><init>(Landroid/os/Handler;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/vivo/speechsdk/a/f;->b:Lcom/vivo/speechsdk/b/e/d;

    const/4 p1, 0x1

    if-eqz v0, :cond_0

    new-instance p2, Lcom/vivo/speechsdk/a/g/h;

    invoke-direct {p2}, Lcom/vivo/speechsdk/a/g/h;-><init>()V

    invoke-virtual {v2, p2}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/f;->b:Lcom/vivo/speechsdk/b/e/d;

    new-instance v0, Lcom/vivo/speechsdk/a/g/c;

    iget-boolean v2, p0, Lcom/vivo/speechsdk/a/f;->e:Z

    iget-object v3, p0, Lcom/vivo/speechsdk/a/f;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-direct {v0, v2, p1, v3}, Lcom/vivo/speechsdk/a/g/c;-><init>(ZZLcom/vivo/speechsdk/module/api/session/ISessionCollect;)V

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    :cond_0
    iget-object p2, p0, Lcom/vivo/speechsdk/a/f;->b:Lcom/vivo/speechsdk/b/e/d;

    new-instance v0, Lcom/vivo/speechsdk/a/g/f;

    iget-object v2, p0, Lcom/vivo/speechsdk/a/f;->a:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    iget-object v3, p0, Lcom/vivo/speechsdk/a/f;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-direct {v0, v2, v3}, Lcom/vivo/speechsdk/a/g/f;-><init>(Lcom/vivo/speechsdk/module/api/vad/IVadService;Lcom/vivo/speechsdk/module/api/session/ISessionCollect;)V

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/f;->b:Lcom/vivo/speechsdk/b/e/d;

    invoke-virtual {p2, v1}, Lcom/vivo/speechsdk/b/e/d;->a(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/f;->b:Lcom/vivo/speechsdk/b/e/d;

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/b/e/d;->a(I)V

    return v1
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/f;->b:Lcom/vivo/speechsdk/b/e/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/b/e/d;->a(I)V

    :cond_0
    return-void
.end method
