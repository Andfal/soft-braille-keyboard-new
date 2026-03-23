.class public Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yunzhisheng/pro/OfflineTTS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UniReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcn/yunzhisheng/pro/OfflineTTS;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/pro/OfflineTTS;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nirenr.talkman.ACTION_UNI_SPEED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_UNI_PITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_UNI_VOLUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_UNI_SCALE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_UNI_ACCESSIBILITY_VOLUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.nirenr.talkman.ACTION_UNI_ACCESSIBILITY_VOLUME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "com.nirenr.talkman.ACTION_UNI_SPEED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "com.nirenr.talkman.ACTION_UNI_SCALE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "com.nirenr.talkman.ACTION_UNI_PITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "com.nirenr.talkman.ACTION_UNI_VOLUME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string p1, "com.nirenr.talkman.EXTRA_TEXT_DATA"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->y(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->v(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->t(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->s(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->z(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x506c6e5d -> :sswitch_4
        -0xb316089 -> :sswitch_3
        -0xb0a1a7f -> :sswitch_2
        -0xb042382 -> :sswitch_1
        0x7c8f0214 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
