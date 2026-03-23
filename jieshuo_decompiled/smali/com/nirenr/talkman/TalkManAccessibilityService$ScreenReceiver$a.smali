.class Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->k3(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    new-instance v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->a(Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;Ljava/lang/Runnable;)V

    return-void
.end method
