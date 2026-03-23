.class Lcom/nirenr/talkman/settings/SearchActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SearchActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field final synthetic e:Lcom/nirenr/talkman/settings/SearchActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SearchActivity;[Ljava/lang/String;Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->e:Lcom/nirenr/talkman/settings/SearchActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->c:[Ljava/lang/String;

    iget v1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/androlua/LuaResources;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->e:Lcom/nirenr/talkman/settings/SearchActivity;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget v3, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->b:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v3, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->b:I

    iget v4, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->a:I

    iget-object v5, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->c:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_5

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setRawSpeak(Z)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/SearchActivity$4$1;

    invoke-direct {v2, p0, v0}, Lcom/nirenr/talkman/settings/SearchActivity$4$1;-><init>(Lcom/nirenr/talkman/settings/SearchActivity$4;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    iget-object v3, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->a:I

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SearchActivity$4;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
