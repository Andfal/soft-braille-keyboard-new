.class Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;
.super Lcom/nirenr/talkman/IScreenReaderInterface$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$n6;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    invoke-direct {p0}, Lcom/nirenr/talkman/IScreenReaderInterface$a;-><init>()V

    return-void
.end method


# virtual methods
.method public addClipboard(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->F(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->F(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addClipboard()Z

    return-void
.end method

.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public disabledTouch()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setInputMode(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->inputmethodShow(IIII)V

    :goto_0
    return-void
.end method

.method public enabledFeedback()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setGameMode(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->inputmethodHide()V

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    return-void
.end method

.method public hasVip()Z
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    return v0
.end method

.method public inputmethodHide()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    return-void
.end method

.method public inputmethodShow(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->e0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->e0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Rect;)Z

    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$n6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ttsSpeak(Ljava/lang/String;)V

    return-void
.end method
