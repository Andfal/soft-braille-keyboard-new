.class public Lk2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nirenr/talkman/n;

.field private final b:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lk2/o;->c:Lorg/json/JSONObject;

    iput-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lk2/o;->a:Lcom/nirenr/talkman/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "{}"

    const v3, 0x7f070039

    invoke-static {v1, v3, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk2/o;->c:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lk2/o;->c:Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2c

    const/16 v3, 0x28

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v5, 0x1e

    if-eq p1, v5, :cond_8

    const/16 v5, 0x24

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_6

    const/16 v3, 0x2a

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v2, 0x3e

    if-eq p1, v2, :cond_3

    const/16 v2, 0x42

    if-eq p1, v2, :cond_2

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return v4

    :pswitch_0
    iget-object p1, p0, Lk2/o;->a:Lcom/nirenr/talkman/n;

    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/n;->V(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lk2/o;->a:Lcom/nirenr/talkman/n;

    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/n;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lk2/o;->a:Lcom/nirenr/talkman/n;

    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/n;->p(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lk2/o;->a:Lcom/nirenr/talkman/n;

    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/n;->O0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->select(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toRecents()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNotifications()V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toLongClick()V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toHome()V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toBack()V

    :goto_0
    return v1

    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_10

    if-eq p1, v2, :cond_f

    const/16 v0, 0x32

    if-eq p1, v0, :cond_e

    if-eq p1, v3, :cond_d

    const/16 v0, 0x29

    if-eq p1, v0, :cond_c

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_b

    const/16 v0, 0x30

    if-eq p1, v0, :cond_a

    return v4

    :cond_a
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07068f

    goto :goto_1

    :cond_b
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070627

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07035d

    goto :goto_1

    :cond_d
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07034b

    goto :goto_1

    :cond_e
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070194

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070525

    goto :goto_1

    :cond_10
    iget-object p1, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070009

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;)Z

    return v1

    :cond_11
    return v4

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lk2/o;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lk2/o;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0708ae

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lk2/o;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    const/4 p1, 0x1

    return p1
.end method
