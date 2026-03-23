.class Lcom/nirenr/talkman/TalkManAccessibilityService$d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->editNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addContentBlacklist(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editNodeName(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editDict(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_0
    return-void
.end method
