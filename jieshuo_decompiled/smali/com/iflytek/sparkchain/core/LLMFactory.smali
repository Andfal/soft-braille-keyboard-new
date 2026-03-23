.class public Lcom/iflytek/sparkchain/core/LLMFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static imageGeneration()Lcom/iflytek/sparkchain/core/LLM;
    .locals 2

    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-static {v0, v0, v1}, Lcom/iflytek/sparkchain/core/LLMFactory;->imageGeneration(IILcom/iflytek/sparkchain/core/LLMConfig;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object v0

    return-object v0
.end method

.method public static imageGeneration(II)Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/iflytek/sparkchain/core/LLMFactory;->imageGeneration(IILcom/iflytek/sparkchain/core/LLMConfig;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object p0

    return-object p0
.end method

.method public static imageGeneration(IILcom/iflytek/sparkchain/core/LLMConfig;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/LLMConfig;->builder()Lcom/iflytek/sparkchain/core/LLMConfig;

    move-result-object p2

    :cond_0
    const-string v0, "width"

    invoke-virtual {p2, v0, p0}, Lcom/iflytek/sparkchain/core/LLMConfig;->param(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/LLMConfig;

    const-string p0, "height"

    invoke-virtual {p2, p0, p1}, Lcom/iflytek/sparkchain/core/LLMConfig;->param(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/LLMConfig;

    new-instance p0, Lcom/iflytek/sparkchain/core/LLM;

    sget-object p1, Lcom/iflytek/sparkchain/core/d;->c:Lcom/iflytek/sparkchain/core/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/LLM;-><init>(Lcom/iflytek/sparkchain/core/d;Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V

    return-object p0
.end method

.method public static imageGeneration(Lcom/iflytek/sparkchain/core/LLMConfig;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    const/16 v0, 0x200

    invoke-static {v0, v0, p0}, Lcom/iflytek/sparkchain/core/LLMFactory;->imageGeneration(IILcom/iflytek/sparkchain/core/LLMConfig;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object p0

    return-object p0
.end method

.method public static imageUnderstanding()Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/iflytek/sparkchain/core/LLMFactory;->imageUnderstanding(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object v0

    return-object v0
.end method

.method public static imageUnderstanding(Lcom/iflytek/sparkchain/core/LLMConfig;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/core/LLMFactory;->imageUnderstanding(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object p0

    return-object p0
.end method

.method public static imageUnderstanding(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/LLM;

    sget-object v1, Lcom/iflytek/sparkchain/core/d;->d:Lcom/iflytek/sparkchain/core/d;

    invoke-direct {v0, v1, p0, p1}, Lcom/iflytek/sparkchain/core/LLM;-><init>(Lcom/iflytek/sparkchain/core/d;Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V

    return-object v0
.end method

.method public static imageUnderstanding(Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/iflytek/sparkchain/core/LLMFactory;->imageUnderstanding(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object p0

    return-object p0
.end method

.method public static textGeneration()Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/iflytek/sparkchain/core/LLMFactory;->textGeneration(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object v0

    return-object v0
.end method

.method public static textGeneration(Lcom/iflytek/sparkchain/core/LLMConfig;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/core/LLMFactory;->textGeneration(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object p0

    return-object p0
.end method

.method public static textGeneration(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/LLM;

    sget-object v1, Lcom/iflytek/sparkchain/core/d;->b:Lcom/iflytek/sparkchain/core/d;

    invoke-direct {v0, v1, p0, p1}, Lcom/iflytek/sparkchain/core/LLM;-><init>(Lcom/iflytek/sparkchain/core/d;Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)V

    return-object v0
.end method

.method public static textGeneration(Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/iflytek/sparkchain/core/LLMFactory;->textGeneration(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object p0

    return-object p0
.end method
