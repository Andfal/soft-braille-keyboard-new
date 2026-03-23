.class public Lcom/nirenr/talkman/ai/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nirenr/talkman/ai/d$a;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/ai/d$a;-><init>([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/d;->b([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p0

    return-object p0
.end method

.method public static b([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;
    .locals 1

    new-instance v0, Lcom/nirenr/talkman/ai/d$b;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/ai/d$b;-><init>([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-static {v0}, Lcom/nirenr/talkman/util/a;->w(Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method
