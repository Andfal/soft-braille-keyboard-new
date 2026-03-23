.class Lcom/nirenr/talkman/TalkManAccessibilityService$j8;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j8"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field final synthetic h:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 p1, 0x64

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->b:I

    const/16 p1, 0x65

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->c:I

    const/16 p1, 0x66

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->d:I

    const/16 p1, 0x67

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->e:I

    const/16 p1, 0x68

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/c2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->g:I

    return p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->g:I

    return-void
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->f(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->G(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/b;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->g:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->g:I

    :cond_1
    iget v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->g:I

    if-lez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioFocusRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/j0;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "GameMode"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x68

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/util/List;)V

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->z(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkBlackList1"

    invoke-virtual {v2, v4, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->z(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->z(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->E1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/util/List;)V

    :cond_4
    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->j(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->O(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eq v2, v1, :cond_7

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setGameMode(Z)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->R0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz v2, :cond_6

    const v2, 0x7f0703ee

    goto :goto_0

    :cond_6
    const v2, 0x7f0703cf

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendSpeak(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->f(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->f(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.kuaishou.nebula"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.smile.gifmaker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "com.smile.gifmaker:id/message_list_view"

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->f(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p1, "com.kuaishou.nebula.live_audience_plugin:id/message_list_view"

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->f(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/a;->W(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->g:I

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->x(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioFocusRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/b2;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->s0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getMode()I

    move-result v3

    :goto_0
    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_4
    :goto_1
    return-void
.end method

.method public i(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    const/16 v1, 0x65

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setWakeLock_aux(Z)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "WakeThread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;)V

    iput-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a:Landroid/os/Handler;

    return-void
.end method
