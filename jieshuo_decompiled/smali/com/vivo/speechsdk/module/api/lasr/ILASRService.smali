.class public interface abstract Lcom/vivo/speechsdk/module/api/lasr/ILASRService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract action(ILandroid/os/Bundle;)V
.end method

.method public abstract cancelUploadFile()V
.end method

.method public abstract createTaskWithAudioId(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract init(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/lasr/listener/LASRServiceListener;)Lcom/vivo/speechsdk/module/api/lasr/ILASRService;
.end method

.method public abstract isUploadFile()Z
.end method

.method public abstract queryTaskProcess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryTaskResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uploadAudioFile(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract uploadResume()Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;
.end method
