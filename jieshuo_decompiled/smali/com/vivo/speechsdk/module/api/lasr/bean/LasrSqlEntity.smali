.class public Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FILE_MAX_SIZE_500M:J = 0x1f400000L

.field public static final TYPE_HTTP_FILE:I = 0x1

.field public static final TYPE_LOCAL_FILE:I = 0x0

.field private static final a:I = 0x500000


# instance fields
.field private audioId:Ljava/lang/String;

.field private audioLength:I

.field private audioName:Ljava/lang/String;

.field private audioType:Ljava/lang/String;

.field private blockSize:I

.field private fileLength:J

.field private id:I

.field private progress:I

.field private sids:Ljava/lang/StringBuffer;

.field private sliceIndex:I

.field private sliceNum:I

.field private slices:I

.field private taskId:Ljava/lang/String;

.field private timeStamp:Ljava/lang/String;

.field private type:I

.field private uri:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->slices:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->slices:I

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->id:I

    iput-object p2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->timeStamp:Ljava/lang/String;

    iput p3, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->type:I

    iput-object p4, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uri:Ljava/lang/String;

    iput-wide p5, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->fileLength:J

    iput-object p7, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioId:Ljava/lang/String;

    iput-object p8, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uuid:Ljava/lang/String;

    iput p9, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->blockSize:I

    iput p10, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceNum:I

    iput p11, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    iput-object p12, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->taskId:Ljava/lang/String;

    iput p13, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->progress:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->slices:I

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->type:I

    iput-object p2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uri:Ljava/lang/String;

    iput-wide p3, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->fileLength:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->slices:I

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->type:I

    iput-object p2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioType:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uri:Ljava/lang/String;

    iput-wide p4, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->fileLength:J

    iput-object p6, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioId:Ljava/lang/String;

    iput-object p7, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uuid:Ljava/lang/String;

    iput p8, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->blockSize:I

    iput p9, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceNum:I

    iput p10, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioLength:I

    return-void
.end method

.method public static calculateBlockSize(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x500000

    return p0
.end method

.method public static calculateSliceNum(JI)I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    int-to-long v2, p2

    div-long v4, p0, v2

    long-to-int p2, v4

    rem-long/2addr p0, v2

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAudioId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioLength()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioLength:I

    return v0
.end method

.method public getAudioName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->blockSize:I

    return v0
.end method

.method public getFileLength()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->fileLength:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->id:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->progress:I

    return v0
.end method

.method public getSids()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sids:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getSliceIndex()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    return v0
.end method

.method public getSliceNum()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceNum:I

    return v0
.end method

.method public getSlices()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->slices:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->type:I

    return v0
.end method

.method public getUploadOffset()I
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->blockSize:I

    iget v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    return v0
.end method

.method public getUploadProgress()I
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceNum:I

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalFile()Z
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUploadSuccess()Z
    .locals 4

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x64

    mul-int/lit8 v0, v0, 0x64

    iget v3, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceNum:I

    div-int/2addr v0, v3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAudioId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioId:Ljava/lang/String;

    return-void
.end method

.method public setAudioLength(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioLength:I

    return-void
.end method

.method public setAudioName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioName:Ljava/lang/String;

    return-void
.end method

.method public setAudioType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioType:Ljava/lang/String;

    return-void
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->blockSize:I

    return-void
.end method

.method public setFileLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->fileLength:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->id:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->progress:I

    return-void
.end method

.method public setSids(Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sids:Ljava/lang/StringBuffer;

    return-void
.end method

.method public setSliceIndex(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    return-void
.end method

.method public setSliceNum(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceNum:I

    return-void
.end method

.method public setSlices(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->slices:I

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->timeStamp:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->type:I

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LasrSqlEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->fileLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", audioId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", blockSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->blockSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sliceNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sliceIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sliceIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slices="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->slices:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->sids:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrSqlEntity;->audioLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
