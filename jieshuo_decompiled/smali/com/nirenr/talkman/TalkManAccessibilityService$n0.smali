.class Lcom/nirenr/talkman/TalkManAccessibilityService$n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->showVirtualScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070390

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/nirenr/talkman/dialog/VirtualScreen;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Lcom/nirenr/talkman/dialog/VirtualScreen;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->s()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f0707d9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07069c

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method
