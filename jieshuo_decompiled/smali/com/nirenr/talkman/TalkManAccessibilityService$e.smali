.class Lcom/nirenr/talkman/TalkManAccessibilityService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->accessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->a:I

    iput-boolean p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->a:I

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "mAutoRunnable2"

    invoke-virtual {v0, v1, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->D1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPrevious()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNext()Z

    :goto_0
    return-void
.end method
