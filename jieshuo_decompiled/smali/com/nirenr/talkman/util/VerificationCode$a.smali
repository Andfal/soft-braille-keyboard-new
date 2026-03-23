.class Lcom/nirenr/talkman/util/VerificationCode$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/VerificationCode;->b(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)Lcom/nirenr/talkman/util/HttpUtil$d;
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

    iput-object p1, p0, Lcom/nirenr/talkman/util/VerificationCode$a;->a:Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/VerificationCode$a;->a:Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;->onDone(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/VerificationCode$a;->a:Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;->onError(Ljava/lang/String;)V

    return-void
.end method
