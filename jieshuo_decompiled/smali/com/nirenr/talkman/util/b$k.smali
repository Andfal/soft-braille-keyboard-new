.class Lcom/nirenr/talkman/util/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/util/b$k;->a:[Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/nirenr/talkman/util/b$k;->a:[Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/nirenr/talkman/util/b$k;->a:[Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/nirenr/talkman/util/b$k;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/nirenr/talkman/util/b$k;->a:[Ljava/lang/String;

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
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/b;->o(Lcom/nirenr/talkman/util/b;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    const-string v1, "ocr gifmaker ret"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->b(Lcom/nirenr/talkman/util/b;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/util/b$k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    const-string v1, "ocr gifmaker text"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->e(Lcom/nirenr/talkman/util/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/util/b;->v(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/util/b;->m(Lcom/nirenr/talkman/util/b;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/b;->o(Lcom/nirenr/talkman/util/b;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$k;->b:Lcom/nirenr/talkman/util/b;

    const-string v1, "ocr gifmaker err"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
