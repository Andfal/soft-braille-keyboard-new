.class public Lcom/nirenr/talkman/ai/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "aiqq"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "file"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/nirenr/talkman/ai/a$a;

    invoke-direct {p1, p2}, Lcom/nirenr/talkman/ai/a$a;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    const-string p2, "http://8.130.94.216:6751/img_process_normal"

    invoke-static {p2, p0, p1}, Lcom/nirenr/talkman/util/HttpUtil;->l(Ljava/lang/String;Ljava/util/HashMap;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/nirenr/talkman/ai/a;->a(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p0

    return-object p0
.end method
