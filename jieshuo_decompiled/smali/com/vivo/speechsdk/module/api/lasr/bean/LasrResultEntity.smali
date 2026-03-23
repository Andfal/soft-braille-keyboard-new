.class public Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bg:J

.field private ed:J

.field private lid:J

.field private onebest:Ljava/lang/String;

.field private speaker:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->onebest:Ljava/lang/String;

    iput-wide p2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->bg:J

    iput-wide p4, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->ed:J

    iput p6, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->speaker:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->onebest:Ljava/lang/String;

    iput-wide p2, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->bg:J

    iput-wide p4, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->ed:J

    iput p6, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->speaker:I

    iput-wide p7, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->lid:J

    return-void
.end method


# virtual methods
.method public getBg()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->bg:J

    return-wide v0
.end method

.method public getEd()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->ed:J

    return-wide v0
.end method

.method public getLid()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->lid:J

    return-wide v0
.end method

.method public getOnebest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->onebest:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeaker()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->speaker:I

    return v0
.end method

.method public setBg(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->bg:J

    return-void
.end method

.method public setEd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->ed:J

    return-void
.end method

.method public setLid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->lid:J

    return-void
.end method

.method public setOnebest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->onebest:Ljava/lang/String;

    return-void
.end method

.method public setSpeaker(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->speaker:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LasrResultEntity{onebest=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->onebest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->bg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->ed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->speaker:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vivo/speechsdk/module/api/lasr/bean/LasrResultEntity;->lid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
