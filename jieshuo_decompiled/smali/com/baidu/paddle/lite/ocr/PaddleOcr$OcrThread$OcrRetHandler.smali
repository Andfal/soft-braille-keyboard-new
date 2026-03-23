.class Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OcrRetHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;


# direct methods
.method private constructor <init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;Lcom/baidu/paddle/lite/ocr/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OcrRetHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lua"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-static {v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->a(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-static {v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->a(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Ljava/util/HashMap;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
