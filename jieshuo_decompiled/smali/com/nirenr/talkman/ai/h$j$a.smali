.class Lcom/nirenr/talkman/ai/h$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h$j;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult;

.field final synthetic b:Lcom/nirenr/talkman/ai/h$j;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/h$j;Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$j$a;->b:Lcom/nirenr/talkman/ai/h$j;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/h$j$a;->a:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$j$a;->b:Lcom/nirenr/talkman/ai/h$j;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/h$j;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$j$a;->b:Lcom/nirenr/talkman/ai/h$j;

    iget-object p1, p1, Lcom/nirenr/talkman/ai/h$j;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$j$a;->a:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method
