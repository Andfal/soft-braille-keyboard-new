.class public Lcom/vivo/speechsdk/module/api/tts/TtsResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3c0f95b2f19a8e1bL


# instance fields
.field private audio:[B

.field private audioLength:I

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private last:Z

.field public mDuration:I

.field public mProgress:I

.field private offset:I

.field private preSynthesis:Z

.field private sid:Ljava/lang/String;

.field private slice:I

.field private status:I

.field private total:I

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->errorMsg:Ljava/lang/String;

    iput p2, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->errorCode:I

    iput-object p3, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->sid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->audio:[B

    iput p2, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->audioLength:I

    return-void
.end method


# virtual methods
.method public getAudio()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->audio:[B

    return-object v0
.end method

.method public getAudioLength()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->audioLength:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->mDuration:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->offset:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->mProgress:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSlice()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->slice:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->status:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->total:I

    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->last:Z

    return v0
.end method

.method public isPreSynthesis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->preSynthesis:Z

    return v0
.end method

.method public setAudio([B)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->audio:[B

    return-void
.end method

.method public setAudioLength(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->audioLength:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->mDuration:I

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->errorCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setLast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->last:Z

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->offset:I

    return-void
.end method

.method public setPreSynthesis(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->preSynthesis:Z

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->mProgress:I

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->sid:Ljava/lang/String;

    return-void
.end method

.method public setSlice(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->slice:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->status:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->total:I

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->ver:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TtsResult{errorMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->errorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->sid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", preSynthesis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->preSynthesis:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->last:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->audio:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->audioLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->slice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
