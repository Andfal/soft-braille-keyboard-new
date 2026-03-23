.class Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OcrHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;


# direct methods
.method private constructor <init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;Lcom/baidu/paddle/lite/ocr/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OcrHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lua"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    iget-object v0, v0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/paddle/lite/ocr/Predictor;->runModel(Landroid/graphics/Bitmap;)Lcom/nirenr/talkman/ai/OcrResult;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-static {p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->c(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    iget-object v0, v0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/paddle/lite/ocr/Predictor;->icon(Landroid/graphics/Bitmap;)Lcom/nirenr/talkman/ai/OcrResult;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;->this$1:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-static {p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->c(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
