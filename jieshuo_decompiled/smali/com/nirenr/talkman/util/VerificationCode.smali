.class public Lcom/nirenr/talkman/util/VerificationCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)Lcom/nirenr/talkman/util/HttpUtil$d;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string v2, "nirenr"

    const-string v3, "fe1a10e4576c9db0b40e26b9ffa38ea5"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v4, Lcom/nirenr/talkman/util/VerificationCode$a;

    invoke-direct {v4, p1}, Lcom/nirenr/talkman/util/VerificationCode$a;-><init>(Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)V

    const p1, 0xe9b7a

    invoke-static {v2, v3, p1, v1, v4}, Lcom/nirenr/talkman/ai/c;->a(Ljava/lang/String;Ljava/lang/String;I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static c(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)V
    .locals 0

    new-instance p1, Lcom/nirenr/talkman/util/VerificationCode$b;

    invoke-direct {p1, p2}, Lcom/nirenr/talkman/util/VerificationCode$b;-><init>(Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)V

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method
