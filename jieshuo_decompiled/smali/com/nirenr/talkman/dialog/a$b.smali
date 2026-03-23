.class Lcom/nirenr/talkman/dialog/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/a;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->b(Lcom/nirenr/talkman/dialog/a;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->h(Lcom/nirenr/talkman/dialog/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->k(Lcom/nirenr/talkman/dialog/a;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const-string v2, "\u957f\u590d\u5236"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/nirenr/talkman/dialog/c;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/dialog/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/c;->q()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/nirenr/talkman/dialog/b;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/dialog/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/b;->q()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nirenr/talkman/dialog/f;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/dialog/f;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/f;->q()V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lh2/r;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh2/r;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Lh2/r;->a()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->clear(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lh2/u;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Lh2/u;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const-string v1, "\u5fae\u4fe1\u952e\u76d8"

    invoke-virtual {v0, v1}, Lh2/u;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/a;->b(Lcom/nirenr/talkman/dialog/a;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/nirenr/talkman/dialog/a;->g(Lcom/nirenr/talkman/dialog/a;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v0

    if-gez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->a(Lcom/nirenr/talkman/dialog/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->a(Lcom/nirenr/talkman/dialog/a;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/a;->a(Lcom/nirenr/talkman/dialog/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/nirenr/talkman/dialog/a;->g(Lcom/nirenr/talkman/dialog/a;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->e(Lcom/nirenr/talkman/dialog/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->e(Lcom/nirenr/talkman/dialog/a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/a;->e(Lcom/nirenr/talkman/dialog/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/nirenr/talkman/dialog/a;->g(Lcom/nirenr/talkman/dialog/a;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->f(Lcom/nirenr/talkman/dialog/a;)I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/widget/GridView;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/androlua/SingleLineAdapter;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v4}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f010022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f050007

    invoke-direct {v2, v3, v5, v4}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a$b;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/a$b$a;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/a$b$a;-><init>(Lcom/nirenr/talkman/dialog/a$b;)V

    const v3, 0x7f070260

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/a$b$b;

    invoke-direct {v2, p0, v1}, Lcom/nirenr/talkman/dialog/a$b$b;-><init>(Lcom/nirenr/talkman/dialog/a$b;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
