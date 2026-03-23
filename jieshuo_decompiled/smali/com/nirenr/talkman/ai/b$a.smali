.class Lcom/nirenr/talkman/ai/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/b;->b(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/b$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput p2, p0, Lcom/nirenr/talkman/ai/b$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/ai/b$a$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/ai/b$a$a;-><init>(Lcom/nirenr/talkman/ai/b$a;)V

    const/16 v1, 0x7db

    invoke-static {p1, v1, v0}, Lcom/nirenr/talkman/ai/b;->a([BILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/nirenr/talkman/ai/b$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070554

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    :goto_0
    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/ai/b$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070554

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method
