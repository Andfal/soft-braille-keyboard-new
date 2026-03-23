.class public Lcom/iflytek/msc/MSC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MSC_DATA_STATE_CONTINUE:I = 0x2

.field public static final MSC_DATA_STATE_LAST:I = 0x4

.field public static final MSC_DATA_STATE_START:I = 0x1

.field public static final STATUS_ERR:I = -0x1

.field public static final STATUS_HASRESULT:I = 0x0

.field public static final STATUS_NORESULT:I = 0x2

.field public static final STATUS_RESULTOVER:I = 0x5

.field public static final TYPE_MAYTIMEOUT:I = 0x186a0

.field public static final TYPE_NETSPEED:I = 0x4

.field public static final TYPE_SID:I = 0x1

.field private static mLoaded:Z

.field private static mLogined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "msc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DebugLog(Z)I
.end method

.method public static native QHCRDataWrite([C[B[BII)I
.end method

.method public static native QHCRFini()I
.end method

.method public static native QHCRGetResult([C[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QHCRInit([B)I
.end method

.method public static native QHCRLogEvent([C[B[B)I
.end method

.method public static native QHCRSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QHCRSessionEnd([C[B)I
.end method

.method public static native QISEAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QISEFini()I
.end method

.method public static native QISEGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISEGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISEInit([B)I
.end method

.method public static final native QISESessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QISESessionEnd([C[B)I
.end method

.method public static native QISETextPut([C[B[B)I
.end method

.method public static native QISRAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QISRFini()I
.end method

.method public static native QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISRGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISRGrammarActivate([C[B[B)I
.end method

.method public static native QISRInit([B)I
.end method

.method public static native QISRLogEvent([C[B[B)I
.end method

.method public static native QISRRegisterNotify([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static final native QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QISRSessionEnd([C[B)I
.end method

.method public static native QISRSetParam([C[B[B)I
.end method

.method public static native QISRUploadData([C[B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISVAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QISVFini()I
.end method

.method public static native QISVGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISVInit([B)I
.end method

.method public static native QISVSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QISVSessionEnd([C[B)I
.end method

.method public static native QMSPDownload([B[BLjava/lang/Object;)I
.end method

.method public static native QMSPDownloadData([BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QMSPGetParam([BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QMSPLogOut()I
.end method

.method public static native QMSPLogin([B[B[B)I
.end method

.method public static native QMSPRegisterNotify(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native QMSPSearch([B[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QMSPSetParam([B[B)I
.end method

.method public static native QMSPUploadData([B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QTTSAudioGet([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QTTSAudioInfo([C)[C
.end method

.method public static native QTTSFini()I
.end method

.method public static native QTTSGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QTTSInit([B)I
.end method

.method public static final native QTTSSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QTTSSessionEnd([C[B)I
.end method

.method public static native QTTSTextPut([C[B)I
.end method

.method public static native UMSPLogin([B[B[BLjava/lang/Object;)I
.end method

.method public static login([BZ)I
    .locals 1

    sget-boolean v0, Lcom/iflytek/msc/MSC;->mLogined:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/iflytek/msc/MSC;->DebugLog(Z)I

    invoke-static {v0, v0, p0}, Lcom/iflytek/msc/MSC;->QMSPLogin([B[B[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lcom/iflytek/msc/MSC;->DebugLog(Z)I

    invoke-static {v0, v0, p0}, Lcom/iflytek/msc/MSC;->QMSPLogin([B[B[B)I

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p1, 0x1

    sput-boolean p1, Lcom/iflytek/msc/MSC;->mLogined:Z

    :cond_1
    :goto_1
    return p0
.end method

.method public static logout()I
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/msc/MSC;->mLogined:Z

    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    move-result v0

    return v0
.end method
