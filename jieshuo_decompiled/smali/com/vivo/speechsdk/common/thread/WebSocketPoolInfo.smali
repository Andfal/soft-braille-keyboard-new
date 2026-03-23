.class public Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo$a;

    invoke-direct {v0}, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo$a;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->d:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->g:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCommunicationNum()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->c:I

    return v0
.end method

.method public getConnKeepTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->g:J

    return-wide v0
.end method

.method public getConnNum()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->a:I

    return v0
.end method

.method public getIdleConnNum()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->b:I

    return v0
.end method

.method public getLongestIdleDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->d:J

    return-wide v0
.end method

.method public getMaxConnNum()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->f:I

    return v0
.end method

.method public getUnhealthyConnNum()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->e:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->d:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->g:J

    return-void
.end method

.method public setCommunicationNum(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->c:I

    return-void
.end method

.method public setConnKeepTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->g:J

    return-void
.end method

.method public setConnNum(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->a:I

    return-void
.end method

.method public setIdleConnNum(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->b:I

    return-void
.end method

.method public setInfo(IIIJIIJ)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->a:I

    iput p2, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->b:I

    iput p3, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->c:I

    iput-wide p4, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->d:J

    iput p6, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->e:I

    iput p7, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->f:I

    iput-wide p8, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->g:J

    return-void
.end method

.method public setLongestIdleDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->d:J

    return-void
.end method

.method public setMaxConnNum(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->f:I

    return-void
.end method

.method public setUnhealthyConnNum(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->e:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
