.class public Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public b()Landroid/content/IntentFilter;
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_CHANGE_FEEDBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_DISENABLED_TOUCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_DISENABLED_FEEDBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_ENABLED_FEEDBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_TEXT_TO_SPEAK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_PLUGIN_RUN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_FIND_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_CHECK_FEEDBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_ADD_CLIPBOARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_INPUTMETHOD_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_INPUTMETHOD_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "action0"

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->I(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v4

    const-string v5, "ScreenReceiver"

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v5, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-nez v3, :cond_4

    return-void

    :cond_4
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x4

    const-string v9, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    const-string v10, "android.intent.action.USER_UNLOCKED"

    const-string v11, "android.intent.action.USER_PRESENT"

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string v4, "com.nirenr.talkman.ACTION_DISENABLED_TOUCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "com.nirenr.talkman.ACTION_ADD_CLIPBOARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "com.nirenr.talkman.ACTION_ENABLED_FEEDBACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "com.nirenr.talkman.ACTION_CHANGE_FEEDBACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "com.nirenr.talkman.ACTION_FIND_CLICK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_a
    const-string v4, "com.nirenr.talkman.ACTION_TEXT_TO_SPEAK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_b
    const-string v4, "com.nirenr.talkman.ACTION_INPUTMETHOD_SHOW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_c
    const-string v4, "com.nirenr.talkman.ACTION_INPUTMETHOD_HIDE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_d
    const-string v4, "com.nirenr.talkman.ACTION_DISENABLED_FEEDBACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_e
    const-string v4, "com.nirenr.talkman.ACTION_CHECK_FEEDBACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_f
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_10
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x11

    goto :goto_1

    :sswitch_11
    const-string v4, "com.nirenr.talkman.ACTION_PLUGIN_RUN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_12
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_5

    const/16 v3, 0x12

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    const-string v15, "com.tatans.inputmethod"

    const/4 v6, 0x0

    const-string v7, "com.nirenr.talkman.EXTRA_TEXT_DATA"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    :try_start_2
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onScreenOff()V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;

    invoke-direct {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;)V

    iput-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->a:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->t0(Lcom/nirenr/talkman/TalkManAccessibilityService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onScreenOn2()V

    :cond_7
    invoke-static {}, Lcom/nirenr/talkman/TimerService;->c()Lcom/nirenr/talkman/TimerService;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v14}, Lcom/nirenr/talkman/TimerService;->l(Z)V

    :cond_8
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v6, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->a:Ljava/lang/Runnable;

    goto/16 :goto_4

    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_9

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/nirenr/talkman/a;->w(Z)V

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v5, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1b

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x77ff0100

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "setAccessibilityFocusAppearance"

    const-string v5, "%d %x"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/androlua/LuaService;->getService()Lcom/androlua/LuaService;

    move-result-object v3

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    int-to-float v2, v2

    invoke-static {v4, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P2(Lcom/nirenr/talkman/TalkManAccessibilityService;F)I

    move-result v2

    invoke-virtual {v3, v2, v0}, Landroid/accessibilityservice/AccessibilityService;->setAccessibilityFocusAppearance(II)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v5, v11}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->a2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    goto/16 :goto_4

    :pswitch_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1b

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v5, v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    goto/16 :goto_4

    :pswitch_6
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2, v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_4

    :cond_b
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->e0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_4

    :cond_c
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setGameMode(Z)V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->F(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->F(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->F(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addClipboard()Z

    goto/16 :goto_4

    :pswitch_8
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->K(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_e
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "ACTION_TEXT_TO_SPEAK"

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->n1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v13, :cond_10

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/a;->R(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/a;->T(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v3

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/androlua/LuaService;->getHeight()I

    move-result v4

    invoke-direct {v2, v14, v14, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_4

    :cond_11
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setGameMode(Z)V

    goto/16 :goto_4

    :pswitch_a
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v3

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/androlua/LuaService;->getHeight()I

    move-result v4

    invoke-direct {v2, v14, v14, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setInputMode(Z)V

    goto/16 :goto_4

    :pswitch_b
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncGetAllApp()V

    goto/16 :goto_4

    :pswitch_c
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.nirenr.talkman.ACTION_CHECK_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->X(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->I2(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :pswitch_d
    :try_start_3
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "\u9519\u8bef"

    invoke-virtual {v2, v3, v0}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findClick(Ljava/lang/String;)Z

    goto/16 :goto_4

    :pswitch_f
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    goto/16 :goto_4

    :pswitch_10
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->R1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->X1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_4

    :cond_12
    iget-object v2, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "com.nirenr.talkman.EXTRA_RECT_DATA"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->R1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->X1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_4

    :cond_13
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "ACTION_INPUTMETHOD_SHOW"

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_11
    const-string v3, "state"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    const-string v4, "incoming_number"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v12, :cond_15

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->O1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-static {}, Lk2/e;->a()Lk2/e;

    move-result-object v0

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->T(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lk2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v7, 0x7f070301

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    :cond_14
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onIncall(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_15
    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_16

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    iget-object v5, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->t(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/a;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lk2/a;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A2(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_3

    :cond_17
    const/4 v6, 0x3

    goto :goto_2

    :cond_18
    :goto_3
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->I1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    goto :goto_4

    :cond_19
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->I1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    goto :goto_4

    :cond_1a
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->I1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/a;->k(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1b
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_12
        -0x6ba07467 -> :sswitch_11
        -0x56ac2893 -> :sswitch_10
        -0x4f0a83a5 -> :sswitch_f
        -0x3439fbca -> :sswitch_e
        -0x29dc93a9 -> :sswitch_d
        -0x23de4750 -> :sswitch_c
        -0x23d94995 -> :sswitch_b
        -0x5d6caba -> :sswitch_a
        -0x4404464 -> :sswitch_9
        0x8e9b33a -> :sswitch_8
        0xb8b639d -> :sswitch_7
        0x1f50b9c2 -> :sswitch_6
        0x311a1d6c -> :sswitch_5
        0x31af1c32 -> :sswitch_4
        0x33e5d967 -> :sswitch_3
        0x4d9448be -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x7879578d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
