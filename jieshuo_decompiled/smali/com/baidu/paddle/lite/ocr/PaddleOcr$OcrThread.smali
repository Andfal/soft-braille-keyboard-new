.class Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paddle/lite/ocr/PaddleOcr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OcrThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;,
        Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;
    }
.end annotation


# instance fields
.field private idx:I

.field private mOCRListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/nirenr/talkman/ai/OcrResult$OCRListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOcrHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

.field private mOcrRetHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;

.field protected mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

.field final synthetic this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;


# direct methods
.method private constructor <init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Lcom/baidu/paddle/lite/ocr/Predictor;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/baidu/paddle/lite/ocr/Predictor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    new-instance p1, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;Lcom/baidu/paddle/lite/ocr/c;)V

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrRetHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOCRListener:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->idx:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr;Lcom/baidu/paddle/lite/ocr/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOCRListener:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;)Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrRetHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;

    return-object p0
.end method


# virtual methods
.method public iconModel(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->idx:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOCRListener:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrRetHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;

    new-instance v1, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$1;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;Landroid/os/Message;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public quit()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mPredictor:Lcom/baidu/paddle/lite/ocr/Predictor;

    iget-object v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    invoke-static {v1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->a(Lcom/baidu/paddle/lite/ocr/PaddleOcr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->this$0:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    iget-object v3, v2, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->modelPath:Ljava/lang/String;

    iget-object v4, v2, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->labelPath:Ljava/lang/String;

    const/4 v5, 0x1

    iget v6, v2, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->cpuThreadNum:I

    iget-object v7, v2, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->cpuPowerMode:Ljava/lang/String;

    const/16 v8, 0x780

    iget v9, v2, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->scoreThreshold:F

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/paddle/lite/ocr/Predictor;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IF)Z

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "lua"

    const-string v1, "OcrThread: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;Lcom/baidu/paddle/lite/ocr/b;)V

    iput-object v0, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public runModel(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->idx:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOCRListener:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrHandler;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;->mOcrRetHandler:Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$OcrRetHandler;

    new-instance v1, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread$2;-><init>(Lcom/baidu/paddle/lite/ocr/PaddleOcr$OcrThread;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;Landroid/os/Message;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
