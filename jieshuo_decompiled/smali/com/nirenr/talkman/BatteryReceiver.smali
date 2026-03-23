.class public Lcom/nirenr/talkman/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/telephony/TelephonyManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    iput v0, p0, Lcom/nirenr/talkman/BatteryReceiver;->d:I

    iput-boolean v0, p0, Lcom/nirenr/talkman/BatteryReceiver;->e:Z

    iput-object p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->a:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static b()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/BatteryReceiver;->e:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isInCalling()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    const/16 p1, 0x64

    const v0, 0x7f07065b

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput-boolean v2, p0, Lcom/nirenr/talkman/BatteryReceiver;->e:Z

    iget p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    iput p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->d:I

    iget-object p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "power_connected"

    invoke-virtual {p2, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v1, v1, [Ljava/lang/Object;

    const v4, 0x7f0704c0

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :pswitch_1
    const-string v0, "status"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v3, p0, Lcom/nirenr/talkman/BatteryReceiver;->e:Z

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lcom/nirenr/talkman/BatteryReceiver;->e:Z

    :goto_1
    const-string v0, "level"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_7

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_7
    iput v0, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    :goto_2
    const/4 p2, 0x0

    goto :goto_3

    :pswitch_2
    iput-boolean v3, p0, Lcom/nirenr/talkman/BatteryReceiver;->e:Z

    iget p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    iput p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->d:I

    iget-object p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "power_disconnected"

    invoke-virtual {p2, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v1, v1, [Ljava/lang/Object;

    const v4, 0x7f0704c1

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    :goto_4
    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget p2, p0, Lcom/nirenr/talkman/BatteryReceiver;->d:I

    iget v0, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    if-ne p2, v0, :cond_9

    return-void

    :cond_9
    if-ne v0, p1, :cond_a

    iget-boolean p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->e:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p2, "power_full"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f0703aa

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_a
    const/16 p1, 0xf

    if-ne v0, p1, :cond_b

    iget-boolean p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->e:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p2, "power_low"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    :cond_b
    :goto_5
    iget p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->c:I

    iput p1, p0, Lcom/nirenr/talkman/BatteryReceiver;->d:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_2
        -0x5bb23923 -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
