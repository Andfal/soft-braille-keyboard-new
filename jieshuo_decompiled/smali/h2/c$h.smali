.class Lh2/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/c;


# direct methods
.method constructor <init>(Lh2/c;)V
    .locals 0

    iput-object p1, p0, Lh2/c$h;->a:Lh2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lh2/c$h;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->d(Lh2/c;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/c$h;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->g(Lh2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object v0, p0, Lh2/c$h;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->a(Lh2/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lh2/c$h;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->b(Lh2/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh2/c$h;->a:Lh2/c;

    invoke-static {v1}, Lh2/c;->d(Lh2/c;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    iget-object v1, p0, Lh2/c$h;->a:Lh2/c;

    invoke-static {v1}, Lh2/c;->g(Lh2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lh2/c$h$a;

    invoke-direct {v2, p0, v0, p1}, Lh2/c$h$a;-><init>(Lh2/c$h;Ljava/lang/String;Landroid/view/View;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
