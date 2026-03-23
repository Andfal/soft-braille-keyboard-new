.class Lcom/nirenr/talkman/util/b$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic c:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    iput-object p2, p0, Lcom/nirenr/talkman/util/b$r;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object p3, p0, Lcom/nirenr/talkman/util/b$r;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v1}, Lcom/nirenr/talkman/util/b;->k(Lcom/nirenr/talkman/util/b;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/util/b;->p(Lcom/nirenr/talkman/util/b;[Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v4}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    iget-object v5, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v5}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAutoSpeakBlacklist()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v4}, Lcom/nirenr/talkman/util/b;->k(Lcom/nirenr/talkman/util/b;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/nirenr/talkman/util/b$r;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/util/b;->p(Lcom/nirenr/talkman/util/b;[Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3, p2}, Lk2/g0;->b(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe6666666666666L    # 0.7

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/b;->o(Lcom/nirenr/talkman/util/b;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    const-string v1, "ocr gifmaker ret"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->b(Lcom/nirenr/talkman/util/b;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/util/b$r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    const-string v1, "ocr gifmaker text"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->e(Lcom/nirenr/talkman/util/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addAutoSpeakCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lcom/nirenr/talkman/util/b$r;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v2, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncAppendSpeak(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(ILjava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/util/b;->m(Lcom/nirenr/talkman/util/b;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/b;->o(Lcom/nirenr/talkman/util/b;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$r;->c:Lcom/nirenr/talkman/util/b;

    const-string v1, "ocr gifmaker err"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
