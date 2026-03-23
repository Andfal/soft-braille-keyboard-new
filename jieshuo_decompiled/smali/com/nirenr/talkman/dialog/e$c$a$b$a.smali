.class Lcom/nirenr/talkman/dialog/e$c$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/e$c$a$b;->onCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/e$c$a$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/e$c$a$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->b:Lcom/nirenr/talkman/dialog/e$c$a$b;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->b:Lcom/nirenr/talkman/dialog/e$c$a$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c$a$b;->a:Lcom/nirenr/talkman/dialog/e$c$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->b:Lcom/nirenr/talkman/dialog/e$c$a$b;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c$a$b;->a:Lcom/nirenr/talkman/dialog/e$c$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const-string v2, "ACTION_SET_PROGRESS"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->b:Lcom/nirenr/talkman/dialog/e$c$a$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c$a$b;->a:Lcom/nirenr/talkman/dialog/e$c$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->b:Lcom/nirenr/talkman/dialog/e$c$a$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c$a$b;->a:Lcom/nirenr/talkman/dialog/e$c$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->b:Lcom/nirenr/talkman/dialog/e$c$a$b;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c$a$b;->a:Lcom/nirenr/talkman/dialog/e$c$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c$a$b$a;->b:Lcom/nirenr/talkman/dialog/e$c$a$b;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c$a$b;->a:Lcom/nirenr/talkman/dialog/e$c$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {}, Lcom/nirenr/talkman/h0;->a()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
