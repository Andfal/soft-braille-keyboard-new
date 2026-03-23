.class public Lcom/vivo/speechsdk/module/api/tts/AudioInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vivo/speechsdk/module/api/tts/AudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FINISH:I = 0x3

.field public static final STATUS_FIRST:I = 0x0

.field public static final STATUS_LAST:I = 0x2

.field public static final STATUS_PROGRESS:I = 0x1

.field private static a:I

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/vivo/speechsdk/module/api/tts/AudioInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBeginPos:I

.field public mEncodeType:I

.field public mEndPos:I

.field public mFrame:[B

.field public mFrameLength:I

.field public mIsPreSynthesized:I

.field public mProgress:I

.field public mSlice:I

.field public mStatus:I

.field public mTotalFrameLength:I

.field public mTotalTextLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo$1;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/tts/AudioInfo$1;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    sput v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->a:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->c:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mSlice:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mBeginPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mIsPreSynthesized:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    return-void
.end method

.method public static obtion()Lcom/vivo/speechsdk/module/api/tts/AudioInfo;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->a:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->a:I

    sget-object v1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->b:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mSlice:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mBeginPos:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    const/4 v2, 0x1

    iput v2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mIsPreSynthesized:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    sget-object v1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->a:I

    add-int/2addr p0, v2

    sput p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->a:I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mSlice:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mBeginPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mIsPreSynthesized:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    return-void
.end method

.method public recycle()V
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->recycle(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioInfo{mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSlice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mSlice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBeginPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mBeginPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEndPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncodeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPreSynthesized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mIsPreSynthesized:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalFrameLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mSlice:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mBeginPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mIsPreSynthesized:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
