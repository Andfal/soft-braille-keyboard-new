.class Lcom/nirenr/talkman/ai/h$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h$b;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/nirenr/talkman/ai/h$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/h$b;[B)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$b$b;->b:Lcom/nirenr/talkman/ai/h$b;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/h$b$b;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$b$b;->b:Lcom/nirenr/talkman/ai/h$b;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/h$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$b$b;->b:Lcom/nirenr/talkman/ai/h$b;

    iget-object p1, p1, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {p1}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseImageToText()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "\u7b80\u5355\u63cf\u8ff0\u56fe\u7247\uff0c\u4e0d\u8bc6\u522b\u6587\u5b57"

    sput-object p1, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$b$b;->b:Lcom/nirenr/talkman/ai/h$b;

    iget-object p1, p1, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$b$b;->a:[B

    new-instance v1, Lcom/nirenr/talkman/ai/h$b$b$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ai/h$b$b$a;-><init>(Lcom/nirenr/talkman/ai/h$b$b;)V

    const/16 v2, 0x14

    invoke-static {v2, v0, v1}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/ai/h;->e(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lcom/nirenr/talkman/ai/OcrResult;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/ai/h$b$b;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method
