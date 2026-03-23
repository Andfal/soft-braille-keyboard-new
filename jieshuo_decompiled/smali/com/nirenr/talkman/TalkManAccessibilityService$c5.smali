.class Lcom/nirenr/talkman/TalkManAccessibilityService$c5;
.super Lnet/tatans/imeopensdk/ScreenReaderActor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->S5()V
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

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Lnet/tatans/imeopensdk/ScreenReaderActor;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    invoke-super {p0}, Lnet/tatans/imeopensdk/ScreenReaderActor;->interrupt()V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TatansImeSDK interrupt"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$c5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInputModeChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Lnet/tatans/imeopensdk/ScreenReaderActor;->onInputModeChanged(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->Q1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "TatansImeSDK onInputModeChanged"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setGameMode(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->setTouchExplorePassThrough(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public performClick(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TatansImeSDK performClick"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findClick([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestTouchExplorationState(Z)V
    .locals 3

    invoke-super {p0, p1}, Lnet/tatans/imeopensdk/ScreenReaderActor;->requestTouchExplorationState(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TatansImeSDK requestTouchExplorationState"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setGameMode(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    return-void
.end method

.method public setTouchExplorePassThrough(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Lnet/tatans/imeopensdk/ScreenReaderActor;->setTouchExplorePassThrough(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TatansImeSDK setTouchExplorePassThrough"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    return-void
.end method

.method public speak(Ljava/lang/String;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lnet/tatans/imeopensdk/ScreenReaderActor;->speak(Ljava/lang/String;II)V

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p3, "TatansImeSDK speak"

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->s2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$a;

    invoke-direct {p3, p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$c5;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
