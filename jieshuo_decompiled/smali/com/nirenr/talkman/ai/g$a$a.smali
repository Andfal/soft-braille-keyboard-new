.class Lcom/nirenr/talkman/ai/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/g$a;->onFailure(Ly2/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/nirenr/talkman/ai/g$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/g$a;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/g$a$a;->b:Lcom/nirenr/talkman/ai/g$a;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/g$a$a;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/g$a$a;->b:Lcom/nirenr/talkman/ai/g$a;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/g$a;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iget-object v1, p0, Lcom/nirenr/talkman/ai/g$a$a;->a:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
