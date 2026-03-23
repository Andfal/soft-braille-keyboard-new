.class Lcom/nirenr/talkman/dialog/SplitEditDialog$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->k(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;->onTextChanged(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->k(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f07059d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->k(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->z(Lcom/nirenr/talkman/dialog/SplitEditDialog;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
