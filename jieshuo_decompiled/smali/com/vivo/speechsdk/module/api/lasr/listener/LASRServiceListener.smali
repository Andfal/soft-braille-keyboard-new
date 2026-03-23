.class public interface abstract Lcom/vivo/speechsdk/module/api/lasr/listener/LASRServiceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onInitFailed(ILjava/lang/String;)V
.end method

.method public abstract onInitSuccess()V
.end method

.method public abstract onTaskCreate(Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onTaskProcess(Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract onTaskResult(Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;Ljava/util/List;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;",
            "Ljava/util/List<",
            "Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onUploadFileProcess(Ljava/lang/String;I)V
.end method

.method public abstract onUploadFileResult(Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method
