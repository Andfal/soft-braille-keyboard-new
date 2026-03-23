.class Lh2/b$a$j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a$j;->onEnd(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/b$a$j;


# direct methods
.method constructor <init>(Lh2/b$a$j;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    iget-object v0, v0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v1, v0, Lh2/b$a;->b:Landroid/content/DialogInterface;

    if-nez v1, :cond_0

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    iget-object v1, v1, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v1, v1, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    iget-object v0, v0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f07038d

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    sput-object p1, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object p1, p0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    iget-object p1, p1, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object p1, p1, Lh2/b$a;->c:Lh2/b;

    invoke-static {p1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    iget-object v0, v0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Lh2/b$a$j$b$a;

    invoke-direct {v1, p0}, Lh2/b$a$j$b$a;-><init>(Lh2/b$a$j$b;)V

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-void
.end method
