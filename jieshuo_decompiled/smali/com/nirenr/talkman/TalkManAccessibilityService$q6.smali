.class Lcom/nirenr/talkman/TalkManAccessibilityService$q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->checkTalkback()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q6;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q6;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q6;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkTalkback()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q6;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q6;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z

    return-void
.end method
