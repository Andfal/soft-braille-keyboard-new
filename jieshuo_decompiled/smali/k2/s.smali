.class public Lk2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:[Ljava/lang/String;

.field private c:Lcom/nirenr/talkman/ai/OcrResult;

.field private d:[Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk2/s;->e:I

    iput-object p1, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "OcrClickRunnable"

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lk2/s;->b:[Ljava/lang/String;

    iget-object p1, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocrScreen(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 2

    iput-object p1, p0, Lk2/s;->c:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getStringList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk2/s;->d:[Ljava/lang/String;

    iget-object v0, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "OcrClickRunnable"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lk2/s;->run()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07069c

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method

.method public run()V
    .locals 5

    iget v0, p0, Lk2/s;->e:I

    iget-object v1, p0, Lk2/s;->b:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070202

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void

    :cond_0
    aget-object v0, v1, v0

    iget-object v1, p0, Lk2/s;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OcrClickRunnable"

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x7f07026f

    if-lez v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lk2/s;->c:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-virtual {v3}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v3

    aget-object v3, v3, v1

    iget v3, v3, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget-object v4, p0, Lk2/s;->c:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-virtual {v4}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v4

    aget-object v1, v4, v1

    iget v1, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    invoke-virtual {v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lk2/s;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk2/s;->e:I

    iget-object v0, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lk2/s;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
