.class public Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmbeddedSynthesizerEngine"

.field private static mNewDataListener:Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EmbeddedSynthesizerEngine"

    :try_start_0
    const-string v1, "before load gnustl_shared"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gnustl_shared"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v1, "so file gnustl_shared load fail"

    invoke-static {v0, v1}, Lv0/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v1, "before load BDSpeechDecoder_V1"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BDSpeechDecoder_V1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    const-string v1, "so file BDSpeechDecoder_V1 load fail"

    invoke-static {v0, v1}, Lv0/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    const-string v1, "before load bd_etts"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bd_etts"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    const-string v1, "so file bd_etts load fail"

    invoke-static {v0, v1}, Lv0/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bdTTSCheckDomainFile([B)I
.end method

.method public static native bdTTSDomainDataInit([BJ)I
.end method

.method public static native bdTTSDomainDataUninit(J)I
.end method

.method public static native bdTTSEngineInit(Landroid/content/Context;[B[B[B[J)I
.end method

.method public static native bdTTSEngineUninit(J)I
.end method

.method public static native bdTTSGetAESKEY()Ljava/lang/String;
.end method

.method public static native bdTTSGetDatParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native bdTTSGetDataFileParam([BI[B)I
.end method

.method public static native bdTTSGetDomainSampleRate([B)J
.end method

.method public static synchronized native bdTTSGetEngineParam()Ljava/lang/String;
.end method

.method public static native bdTTSGetLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native bdTTSGetParam(JI)J
.end method

.method public static native bdTTSGetSpeechSampleRate([B)J
.end method

.method public static native bdTTSGetTestAuthorize()I
.end method

.method public static native bdTTSReInitData(Landroid/content/Context;[B[BJ)I
.end method

.method public static native bdTTSSetParam(JIJ)I
.end method

.method public static native bdTTSSetParamFloat(JIF)I
.end method

.method public static native bdTTSSetText(J[BI)I
.end method

.method public static synchronized native bdTTSSynthesis(J[BI)I
.end method

.method public static native bdTTSVerifyDataFile([B)I
.end method

.method public static synchronized native bdTTSVerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method public static native getEngineMinVersion()I
.end method

.method public static native loadEnglishEngine([B[BJ)I
.end method

.method public static newAudioDataCallback([BI)I
    .locals 1

    sget-object v0, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->mNewDataListener:Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;->onNewData([BI)I

    move-result p0

    return p0
.end method

.method public static setOnNewDataListener(Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;)V
    .locals 0

    sput-object p0, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->mNewDataListener:Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;

    return-void
.end method
