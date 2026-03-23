.class Lcom/nirenr/talkman/dialog/a$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/a$b$a$a;->onCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/a$b$a$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/a$b$a$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a$a;->a:Lcom/nirenr/talkman/dialog/a$b$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a;->a:Lcom/nirenr/talkman/dialog/a$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b$a$a;->a:Lcom/nirenr/talkman/dialog/a$b$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b$a;->a:Lcom/nirenr/talkman/dialog/a$b;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const-string v2, "ACTION_SET_PROGRESS"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a$a;->a:Lcom/nirenr/talkman/dialog/a$b$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a;->a:Lcom/nirenr/talkman/dialog/a$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a$a;->a:Lcom/nirenr/talkman/dialog/a$b$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a;->a:Lcom/nirenr/talkman/dialog/a$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b$a$a;->a:Lcom/nirenr/talkman/dialog/a$b$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b$a;->a:Lcom/nirenr/talkman/dialog/a$b;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a$a;->a:Lcom/nirenr/talkman/dialog/a$b$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a;->a:Lcom/nirenr/talkman/dialog/a$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b$a$a;->a:Lcom/nirenr/talkman/dialog/a$b$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b$a;->a:Lcom/nirenr/talkman/dialog/a$b;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b$a$a$a;->b:Lcom/nirenr/talkman/dialog/a$b$a$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a$a;->a:Lcom/nirenr/talkman/dialog/a$b$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b$a;->a:Lcom/nirenr/talkman/dialog/a$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextMove()Lk2/j0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lk2/j0;->l(Z)V

    return-void
.end method
