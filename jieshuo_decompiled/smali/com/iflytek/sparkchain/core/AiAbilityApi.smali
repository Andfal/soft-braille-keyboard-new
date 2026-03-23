.class public interface abstract Lcom/iflytek/sparkchain/core/AiAbilityApi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract end(Lcom/iflytek/sparkchain/core/AiHandle;)I
.end method

.method public abstract engineInit(Ljava/lang/String;)I
.end method

.method public abstract engineInit(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
.end method

.method public abstract engineUnInit(Ljava/lang/String;)I
.end method

.method public abstract loadData(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
.end method

.method public abstract oneShot(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;Lcom/iflytek/sparkchain/core/AiRequest;Ljava/lang/Object;)I
.end method

.method public abstract oneShot(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;Ljava/lang/Object;)I
.end method

.method public abstract oneShotAsync(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
.end method

.method public abstract oneShotSync(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiOutput;
.end method

.method public abstract preProcess(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
.end method

.method public abstract read(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;)I
.end method

.method public abstract readSync(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;)Lcom/iflytek/sparkchain/core/AiOutput;
.end method

.method public abstract record(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
.end method

.method public abstract specifyDataSet(Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method public abstract start(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
.end method

.method public abstract start(Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
.end method

.method public abstract unLoadData(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract write(Lcom/iflytek/sparkchain/core/AiRequest;Lcom/iflytek/sparkchain/core/AiHandle;)I
.end method
