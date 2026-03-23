.class Lcom/nirenr/talkman/n$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/OnAccessibilityFocusedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/n;->t0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Lcom/nirenr/talkman/n;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/n;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/n$g;->b:Lcom/nirenr/talkman/n;

    iput-object p2, p0, Lcom/nirenr/talkman/n$g;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityFocused(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/n$g;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/n$g;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/n;->E0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/n$g;->b:Lcom/nirenr/talkman/n;

    iget-object v0, v0, Lcom/nirenr/talkman/n;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->focusSound(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_0
    return-void
.end method
