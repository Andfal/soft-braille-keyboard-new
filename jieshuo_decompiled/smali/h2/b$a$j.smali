.class Lh2/b$a$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/SpeechRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/b$a;


# direct methods
.method constructor <init>(Lh2/b$a;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$j;->a:Lh2/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x1e240

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    iget-object v0, p0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v1, v0, Lh2/b$a;->b:Landroid/content/DialogInterface;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v1, v1, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->a(Lh2/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f07038d

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    sput-object p1, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object p1, p0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object p1, p1, Lh2/b$a;->c:Lh2/b;

    invoke-static {p1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Lh2/b$a$j$a;

    invoke-direct {v1, p0}, Lh2/b$a$j$a;-><init>(Lh2/b$a$j;)V

    const/16 v3, 0x14

    invoke-virtual {p1, v3, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lh2/b$a$j$b;

    invoke-direct {v0, p0}, Lh2/b$a$j$b;-><init>(Lh2/b$a$j;)V

    const-string v1, "auto"

    const-string v3, "zh"

    invoke-static {p1, v1, v3, v0}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :goto_0
    return v2
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
