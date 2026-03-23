.class Lcn/yunzhisheng/pro/OfflineTTS$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yunzhisheng/pro/OfflineTTS;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field final synthetic b:Lcn/yunzhisheng/pro/OfflineTTS;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/pro/OfflineTTS;Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS$a;->b:Lcn/yunzhisheng/pro/OfflineTTS;

    iput-object p2, p0, Lcn/yunzhisheng/pro/OfflineTTS$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS$a;->b:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-static {p1}, Lcn/yunzhisheng/pro/OfflineTTS;->b(Lcn/yunzhisheng/pro/OfflineTTS;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcn/yunzhisheng/pro/OfflineTTS$a;->b:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-static {p2}, Lcn/yunzhisheng/pro/OfflineTTS;->a(Lcn/yunzhisheng/pro/OfflineTTS;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean p1, Lcom/reecedunn/espeak/TtsService;->initializeTtsing:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lcom/reecedunn/espeak/TtsService;->initializeTtsing:Z

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS$a;->b:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-static {p1}, Lcn/yunzhisheng/pro/OfflineTTS;->b(Lcn/yunzhisheng/pro/OfflineTTS;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcn/yunzhisheng/pro/OfflineTTS$a$a;

    invoke-direct {p2, p0}, Lcn/yunzhisheng/pro/OfflineTTS$a$a;-><init>(Lcn/yunzhisheng/pro/OfflineTTS$a;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
