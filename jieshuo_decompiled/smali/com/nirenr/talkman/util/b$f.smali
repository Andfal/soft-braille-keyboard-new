.class Lcom/nirenr/talkman/util/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->A(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$f;->a:Lcom/nirenr/talkman/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$f;->a:Lcom/nirenr/talkman/util/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$f;->a:Lcom/nirenr/talkman/util/b;

    const v0, 0x7f070390

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/util/b;->Q(I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$f;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$f;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "onError"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$f;->a:Lcom/nirenr/talkman/util/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return-void
.end method
