.class Lcom/nirenr/talkman/util/b$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;J)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    iput-wide p2, p0, Lcom/nirenr/talkman/util/b$t;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/b;->l(Lcom/nirenr/talkman/util/b;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    const-string v2, "ocr"

    invoke-virtual {v0, v2, p1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->g(Lcom/nirenr/talkman/util/b;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->f(Lcom/nirenr/talkman/util/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v3}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nirenr/talkman/util/b;->n(Lcom/nirenr/talkman/util/b;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->d(Lcom/nirenr/talkman/util/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v2}, Lcom/nirenr/talkman/util/b;->a(Lcom/nirenr/talkman/util/b;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v2}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const-string v3, "AutoOcr"

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    iget v5, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v6, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v6}, Lcom/nirenr/talkman/util/b;->j(Lcom/nirenr/talkman/util/b;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    div-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget-object v6, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v6}, Lcom/nirenr/talkman/util/b;->j(Lcom/nirenr/talkman/util/b;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x3

    if-le v5, v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->h(Lcom/nirenr/talkman/util/b;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->h(Lcom/nirenr/talkman/util/b;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    :try_start_1
    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->e(Lcom/nirenr/talkman/util/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lk2/g0;->b(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double v4, v0, v2

    if-gez v4, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/util/b;->v(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/util/b;->m(Lcom/nirenr/talkman/util/b;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/util/b$t$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/b$t$a;-><init>(Lcom/nirenr/talkman/util/b$t;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/nirenr/talkman/util/b$t;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    const-string v1, "ocr"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "\u8bf7\u91cd\u8bd5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->c(Lcom/nirenr/talkman/util/b;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/b;->l(Lcom/nirenr/talkman/util/b;I)V

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->f(Lcom/nirenr/talkman/util/b;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/b;->n(Lcom/nirenr/talkman/util/b;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->d(Lcom/nirenr/talkman/util/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->a(Lcom/nirenr/talkman/util/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->c(Lcom/nirenr/talkman/util/b;)I

    move-result p1

    const/4 v0, 0x7

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/util/b;->M(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u5c4f\u5e55\u5185\u5bb9\u51fa\u9519\uff0c\u5df2\u9000\u51fa\u5b57\u5e55\u6717\u8bfb"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/util/b$t$b;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/b$t$b;-><init>(Lcom/nirenr/talkman/util/b$t;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/nirenr/talkman/util/b$t;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
