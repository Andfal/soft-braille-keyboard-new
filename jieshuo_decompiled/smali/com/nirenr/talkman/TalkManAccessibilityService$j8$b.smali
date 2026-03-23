.class Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->b(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->a(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->G(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/b;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u5f00\u59cb\u5feb\u624b\u5b57\u5e55\u6717\u8bfb"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->G(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/util/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/util/b;->M(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->G(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/b;->G()V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->b(Lcom/nirenr/talkman/TalkManAccessibilityService$j8;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$j8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$j8;->h:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
