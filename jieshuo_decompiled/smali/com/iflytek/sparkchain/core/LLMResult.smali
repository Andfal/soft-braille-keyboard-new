.class public interface abstract Lcom/iflytek/sparkchain/core/LLMResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/LLMBaseOutput;


# virtual methods
.method public abstract getCompletionTokens()I
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getImage()[B
.end method

.method public abstract getPromptTokens()I
.end method

.method public abstract getRaw()Ljava/lang/String;
.end method

.method public abstract getRole()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTotalTokens()I
.end method
