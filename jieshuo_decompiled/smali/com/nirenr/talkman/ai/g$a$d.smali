.class Lcom/nirenr/talkman/ai/g$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/g$a;->onResponse(Ly2/Call;Ly2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/g$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/g$a$d;->a:Lcom/nirenr/talkman/ai/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/ai/g$a$d;->a:Lcom/nirenr/talkman/ai/g$a;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/g$a;->a(Lcom/nirenr/talkman/ai/g$a;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/ai/g$a$d;->a:Lcom/nirenr/talkman/ai/g$a;

    iget-object v1, v0, Lcom/nirenr/talkman/ai/g$a;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    new-instance v2, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/g$a;->a(Lcom/nirenr/talkman/ai/g$a;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/g$a$d;->a:Lcom/nirenr/talkman/ai/g$a;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/g$a;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
