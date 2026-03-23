.class Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "GameMode"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->j(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v4, v4, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v4, v4, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/util/List;)V

    :cond_1
    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v4, v4, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v4, v4, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v6, v6, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->z(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkBlackList1"

    invoke-virtual {v4, v6, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v4, v4, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->z(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v4, v4, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->z(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->E1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/util/List;)V

    :cond_3
    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v4, v4, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v4, v4, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->j(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v5, v5, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->O(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eq v4, v1, :cond_6

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setGameMode(Z)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->R0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz v4, :cond_5

    const v4, 0x7f0703ee

    goto :goto_0

    :cond_5
    const v4, 0x7f0703cf

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendSpeak(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->f(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->f(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.kuaishou.nebula"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.smile.gifmaker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    const-string v0, "com.smile.gifmaker:id/message_list_view"

    :goto_1
    invoke-static {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->c(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    const-string v0, "com.kuaishou.nebula.live_audience_plugin:id/message_list_view"

    goto :goto_1

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/nirenr/talkman/a;->W(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    invoke-static {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->b(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;I)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_a

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/b2;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto/16 :goto_4

    :cond_a
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->s0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    const/4 v1, 0x2

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getMode()I

    move-result v1

    :goto_3
    invoke-virtual {p1, v0, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_4

    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_c

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/j0;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_4

    :pswitch_3
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setWakeLock_aux(Z)V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setWakeLock_aux(Z)V

    :cond_d
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
