.class Lcom/nirenr/talkman/dialog/VirtualScreen$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field final synthetic b:Lcom/nirenr/talkman/dialog/VirtualScreen;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$j;->b:Lcom/nirenr/talkman/dialog/VirtualScreen;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$j;->a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$j;->a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget v2, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v3, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v1, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(II)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$j;->b:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->c(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lh2/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->h(Z)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/dialog/VirtualScreen$j$a;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$j$a;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen$j;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$j;->b:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->b(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lh2/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->g(Z)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoShowVirtualScreen()V

    :cond_1
    return-void
.end method
