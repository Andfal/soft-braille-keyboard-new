.class Lcom/nirenr/talkman/settings/SearchActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SearchActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Lcom/nirenr/talkman/settings/SearchActivity$4;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SearchActivity$4;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4$1;->b:Lcom/nirenr/talkman/settings/SearchActivity$4;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SearchActivity$4$1;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4$1;->b:Lcom/nirenr/talkman/settings/SearchActivity$4;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4$1;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4$1;->b:Lcom/nirenr/talkman/settings/SearchActivity$4;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->reAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4$1;->b:Lcom/nirenr/talkman/settings/SearchActivity$4;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4$1;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->reAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :goto_0
    return-void
.end method
