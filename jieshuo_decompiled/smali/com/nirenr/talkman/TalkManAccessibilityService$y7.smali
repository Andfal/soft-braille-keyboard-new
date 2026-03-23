.class Lcom/nirenr/talkman/TalkManAccessibilityService$y7;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "y7"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/t1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/TalkManAccessibilityService$y7;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->o1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->E0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(IF)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->o1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->E0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->e3(Lcom/nirenr/talkman/TalkManAccessibilityService;IF)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->e3(Lcom/nirenr/talkman/TalkManAccessibilityService;IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate_aux()V

    return-void

    :cond_0
    const/16 v1, 0x67

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate_aux()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "FeedThread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$y7$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$y7;)V

    iput-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->a:Landroid/os/Handler;

    return-void
.end method
