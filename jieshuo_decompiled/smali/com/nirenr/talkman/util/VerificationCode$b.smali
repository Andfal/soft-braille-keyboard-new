.class Lcom/nirenr/talkman/util/VerificationCode$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/VerificationCode;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/VerificationCode$b;->a:Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44340000    # 720.0f

    div-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/nirenr/talkman/util/VerificationCode;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/VerificationCode$b;->a:Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/VerificationCode;->b(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/VerificationCode$b;->a:Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;->onError(Ljava/lang/String;)V

    return-void
.end method
