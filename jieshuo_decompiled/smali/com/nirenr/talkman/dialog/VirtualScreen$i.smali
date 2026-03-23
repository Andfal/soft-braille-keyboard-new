.class Lcom/nirenr/talkman/dialog/VirtualScreen$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen;->r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/n;

.field final synthetic b:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field final synthetic c:Lcom/nirenr/talkman/dialog/VirtualScreen;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen;Lh2/n;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->c:Lcom/nirenr/talkman/dialog/VirtualScreen;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->a:Lh2/n;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->b:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->c:Lcom/nirenr/talkman/dialog/VirtualScreen;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->a:Lh2/n;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/dialog/VirtualScreen;->f(Lcom/nirenr/talkman/dialog/VirtualScreen;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->a:Lh2/n;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return v0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->c:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->b:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget v2, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v3, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v4, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    add-int/2addr v4, v2

    iget v1, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    add-int/2addr v1, v3

    invoke-direct {p2, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/nirenr/talkman/dialog/VirtualScreen$i$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$i$a;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen$i;)V

    invoke-virtual {p1, p2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocr3(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    :cond_1
    return v0
.end method
