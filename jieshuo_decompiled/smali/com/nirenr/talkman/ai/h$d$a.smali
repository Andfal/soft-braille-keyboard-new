.class Lcom/nirenr/talkman/ai/h$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h$d;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/h$d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/h$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$d$a;->a:Lcom/nirenr/talkman/ai/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$d$a;->a:Lcom/nirenr/talkman/ai/h$d;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/h$d;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/ai/h$d$a$a;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/ai/h$d$a$a;-><init>(Lcom/nirenr/talkman/ai/h$d$a;Lcom/nirenr/talkman/ai/OcrResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$d$a;->a:Lcom/nirenr/talkman/ai/h$d;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/h$d;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
