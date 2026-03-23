.class Lcom/nirenr/talkman/dialog/VirtualScreen$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen$i;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/VirtualScreen$i;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen$i;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i$a;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i$a;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$i;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->a:Lh2/n;

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$i$a;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$i;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/VirtualScreen$i;->a:Lh2/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
