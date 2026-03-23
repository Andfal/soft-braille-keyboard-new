.class public final Lcom/iltgcl/echovoice/client/EchoVoiceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EchoVoiceUtils"

.field private static old_voice_names:[Ljava/lang/String;

.field private static old_voice_values:[Ljava/lang/String;

.field private static voice_names:[Ljava/lang/String;

.field private static voice_values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "\u5c0f\u71d5\u2014\u5973\u9752\u3001\u4e2d\u82f1\u3001\u666e\u901a\u8bdd"

    const-string v1, "\u6653\u5cf0\u2014\u7537\u9752\u3001\u4e2d\u82f1\u3001\u666e\u901a\u8bdd"

    const-string v2, "\u6653\u7f8e\u2014\u5973\u9752\u3001\u4e2d\u3001\u7ca4\u8bed"

    const-string v3, "\u5927\u9f99\u2014\u7537\u9752\u3001\u4e2d\u3001\u7ca4\u8bed"

    const-string v4, "\u6653\u84c9\u2014\u5973\u9752\u3001\u4e2d\u3001\u56db\u5ddd\u8bdd"

    const-string v5, "\u6653\u7433\u2014\u5973\u9752\u3001\u4e2d\u3001\u53f0\u6e7e\u666e\u901a\u8bdd"

    const-string v6, "\u6960\u6960\u2014\u5973\u7ae5\u3001\u4e2d\u3001\u666e\u901a\u8bdd"

    const-string v7, "\u8bb8\u5c0f\u5b9d\u2014\u5973\u7ae5\u3001\u4e2d\u3001\u666e\u901a\u8bdd"

    const-string v8, "\u6653\u5029\u2014\u5973\u9752\u3001\u4e2d\u3001\u4e1c\u5317\u8bdd"

    const-string v9, "\u5c0f\u5f3a\u2014\u7537\u9752\u3001\u4e2d\u3001\u6e56\u5357\u8bdd"

    const-string v10, "\u5c0f\u5764\u2014\u7537\u9752\u3001\u4e2d\u3001\u6cb3\u5357\u8bdd"

    const-string v11, "\u5510\u8001\u9e2d\u2014\u5361\u901a\u3001\u4e2d\u3001\u666e\u901a\u8bdd"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->old_voice_names:[Ljava/lang/String;

    const-string v1, "\u5c0f\u71d5\u2014\u5973\u9752"

    const-string v2, "\u6960\u6960\u2014\u5973\u7ae5"

    const-string v3, "\u8bb8\u4e45\u2014\u7537\u9752"

    const-string v4, "\u8bb8\u591a\u2014\u7537\u9752"

    const-string v5, "\u6653\u840d\u2014\u5973\u9752"

    const-string v6, "\u5510\u8001\u9e2d\u2014\u5361\u901a"

    const-string v7, "\u8bb8\u5c0f\u5b9d\u2014\u5973\u7ae5"

    const-string v8, "\u5c0f\u96ea\u2014\u5973\u9752"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->voice_names:[Ljava/lang/String;

    const-string v1, "3"

    const-string v2, "4"

    const-string v3, "15"

    const-string v4, "56"

    const-string v5, "14"

    const-string v6, "22"

    const-string v7, "7"

    const-string v8, "55"

    const-string v9, "11"

    const-string v10, "24"

    const-string v11, "25"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->old_voice_values:[Ljava/lang/String;

    const-string v1, "3"

    const-string v2, "7"

    const-string v3, "51"

    const-string v4, "52"

    const-string v5, "53"

    const-string v6, "54"

    const-string v7, "55"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->voice_values:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(III)I
    .locals 0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static createAIDLEchoVoice(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)Lcom/iltgcl/echovoice/client/IEchoVoice;
    .locals 2

    invoke-static {p0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->isEchoVoiceInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;

    new-instance v1, Lcom/iltgcl/echovoice/client/AIDLEchoVoice;

    invoke-direct {v1, p0, p1, p2}, Lcom/iltgcl/echovoice/client/AIDLEchoVoice;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)V

    invoke-direct {v0, v1}, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;-><init>(Lcom/iltgcl/echovoice/client/IEchoVoice;)V

    return-object v0

    :cond_0
    const-string p0, "EchoVoiceUtils"

    const-string p1, "Make sure echovoice apk installed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createTTSEchoVoice(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)Lcom/iltgcl/echovoice/client/IEchoVoice;
    .locals 2

    invoke-static {p0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->isEchoVoiceInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;

    new-instance v1, Lcom/iltgcl/echovoice/client/TTSEchoVoice;

    invoke-direct {v1, p0, p1, p2}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)V

    invoke-direct {v0, v1}, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;-><init>(Lcom/iltgcl/echovoice/client/IEchoVoice;)V

    return-object v0

    :cond_0
    const-string p0, "EchoVoiceUtils"

    const-string p1, "Make sure echovoice apk installed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getEchoVoicePackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.iltgcl.echovoice"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getEchoVoiceVersionCode(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->getEchoVoicePackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return p0
.end method

.method public static getSigningCertificate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public static getVoiceNameEntries(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->getEchoVoiceVersionCode(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const v0, 0x2dc6ce

    if-ge p0, v0, :cond_0

    sget-object p0, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->old_voice_names:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->voice_names:[Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getVoiceNameValues(Landroid/content/Context;)[I
    .locals 3

    invoke-static {p0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->getEchoVoiceVersionCode(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const v0, 0x2dc6ce

    if-ge p0, v0, :cond_0

    sget-object p0, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->old_voice_values:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->voice_values:[Ljava/lang/String;

    :goto_0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static isEchoVoiceInstalled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->getEchoVoicePackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
