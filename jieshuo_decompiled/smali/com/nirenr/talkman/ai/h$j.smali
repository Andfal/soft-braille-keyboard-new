.class Lcom/nirenr/talkman/ai/h$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[B

.field final synthetic c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# direct methods
.method constructor <init>(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/ai/h$j;->a:I

    iput-object p2, p0, Lcom/nirenr/talkman/ai/h$j;->b:[B

    iput-object p3, p0, Lcom/nirenr/talkman/ai/h$j;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/nirenr/talkman/ai/h$j;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6587\u672c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$j;->b:[B

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$j;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-static {p1, v0}, Lcom/nirenr/talkman/ai/h;->w([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$j;->b:[B

    new-instance v1, Lcom/nirenr/talkman/ai/h$j$a;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/ai/h$j$a;-><init>(Lcom/nirenr/talkman/ai/h$j;Lcom/nirenr/talkman/ai/OcrResult;)V

    invoke-static {v0, v1}, Lcom/nirenr/talkman/ai/a;->b([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$j;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$j;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$j;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
