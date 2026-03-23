.class Lh2/b$a$j$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a$j$b;->onTransResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/b$a$j$b;


# direct methods
.method constructor <init>(Lh2/b$a$j$b;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$j$b$a;->a:Lh2/b$a$j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lh2/b$a$j$b$a;->a:Lh2/b$a$j$b;

    iget-object v0, v0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    iget-object v0, v0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v1, v0, Lh2/b$a;->b:Landroid/content/DialogInterface;

    if-nez v1, :cond_0

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a$j$b$a;->a:Lh2/b$a$j$b;

    iget-object v1, v1, Lh2/b$a$j$b;->a:Lh2/b$a$j;

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
    iget-object v0, p0, Lh2/b$a$j$b$a;->a:Lh2/b$a$j$b;

    iget-object v0, v0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    iget-object v0, v0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, p1}, Lh2/b;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lh2/b$a$j$b$a;->a:Lh2/b$a$j$b;

    iget-object v0, v0, Lh2/b$a$j$b;->a:Lh2/b$a$j;

    iget-object v0, v0, Lh2/b$a$j;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, p1}, Lh2/b;->onError(Ljava/lang/String;)V

    return-void
.end method
