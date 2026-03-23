.class Lcom/nirenr/talkman/dialog/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/d;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/dialog/d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d$f;->b:Lcom/nirenr/talkman/dialog/d;

    iput p2, p0, Lcom/nirenr/talkman/dialog/d$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$f;->b:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d$f;->b:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$f;->b:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->d(Lcom/nirenr/talkman/dialog/d;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/dialog/d$f;->a:I

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d$f;->b:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/d;->d(Lcom/nirenr/talkman/dialog/d;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/dialog/d$f;->a:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$f;->b:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d$f;->b:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/d;->d(Lcom/nirenr/talkman/dialog/d;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/dialog/d$f;->a:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d$f;->b:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_1
    :goto_0
    return-void
.end method
