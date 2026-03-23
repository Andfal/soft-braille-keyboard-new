.class Lcom/nirenr/talkman/ai/h$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h$c$a;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/h$c$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/h$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$c$a$a;->a:Lcom/nirenr/talkman/ai/h$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$c$a$a;->a:Lcom/nirenr/talkman/ai/h$c$a;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/h$c$a;->a:Lcom/nirenr/talkman/ai/h$c;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/h$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    new-instance v1, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-direct {v1, p1}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method
