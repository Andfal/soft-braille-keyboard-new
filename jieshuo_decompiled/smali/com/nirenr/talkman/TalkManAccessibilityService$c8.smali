.class Lcom/nirenr/talkman/TalkManAccessibilityService$c8;
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
    name = "c8"
.end annotation


# instance fields
.field private a:Landroid/view/accessibility/AccessibilityEvent;

.field private b:Z

.field private c:I

.field final synthetic d:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/w1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->u(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const v3, 0x7f07030d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->a:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->a:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->a:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendSpeak(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->a:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->a:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->a:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->y1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->a:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    add-int/2addr v0, v1

    iget v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->c:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->j1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :cond_0
    iput v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->c:I

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->a:Landroid/view/accessibility/AccessibilityEvent;

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->j1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x5dc

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x320

    :goto_0
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->b:Z

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->b:Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->T0(Lcom/nirenr/talkman/TalkManAccessibilityService;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isInListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$c8;->b()V

    return-void
.end method
