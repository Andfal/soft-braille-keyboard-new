.class public final Lcom/baidu/speech/utils/cuid/util/DeviceId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;,
        Lcom/baidu/speech/utils/cuid/util/DeviceId$TargetApiSupport;,
        Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;
    }
.end annotation


# static fields
.field private static final ACTION_GLAXY_CUID:Ljava/lang/String; = "com.baidu.intent.action.GALAXY"

.field private static final AES_KEY:Ljava/lang/String;

.field private static final CONFIG_WRITE_V1_STORAGE:Z = false

.field private static final DEBUG:Z = false

.field private static final DEFAULT_TM_DEVICEID:Ljava/lang/String; = ""

.field private static final EXT_DIR:Ljava/lang/String; = "backups/.SystemConfig"

.field private static final EXT_FILE:Ljava/lang/String; = ".cuid"

.field private static final EXT_FILE_V2:Ljava/lang/String; = ".cuid2"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "com.baidu.deviceid"

.field private static final KEY_DEVICE_ID_V2:Ljava/lang/String; = "com.baidu.deviceid.v2"

.field private static final KEY_FLAG:Ljava/lang/String; = "bd_setting_i"

.field private static final META_KEY_GALAXY_SF:Ljava/lang/String; = "galaxy_sf"

.field private static final META_KEY_GLAXY_DATA:Ljava/lang/String; = "galaxy_data"

.field private static final OLD_EXT_DIR:Ljava/lang/String; = "baidu"

.field private static final RSA_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final SDK_ANDROID_M:I = 0x17

.field private static final SELF_CUID_FILE:Ljava/lang/String; = "libcuid.so"

.field private static final STORAGE_SDCARD_V1:I = 0x4

.field private static final STORAGE_SDCARD_V2:I = 0x8

.field private static final STORAGE_SELF_FILE:I = 0x10

.field private static final STORAGE_SYSTEM_SETTING_V1:I = 0x1

.field private static final STORAGE_SYSTEM_SETTING_V2:I = 0x2

.field private static final S_IRGRP:I = 0x20

.field private static final S_IROTH:I = 0x4

.field private static final S_IRUSR:I = 0x100

.field private static final S_IRWXG:I = 0x38

.field private static final S_IRWXO:I = 0x7

.field private static final S_IRWXU:I = 0x1c0

.field private static final S_IWGRP:I = 0x10

.field private static final S_IWOTH:I = 0x2

.field private static final S_IWUSR:I = 0x80

.field private static final S_IXGRP:I = 0x8

.field private static final S_IXOTH:I = 0x1

.field private static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "DeviceId"

.field private static sCachedCuidInfo:Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo; = null

.field private static final sDEncoded:Ljava/lang/String; = "ZGV2aWNlaWQ="

.field private static sDataCuidInfoShable:Z = true

.field private static final sIEncoded:Ljava/lang/String; = "aW1laQ=="

.field private static final sVEncoded:Ljava/lang/String; = "dmVy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPublicKey:Ljava/security/PublicKey;

