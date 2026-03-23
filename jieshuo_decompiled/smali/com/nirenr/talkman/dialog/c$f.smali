.class Lcom/nirenr/talkman/dialog/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/c;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/c$f;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$f;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/c$f;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/c;->e(Lcom/nirenr/talkman/dialog/c;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$f;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/c$f;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/c;->e(Lcom/nirenr/talkman/dialog/c;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/c$f;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/c$f;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/c;->i(Lcom/nirenr/talkman/dialog/c;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->pasteText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    return-void
.end method
