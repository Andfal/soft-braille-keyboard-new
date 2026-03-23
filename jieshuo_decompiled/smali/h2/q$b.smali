.class Lh2/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/q;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/q;


# direct methods
.method constructor <init>(Lh2/q;)V
    .locals 0

    iput-object p1, p0, Lh2/q$b;->a:Lh2/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v0}, Lh2/q;->d(Lh2/q;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v1}, Lh2/q;->b(Lh2/q;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v0}, Lh2/q;->c(Lh2/q;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v1}, Lh2/q;->e(Lh2/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v0}, Lh2/q;->d(Lh2/q;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v1}, Lh2/q;->c(Lh2/q;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v2}, Lh2/q;->e(Lh2/q;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v2}, Lh2/q;->b(Lh2/q;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v0}, Lh2/q;->d(Lh2/q;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v1}, Lh2/q;->c(Lh2/q;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v2}, Lh2/q;->e(Lh2/q;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lh2/q$b;->a:Lh2/q;

    invoke-static {v2}, Lh2/q;->b(Lh2/q;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :goto_0
    return-void
.end method
