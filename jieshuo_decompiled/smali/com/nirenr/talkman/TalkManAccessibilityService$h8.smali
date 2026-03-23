.class Lcom/nirenr/talkman/TalkManAccessibilityService$h8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h8"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/z1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->a:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->a:Z

    return v0
.end method

.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r1(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->a:Z

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->U2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    const v3, 0x7f070234

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouch()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sget-boolean v1, Lcom/nirenr/talkman/TalkManAccessibilityService;->useAppTTS:Z

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAppTTS(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->Y2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModePause(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModePause(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070230

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/n;->q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouch()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSSpeed(Z)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->Z(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/o;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07022f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lk2/o;->c(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method
