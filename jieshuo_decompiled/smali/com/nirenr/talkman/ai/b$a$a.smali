.class Lcom/nirenr/talkman/ai/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/b$a;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/b$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/b$a$a;->a:Lcom/nirenr/talkman/ai/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 9

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    const-wide/16 v3, 0x3e8

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v5, p0, Lcom/nirenr/talkman/ai/b$a$a;->a:Lcom/nirenr/talkman/ai/b$a;

    iget-object v5, v5, Lcom/nirenr/talkman/ai/b$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/ai/b$a$a$a;

    invoke-direct {v6, p0, v2}, Lcom/nirenr/talkman/ai/b$a$a$a;-><init>(Lcom/nirenr/talkman/ai/b$a$a;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    int-to-long v7, v1

    mul-long v7, v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/ai/b$a$a;->a:Lcom/nirenr/talkman/ai/b$a;

    iget-object p1, p1, Lcom/nirenr/talkman/ai/b$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    array-length v0, v0

    int-to-long v0, v0

    mul-long v0, v0, v3

    const v2, 0x7f070556

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/ai/b$a$a;->a:Lcom/nirenr/talkman/ai/b$a;

    iget-object p1, p1, Lcom/nirenr/talkman/ai/b$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070554

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method
