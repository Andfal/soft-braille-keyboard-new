.class Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/paddle/lite/ocr/PaddleOcr;->ocrImage3(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field ret:Lcom/nirenr/talkman/ai/OcrResult;

.field final synthetic this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

.field final synthetic val$finalImage:Landroid/graphics/Bitmap;

.field final synthetic val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# direct methods
.method constructor <init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    iput-object p2, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iput-object p3, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->val$finalImage:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p1, "mPredictor doInBackground: onLoadModel"

    const-string v0, "lua"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    invoke-virtual {p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->onLoadModel()Z

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->b(Lcom/baidu/paddle/lite/ocr/PaddleOcr;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    :goto_0
    const-string p1, "mPredictor doInBackground: runModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    iget-object v1, v1, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    iget-object v2, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->val$finalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/baidu/paddle/lite/ocr/Predictor;->runModel(Landroid/graphics/Bitmap;)Lcom/nirenr/talkman/ai/OcrResult;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->ret:Lcom/nirenr/talkman/ai/OcrResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "mPredictor doInBackground: done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->ret:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-virtual {v0}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "ok"

    :cond_0
    return-object p1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->val$finalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v0, "\u8bc6\u522b\u51fa\u9519"

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;->ret:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method
