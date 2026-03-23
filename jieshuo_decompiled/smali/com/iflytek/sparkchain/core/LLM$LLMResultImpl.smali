.class public Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/LLMResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/LLM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LLMResultImpl"
.end annotation


# instance fields
.field bytes:[B

.field completionTokens:I

.field content:Ljava/lang/String;

.field promptTokens:I

.field raw:Ljava/lang/String;

.field role:Ljava/lang/String;

.field sid:Ljava/lang/String;

.field status:I

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/LLM;

.field totalTokens:I


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/LLM;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->this$0:Lcom/iflytek/sparkchain/core/LLM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->sid:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->role:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->content:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->raw:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->status:I

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->completionTokens:I

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->promptTokens:I

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->totalTokens:I

    return-void
.end method


# virtual methods
.method public appendContent(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->content:Ljava/lang/String;

    return-void
.end method

.method public clear()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->sid:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->role:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->raw:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->status:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->completionTokens:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->promptTokens:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->totalTokens:I

    return-void
.end method

.method public getCompletionTokens()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->completionTokens:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()[B
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->bytes:[B

    return-object v0
.end method

.method public getPromptTokens()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->promptTokens:I

    return v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->status:I

    return v0
.end method

.method public getTotalTokens()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->totalTokens:I

    return v0
.end method

.method public setCompletionTokens(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->completionTokens:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->content:Ljava/lang/String;

    return-void
.end method

.method public setPromptTokens(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->promptTokens:I

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->raw:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->role:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->sid:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->status:I

    return-void
.end method

.method public setTotalTokens(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->totalTokens:I

    return-void
.end method
