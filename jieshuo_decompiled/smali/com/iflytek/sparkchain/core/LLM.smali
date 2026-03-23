.class public Lcom/iflytek/sparkchain/core/LLM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;,
        Lcom/iflytek/sparkchain/core/LLM$LLMErrorImpl;,
        Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;,
        Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;,
        Lcom/iflytek/sparkchain/core/LLM$LLMBaseOutputImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SparkChain"

.field static sessionId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private cbs:Lcom/iflytek/sparkchain/core/LLMCallbacks;

.field private contextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private memory:Lcom/iflytek/sparkchain/core/Memory;

.field private modelType:Lcom/iflytek/sparkchain/core/d;

.field private name:Ljava/lang/String;

.field private params:Lcom/iflytek/sparkchain/core/LLMConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/iflytek/sparkchain/core/LLM;->sessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/iflytek/sparkchain/core/d;->b:Lcom/iflytek/sparkchain/core/d;

    invoke-static {}, Lcom/iflytek/sparkchain/core/LLMConfig;->builder()Lcom/iflytek/sparkchain/core/LLMConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/sparkchain/core/LLM;-><init>(Lcom/iflytek/sparkchain/core/d;Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/core/LLMConfig;)V
    .locals 2

    sget-object v0, Lcom/iflytek/sparkchain/core/d;->b:Lcom/iflytek/sparkchain/core/d;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/iflytek/sparkchain/core/LLM;-><init>(Lcom/iflytek/sparkchain/core/d;Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/d;->b:Lcom/iflytek/sparkchain/core/d;

    invoke-direct {p0, v0, p1, p2}, Lcom/iflytek/sparkchain/core/LLM;-><init>(Lcom/iflytek/sparkchain/core/d;Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/core/Memory;)V
    .locals 2

    sget-object v0, Lcom/iflytek/sparkchain/core/d;->b:Lcom/iflytek/sparkchain/core/d;

    invoke-static {}, Lcom/iflytek/sparkchain/core/LLMConfig;->builder()Lcom/iflytek/sparkchain/core/LLMConfig;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/iflytek/sparkchain/core/LLM;-><init>(Lcom/iflytek/sparkchain/core/d;Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/core/d;Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LLM"

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM;->contextMap:Ljava/util/HashMap;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/LLMConfig;->builder()Lcom/iflytek/sparkchain/core/LLMConfig;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/iflytek/sparkchain/core/LLM;->params:Lcom/iflytek/sparkchain/core/LLMConfig;

    iput-object p3, p0, Lcom/iflytek/sparkchain/core/LLM;->memory:Lcom/iflytek/sparkchain/core/Memory;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/d;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/LLM;->params:Lcom/iflytek/sparkchain/core/LLMConfig;

    iget-object p3, p0, Lcom/iflytek/sparkchain/core/LLM;->memory:Lcom/iflytek/sparkchain/core/Memory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/LLM;->llmCreate(ILcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM;->index:I

    return-void
.end method


# virtual methods
.method public addSystemPrompt(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/LLM;->llmAddSystemPrompt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public arun(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/LLM;->arun(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public arun(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 3

    const-string v0, "SparkChain"

    if-nez p1, :cond_0

    const-string p1, "question is null object"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4845

    return p1

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain;->getInst()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/core/SparkChain;->getInitCode()I

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "SparkChain not init"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v0, Lcom/iflytek/sparkchain/core/LLM;->sessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/LLM;->contextMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/LLM;->llmARun(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public arun(Ljava/lang/String;[B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/LLM;->arun(Ljava/lang/String;[BLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public arun(Ljava/lang/String;[BLjava/lang/Object;)I
    .locals 3

    const-string v0, "SparkChain"

    if-nez p1, :cond_0

    const-string p1, "question is null object"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4845

    return p1

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain;->getInst()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/core/SparkChain;->getInitCode()I

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "SparkChain not init"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v0, Lcom/iflytek/sparkchain/core/LLM;->sessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/LLM;->contextMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/LLM;->llmARunImage(Ljava/lang/String;[BI)I

    move-result p1

    return p1
.end method

.method public clearHistory()V
    .locals 0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/LLM;->llmClearHistory()V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/LLM;->llmDestroy()I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM;->params:Lcom/iflytek/sparkchain/core/LLMConfig;

    return-object v0
.end method

.method native llmARun(Ljava/lang/String;I)I
.end method

.method native llmARunImage(Ljava/lang/String;[BI)I
.end method

.method native llmAddSystemPrompt(Ljava/lang/String;)I
.end method

.method native llmClearHistory()V
.end method

.method native llmCreate(ILcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)I
.end method

.method native llmDestroy()I
.end method

.method public llmErrorCallback(Lcom/iflytek/sparkchain/core/LLM$LLMErrorImpl;I)V
    .locals 3

    const-string v0, "SparkChain"

    const-string v1, "Java llmErrorCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM;->cbs:Lcom/iflytek/sparkchain/core/LLMCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/LLM;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/sparkchain/core/LLMCallbacks;->onLLMError(Lcom/iflytek/sparkchain/core/LLMError;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/LLM;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public llmEventCallback(Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;I)V
    .locals 2

    const-string v0, "SparkChain"

    const-string v1, "Java llmEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM;->cbs:Lcom/iflytek/sparkchain/core/LLMCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/LLM;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/iflytek/sparkchain/core/LLMCallbacks;->onLLMEvent(Lcom/iflytek/sparkchain/core/LLMEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public llmResultCallback(Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;I)V
    .locals 3

    const-string v0, "SparkChain"

    const-string v1, "Java llmResultCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM;->cbs:Lcom/iflytek/sparkchain/core/LLMCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/LLM;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/sparkchain/core/LLMCallbacks;->onLLMResult(Lcom/iflytek/sparkchain/core/LLMResult;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/LLM$LLMResultImpl;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/LLM;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method native llmRun(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;
.end method

.method native llmRunImage(Ljava/lang/String;[BI)Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;
.end method

.method native llmStop()I
.end method

.method public registerLLMCallbacks(Lcom/iflytek/sparkchain/core/LLMCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM;->cbs:Lcom/iflytek/sparkchain/core/LLMCallbacks;

    return-void
.end method

.method public run(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMOutput;
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/LLM;->run(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/LLMOutput;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/LLMOutput;
    .locals 2

    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain;->getInst()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/SparkChain;->getInitCode()I

    move-result v0

    const-string v1, "SparkChain"

    if-nez p1, :cond_0

    const-string p1, "question is null object"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;

    invoke-direct {p2, p0}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;-><init>(Lcom/iflytek/sparkchain/core/LLM;)V

    const/16 v0, 0x4845

    :goto_0
    invoke-virtual {p2, v0}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;->setErrCode(I)V

    invoke-virtual {p2, p1}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;->setErrMsg(Ljava/lang/String;)V

    return-object p2

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "SparkChain not init"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;

    invoke-direct {p2, p0}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;-><init>(Lcom/iflytek/sparkchain/core/LLM;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/LLM;->llmRun(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/LLMOutput;
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/LLM;->run(Ljava/lang/String;[BI)Lcom/iflytek/sparkchain/core/LLMOutput;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/lang/String;[BI)Lcom/iflytek/sparkchain/core/LLMOutput;
    .locals 2

    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain;->getInst()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/SparkChain;->getInitCode()I

    move-result v0

    const-string v1, "SparkChain"

    if-nez p1, :cond_0

    const-string p1, "question is null object"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;

    invoke-direct {p2, p0}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;-><init>(Lcom/iflytek/sparkchain/core/LLM;)V

    const/16 p3, 0x4845

    invoke-virtual {p2, p3}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;->setErrCode(I)V

    :goto_0
    invoke-virtual {p2, p1}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;->setErrMsg(Ljava/lang/String;)V

    return-object p2

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "SparkChain not init"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;

    invoke-direct {p2, p0}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;-><init>(Lcom/iflytek/sparkchain/core/LLM;)V

    invoke-virtual {p2, v0}, Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;->setErrCode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/LLM;->llmRunImage(Ljava/lang/String;[BI)Lcom/iflytek/sparkchain/core/LLM$LLMOutputImpl;

    move-result-object p1

    return-object p1
.end method

.method public stop()I
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/LLM;->llmStop()I

    move-result v0

    return v0
.end method
