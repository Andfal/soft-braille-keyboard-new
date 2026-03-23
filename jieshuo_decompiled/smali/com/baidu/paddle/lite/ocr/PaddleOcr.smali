.class public Lcom/baidu/paddle/lite/ocr/PaddleOcr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;
    }
.end annotation


# instance fields
.field protected cpuPowerMode:Ljava/lang/String;

.field protected cpuThreadNum:I

.field private idx:I

.field protected inputColorFormat:Ljava/lang/String;

.field protected labelPath:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mOcrThread:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

.field protected mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

.field protected modelPath:Ljava/lang/String;

.field protected scoreThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "models/ch_PP-OCRv2"

    iput-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->modelPath:Ljava/lang/String;

    const-string v0, "labels/ppocr_keys_v1.txt"

    iput-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->labelPath:Ljava/lang/String;

    const/16 v0, 0x20

    iput v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->cpuThreadNum:I

    const-string v0, "LITE_POWER_HIGH"

    iput-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->cpuPowerMode:Ljava/lang/String;

    const-string v0, "BGR"

    iput-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->inputColorFormat:Ljava/lang/String;

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->scoreThreshold:F

    new-instance v0, Lcom/baidu/paddle/lite/ocr/Predictor;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/paddle/lite/ocr/Predictor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->idx:I

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr;Lcom/baidu/paddle/lite/ocr/d;)V

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mOcrThread:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static bridge synthetic a(Lcom/baidu/paddle/lite/ocr/PaddleOcr;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/baidu/paddle/lite/ocr/PaddleOcr;I)V
    .locals 0

    iput p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->idx:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/paddle/lite/ocr/Predictor;->releaseModel()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mOcrThread:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-virtual {v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->quit()V

    return-void
.end method

.method public iconImage2(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u56fe\u7247\u5df2\u56de\u6536"

    invoke-interface {p2, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {}, Lcom/baidu/paddle/lite/ocr/a;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    iget-object v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mOcrThread:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->iconModel(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-object v0
.end method

.method public ocrImage2(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u56fe\u7247\u5df2\u56de\u6536"

    invoke-interface {p2, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {}, Lcom/baidu/paddle/lite/ocr/a;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    iget-object v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mOcrThread:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->runModel(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-object v0
.end method

.method public ocrImage3(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start:2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lua"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->idx:I

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    invoke-virtual {v0}, Lcom/baidu/paddle/lite/ocr/Predictor;->isRunning()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "isRunning"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u56fe\u7247\u5df2\u56de\u6536"

    invoke-interface {p2, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-object v2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {}, Lcom/baidu/paddle/lite/ocr/a;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p1, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    new-instance v0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$1;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;Landroid/graphics/Bitmap;)V

    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_3
    const-string p1, "\u5f15\u64ce\u672a\u542f\u52a8"

    invoke-interface {p2, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-object v2
.end method

.method public onLoadModel()Z
    .locals 9

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    iget-object v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->modelPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->labelPath:Ljava/lang/String;

    const/4 v4, 0x1

    iget v5, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->cpuThreadNum:I

    iget-object v6, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->cpuPowerMode:Ljava/lang/String;

    const/16 v7, 0x780

    iget v8, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->scoreThreshold:F

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/paddle/lite/ocr/Predictor;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IF)Z

    move-result v0

    return v0
.end method
