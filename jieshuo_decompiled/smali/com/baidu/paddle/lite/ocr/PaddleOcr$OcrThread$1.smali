.class Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->iconModel(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

.field final synthetic val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    iput-object p2, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iput-object p3, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-static {v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->b(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-static {v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->b(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;->val$msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