.field private mSaveMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/baidu/speech/utils/cuid/security/Base64;->decode([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/security/Base64;->decode([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->AES_KEY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->initPublicKey()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/speech/utils/cuid/util/DeviceId;)Z
    .locals 0

    invoke-direct {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->hasWriteSettingsPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/baidu/speech/utils/cuid/util/DeviceId;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getSystemSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/baidu/speech/utils/cuid/util/DeviceId;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->tryPutSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/baidu/speech/utils/cuid/util/DeviceId;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->checkSelfPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->setExternalV2DeviceId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/baidu/speech/utils/cuid/util/DeviceId;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 0

    invoke-direct {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getCuidInfoFromExternalV2()Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/baidu/speech/utils/cuid/util/DeviceId;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getDefaultFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/baidu/speech/utils/cuid/util/DeviceId;Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getExternalV1DeviceId(Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getBase64DecodeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/baidu/speech/utils/cuid/util/DeviceId;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->encryptCUIDInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/baidu/speech/utils/cuid/util/DeviceId;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->writeToCuidFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->decryptCUIDInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/baidu/speech/utils/cuid/util/DeviceId;Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->fixCUIDInfoByIE(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)Z

    move-result p0

    return p0
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument b ( byte array ) is null! "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkSelfPermission(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private collectBuddyInfos(Landroid/content/Intent;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "galaxy_data"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/speech/utils/cuid/security/Base64;->decode([B)[B

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;-><init>(Lcom/baidu/speech/utils/cuid/util/DeviceId$1;)V

    const-string v8, "priority"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->priority:I

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, v6, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    iput-boolean v9, v6, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->isSelf:Z

    :cond_3
    if-eqz p2, :cond_6

    const-string v8, "galaxy_sf"

    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v1, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v8, "sigs"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v10, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_4

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v3}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->formatAndroidSigArray([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v10, v3}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->isSigsEqual([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/speech/utils/cuid/security/Base64;->decode([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mPublicKey:Ljava/security/PublicKey;

    invoke-static {v3, v4}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->decryptByPublicKey([BLjava/security/PublicKey;)[B

    move-result-object v3

    invoke-static {v5}, Lcom/baidu/speech/utils/cuid/security/SHA1Util;->sha1([B)[B

    move-result-object v4

    if-eqz v3, :cond_5

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    iput-boolean v9, v6, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->sigMatched:Z

    :cond_6
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lcom/baidu/speech/utils/cuid/util/DeviceId$1;

    invoke-direct {p1, p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$1;-><init>(Lcom/baidu/speech/utils/cuid/util/DeviceId;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static decryptByPublicKey([BLjava/security/PublicKey;)[B
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static decryptCUIDInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/speech/utils/cuid/util/DeviceId;->AES_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/security/Base64;->decode([B)[B

    move-result-object p0

    invoke-static {v1, v1, p0}, Lcom/baidu/speech/utils/cuid/security/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static encryptCUIDInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->AES_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v0, p0}, Lcom/baidu/speech/utils/cuid/security/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/baidu/speech/utils/cuid/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private fixCUIDInfoByIE(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->isIENormal()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "O"

    :goto_0
    iput-object v0, p1, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->flag:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->isIENull()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private formatAndroidSigArray([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/speech/utils/cuid/security/SHA1Util;->sha1([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static getBase64DecodeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/security/Base64;->decode([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getOrCreateCUIDInfo(Landroid/content/Context;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->getFinalCUID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCUIDInfo()Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.intent.action.GALAXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->collectBuddyInfos(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    const-string v4, "DeviceId"

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;

    iget-boolean v0, v0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->sigMatched:Z

    if-nez v0, :cond_3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    const-string v7, "galaxy config err, In the release version of the signature should be matched"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    const-string v6, "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "libcuid.so"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    invoke-static {v3}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->decryptCUIDInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->createFromJson(Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v8

    :goto_3
    if-nez v3, :cond_8

    iget v6, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->collectBuddyInfos(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "files"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetal error:: app files dir name is unexpectedly :: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;

    iget-boolean v4, v1, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->isSelf:Z

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v1, v1, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v6, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v4}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->decryptCUIDInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->createFromJson(Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_8
    if-nez v3, :cond_9

    const-string v0, "com.baidu.deviceid.v2"

    invoke-direct {p0, v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getSystemSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->decryptCUIDInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->createFromJson(Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object v3

    :cond_9
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v3, :cond_a

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    invoke-direct {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getCuidInfoFromExternalV2()Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object v3

    :cond_a
    if-nez v3, :cond_b

    iget v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    invoke-direct {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getCUidInfoFromSystemSettingV1()Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object v3

    :cond_b
    const-string v1, ""

    if-nez v3, :cond_c

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    invoke-direct {p0, v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getDefaultFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getExternalV1DeviceId(Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object v3

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    move-object v0, v8

    :goto_5
    if-nez v3, :cond_f

    iget v3, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mSaveMask:I

    if-nez v5, :cond_d

    invoke-direct {p0, v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getDefaultFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    new-instance v3, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    invoke-direct {v3, v8}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;-><init>(Lcom/baidu/speech/utils/cuid/util/DeviceId$1;)V

    iget-object v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_e

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.baidu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/baidu/speech/utils/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->deviceId:Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->flag:Ljava/lang/String;

    :cond_f
    invoke-direct {p0, v3}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->fixCUIDInfoByIE(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)Z

    invoke-direct {p0, v3}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->writeJobThread(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)V

    return-object v3
.end method

.method private getCUidInfoFromSystemSettingV1()Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 2

    const-string v0, "com.baidu.deviceid"

    invoke-direct {p0, v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getSystemSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bd_setting_i"

    invoke-direct {p0, v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getSystemSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->access$1900(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object v0

    return-object v0
.end method

.method private getCuidInfoFromExternalV2()Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/baidu/speech/utils/cuid/util/DeviceId;->AES_KEY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/security/Base64;->decode([B)[B

    move-result-object v0

    invoke-static {v2, v2, v0}, Lcom/baidu/speech/utils/cuid/security/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->createFromJson(Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "0"

    return-object p1
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getOrCreateCUIDInfo(Landroid/content/Context;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method private getExternalV1DeviceId(Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 3

    const-string p1, ""

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "baidu/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/baidu/speech/utils/cuid/util/DeviceId;->AES_KEY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/security/Base64;->decode([B)[B

    move-result-object v1

    invoke-static {v2, v2, v1}, Lcom/baidu/speech/utils/cuid/security/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :try_start_1
    aget-object p1, v0, v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :cond_2
    move-object v1, p1

    :catch_1
    :goto_2
    invoke-static {p1, v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->access$1900(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object p1

    return-object p1
.end method

.method private static getFileContent(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x2000

    :try_start_1
    new-array p0, p0, [C

    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    throw p0
.end method

.method private static getOrCreateCUIDInfo(Landroid/content/Context;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 2

    sget-object v0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sCachedCuidInfo:Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sCachedCuidInfo:Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v1, Lcom/baidu/speech/utils/cuid/util/DeviceId;

    invoke-direct {v1, p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;-><init>(Landroid/content/Context;)V

    invoke-direct {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getCUIDInfo()Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object p0

    sput-object p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sCachedCuidInfo:Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sCachedCuidInfo:Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    return-object p0
.end method

.method private getSystemSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getWriteRunnable(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/baidu/speech/utils/cuid/util/DeviceId$2;

    invoke-direct {v0, p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId$2;-><init>(Lcom/baidu/speech/utils/cuid/util/DeviceId;Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)V

    return-object v0
.end method

.method private static handleThrowable(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private hasWriteSettingsPermission()Z
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initPublicKey()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/baidu/speech/utils/cuid/util/CuidCertStore;->getCertBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mPublicKey:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v0

    :catch_3
    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_3
    return-void
.end method

.method private isSigsEqual([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p2

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v0
.end method

.method public static setCuidDataShable(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libcuid.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sCachedCuidInfo:Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->tryToModifyChmodForSelfFile(Landroid/content/Context;Z)Z

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sDataCuidInfoShable:Z

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    sput-boolean p1, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sDataCuidInfoShable:Z

    return-void
.end method

.method private static setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    const-string v1, "backups/.SystemConfig"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string v1, ".cuid"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance p0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sget-object p1, Lcom/baidu/speech/utils/cuid/util/DeviceId;->AES_KEY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, p1, v0}, Lcom/baidu/speech/utils/cuid/security/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lcom/baidu/speech/utils/cuid/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static setExternalV2DeviceId(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".cuid2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private tryPutSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private static tryToModifyChmodForSelfFile(Landroid/content/Context;Z)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libcuid.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0x1b4

    goto :goto_0

    :cond_1
    const/16 p0, 0x1b0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$TargetApiSupport;->doChmodSafely(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized writeJobThread(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->getWriteRunnable(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private writeToCuidFile(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "libcuid.so"

    sget-boolean v1, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sDataCuidInfoShable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    :goto_2
    if-nez v1, :cond_2

    sget-boolean p1, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sDataCuidInfoShable:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1b4

    :goto_3
    invoke-static {p1, v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$TargetApiSupport;->doChmodSafely(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_2
    sget-boolean p1, Lcom/baidu/speech/utils/cuid/util/DeviceId;->sDataCuidInfoShable:Z

    if-nez p1, :cond_3

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1b0

    goto :goto_3

    :cond_3
    return v2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return v3

    :goto_5
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    throw p1
.end method

.method private static writeToFile(Ljava/io/File;[B)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_4
    move-exception p0

    :goto_1
    :try_start_5
    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->handleThrowable(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw p0
.end method
