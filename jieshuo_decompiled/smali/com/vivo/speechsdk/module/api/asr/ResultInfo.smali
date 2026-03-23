.class public Lcom/vivo/speechsdk/module/api/asr/ResultInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CLOUD_LASR_CODE_FINISHED:I = 0x9

.field public static final CLOUD_LASR_CODE_REC:I = 0x0

.field public static final CLOUD_LASR_CODE_VAR:I = 0x8

.field public static final CLOUD_TIME_OUT:I = 0x2718

.field public static final CLOUD_VAD:I = 0x1

.field public static final FORM_UNKNOW:I = 0x0

.field public static final FROM_OFFLINE:I = 0x2

.field public static final FROM_ONLINE:I = 0x1

.field public static final FROM_SERVICE:I = 0x3

.field public static final RESULT_TYPE_ASR:I = 0x1

.field public static final RESULT_TYPE_LASR:I = 0x0

.field public static final RESULT_TYPE_NLU:I = 0x2

.field public static final RESULT_TYPE_TTS:I = 0x3

.field private static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vivo/speechsdk/module/api/asr/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/vivo/speechsdk/module/api/asr/ResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioInfo:Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

.field public mCode:I

.field public mFrom:I

.field public mIsLast:Z

.field public mResType:I

.field public mResultJson:Ljava/lang/String;

.field public mVadCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo$1;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo$1;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->a:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    sput v0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->d:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/asr/d;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    return-void
.end method

.method public static obtain()Lcom/vivo/speechsdk/module/api/asr/ResultInfo;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->b:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->b:I

    sget-object v1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->c:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_0

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    iput v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    iput v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->audioInfo:Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    sget-object v1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->b:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->b:I

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

.method public getAudioInfo()Lcom/vivo/speechsdk/module/api/tts/AudioInfo;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->audioInfo:Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    return v0
.end method

.method public getFrom()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    return v0
.end method

.method public getResType()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    return v0
.end method

.method public getResultJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    return-object v0
.end method

.method public getVadCode()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    return v0
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    return v0
.end method

.method public recycle()V
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->recycle(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V

    return-void
.end method

.method public setAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->audioInfo:Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    return-void
.end method

.method public setLast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    return-void
.end method

.method public setResType(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    return-void
.end method

.method public setResultJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    return-void
.end method

.method public setVadCode(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const-string v0, "var"

    const-string v1, "onebest"

    const-string v2, "text"

    iget-object v3, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    iget v4, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    if-eqz v4, :cond_0

    if-ne v4, v5, :cond_6

    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    if-ne v7, v6, :cond_2

    const-string v0, ""

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->hideSensitiveWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_2
    const-string v2, "data"

    if-ne v7, v5, :cond_3

    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "audio"

    const-string v5, "XXX"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget v6, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    if-eqz v6, :cond_5

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/StringUtils;->hideSensitiveWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultInfo{mResType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResultJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVadCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/module/api/asr/c;->a(Landroid/os/Parcel;Z)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
