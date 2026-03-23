.class Lcom/nirenr/talkman/TalkManAccessibilityService$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/OnScrolledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->toListViewStart(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
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

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/n;->g0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->G0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->U1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/androlua/LuaService;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->U1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toListViewStart(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1
.end method
