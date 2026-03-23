.class Lcom/nirenr/talkman/ai/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/g$b;->onResponse(Ly2/Call;Ly2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult;

.field final synthetic b:Lcom/nirenr/talkman/ai/g$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/g$b;Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/g$b$a;->b:Lcom/nirenr/talkman/ai/g$b;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/g$b$a;->a:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/g$b$a;->b:Lcom/nirenr/talkman/ai/g$b;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/g$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iget-object v1, p0, Lcom/nirenr/talkman/ai/g$b$a;->a:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method
