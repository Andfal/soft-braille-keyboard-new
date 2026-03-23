.class Lcom/nirenr/talkman/TalkManAccessibilityService$t7;
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

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "mIncallRunnable"

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->C(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/n;->T()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f070622

    const-string v2, "5"

    invoke-static {v0, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->C(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->s0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->L0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/a;->t(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->L0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->stop()V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->C(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    const-string v3, "incallui node"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.google.android.dialer"

    const-string v5, "incallui"

    if-eqz v1, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "incallui node2"

    invoke-virtual {v1, v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->S2(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_b

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_b
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->T(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->stop()V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->T(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
