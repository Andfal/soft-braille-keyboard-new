.class Lcom/nirenr/talkman/TalkManAccessibilityService$x7;
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
    name = "x7"
.end annotation


# instance fields
.field private a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/s1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_2

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "focus2"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCharMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/TalkManAccessibilityService$x7$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$x7$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$x7;)V

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setOnAccessibilityFocusedListener(Lcom/nirenr/talkman/OnAccessibilityFocusedListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_2
    return-void
.end method
