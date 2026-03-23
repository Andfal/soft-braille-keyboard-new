.class Lcom/nirenr/talkman/ai/h$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h$c;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/h$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/h$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$c$a;->a:Lcom/nirenr/talkman/ai/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ocr: ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lua"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$c$a;->a:Lcom/nirenr/talkman/ai/h$c;

    iget-object p1, p1, Lcom/nirenr/talkman/ai/h$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v0, "null"

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/ai/h$c$a;->a:Lcom/nirenr/talkman/ai/h$c;

    iget-object v1, v1, Lcom/nirenr/talkman/ai/h$c;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v1}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$c$a;->a:Lcom/nirenr/talkman/ai/h$c;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/h$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$c$a;->a:Lcom/nirenr/talkman/ai/h$c;

    iget-object p1, p1, Lcom/nirenr/talkman/ai/h$c;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {p1}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/ai/h$c$a;->a:Lcom/nirenr/talkman/ai/h$c;

    iget-object v1, v1, Lcom/nirenr/talkman/ai/h$c;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v1}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070697

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/nirenr/talkman/ai/h$c$a$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ai/h$c$a$a;-><init>(Lcom/nirenr/talkman/ai/h$c$a;)V

    const-string v2, "zh"

    invoke-static {v0, v2, p1, v1}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$c$a;->a:Lcom/nirenr/talkman/ai/h$c;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/h$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
