.class Lcom/nirenr/talkman/TalkManAccessibilityService$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v0

    const/4 v1, -0x1

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/nirenr/talkman/n;->x(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setLongCopy(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/nirenr/talkman/n;->x(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setLongCopy(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->longCopy()V

    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->s(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->s(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->l0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->c2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setLongCopy(Z)V

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->longCopy()V

    return-void
.end method
