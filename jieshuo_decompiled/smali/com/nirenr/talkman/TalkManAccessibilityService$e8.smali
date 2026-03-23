.class Lcom/nirenr/talkman/TalkManAccessibilityService$e8;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e8"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/x1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PhoneState"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_c

    const/4 v6, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->l1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseAccessibilityVolume()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/nirenr/talkman/a;->G(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/a;->G(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/nirenr/talkman/a;->M(Z)V

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseAccessibilityVolume()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/nirenr/talkman/a;->G(I)V

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "\u63a5\u542c"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->allStop()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->I1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->O1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->a:J

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->L(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setFalseTouchPreventionEnabled(Z)V

    :cond_5
    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/Music;->k()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->l1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isRingMode()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseAccessibilityVolume()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/nirenr/talkman/a;->M(Z)V

    :cond_6
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/nirenr/talkman/a;->G(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v0, v6}, Lcom/nirenr/talkman/a;->H(II)V

    :cond_7
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "BACK"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoSpeechEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeechEnabled(Z)V

    :cond_8
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    const-string v0, "\u54cd\u94c3:\u6765\u7535\u53f7\u7801"

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {}, Lk2/e;->a()Lk2/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lk2/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const v0, 0x7f070831

    invoke-static {p1, v0, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onIncall(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0

    :cond_c
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/media/AudioManager;->setMode(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseAccessibilityVolume()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/nirenr/talkman/a;->G(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/a;->G(I)V

    :cond_d
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->l1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseAccessibilityVolume()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/nirenr/talkman/a;->G(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/a;->G(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/nirenr/talkman/a;->M(Z)V

    :cond_e
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/a;->k(I)V

    :cond_f
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "\u6302\u65ad"

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_10
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->I1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->O1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/a;->k(I)V

    :cond_11
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const v0, 0x7f070834

    invoke-static {p1, v0, v4}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    iget-wide v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_13

    return-void

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->a:J

    sub-long/2addr v0, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_14

    return-void

    :cond_14
    iput-wide v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->a:J

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/nirenr/talkman/TalkManAccessibilityService$e8$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService$e8$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$e8;J)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
