.class public Lcom/vivo/speechsdk/common/utils/CustomOSUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_COLOROS_VERSION_NAME:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final KEY_EMUI_VERSION_NAME:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_FLYME_VERSION_NAME:Ljava/lang/String; = "ro.build.display.id"

.field private static final KEY_HARMONYOS_VERSION_NAME:Ljava/lang/String; = "hw_sc.build.platform.version"

.field private static final KEY_MAGICUI_VERSION:Ljava/lang/String; = "ro.build.version.magic"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final KEY_NUBIA_VERSION_CODE:Ljava/lang/String; = "ro.build.nubia.rom.code"

.field private static final KEY_NUBIA_VERSION_NAME:Ljava/lang/String; = "ro.build.nubia.rom.name"

.field private static final KEY_ONEPLUS_VERSION_NAME:Ljava/lang/String; = "ro.rom.version"

.field private static final KEY_VIVO_DISPLAY_VERSION:Ljava/lang/String; = "ro.vivo.os.build.display.version"

.field private static final KEY_VIVO_DISPLAY_VERSION_ID:Ljava/lang/String; = "ro.vivo.os.build.display.id"

.field private static final KEY_VIVO_ROMBASELINE_VERSION:Ljava/lang/String; = "ro.vivo.rombaseline.version"

.field private static final KEY_VIVO_VERSION:Ljava/lang/String; = "ro.vivo.os.version"

.field private static final KEY_VIVO_VERSION_NAME:Ljava/lang/String; = "ro.vivo.os.name"

.field private static final TAG:Ljava/lang/String; = "CustomOSUtils"

.field private static customOS:Ljava/lang/String; = ""

.field private static customOSVersion:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteSpaceAndToUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomOS()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->setCustomOSInfo(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomOSVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->setCustomOSInfo(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOSVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomOSVersionSimple()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOSVersion:Ljava/lang/String;

    sget-object v1, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getCustomOSVersion()Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOSVersion:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOSVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOSVersion:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private static getHarmonySystemPropertyValue()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.huawei.system.BuildEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getOsBrand"

    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomOSUtils"

    invoke-static {v2, v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPhoneSystem()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->setCustomOSInfo(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOSVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "get"

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomOSUtils"

    invoke-static {v1, v0, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isHarmonyOS()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.system.BuildEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getOsBrand"

    :try_start_1
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CustomOSUtils"

    invoke-static {v3, v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static isMagicUI()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static setCustomOSInfo(Ljava/lang/String;)V
    .locals 5

    const-string v0, "ro.build.version.magic"

    :try_start_0
    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->deleteSpaceAndToUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "HUAWEI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "REDMI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "NUBIA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_3
    const-string v1, "MEIZU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "HONOR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "VIVO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "OPPO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "ONEPLUS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "XIAOMI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "REALME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const-string v1, "ro.build.version.emui"

    const-string v2, "HarmonyOS"

    const-string v3, "EMUI"

    const-string v4, "hw_sc.build.platform.version"

    packed-switch p0, :pswitch_data_0

    :try_start_1
    const-string p0, "Android"

    goto/16 :goto_3

    :pswitch_0
    const-string p0, "ro.build.nubia.rom.name"

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    const-string p0, "ro.build.nubia.rom.code"

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOSVersion:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_1
    const-string p0, "Flyme"

    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    const-string p0, "ro.build.display.id"

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_2
    const-string p0, "HydrogenOS"

    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    const-string p0, "ro.rom.version"

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_3
    const-string p0, "OriginOS"

    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    const-string p0, "ro.vivo.rombaseline.version"

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_4
    const-string p0, "ColorOS"

    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    const-string p0, "ro.build.version.opporom"

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_5
    const-string p0, "MIUI"

    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    const-string p0, "ro.miui.ui.version.name"

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->isHarmonyOS()Z

    move-result p0

    if-eqz p0, :cond_2

    sput-object v2, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    const-string p0, ""

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "MagicUI"

    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    sput-object v3, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->isHarmonyOS()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOSVersion:Ljava/lang/String;

    sput-object v2, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    goto :goto_4

    :cond_4
    sput-object v3, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :goto_3
    sput-object p0, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->customOS:Ljava/lang/String;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomOSUtils"

    invoke-static {v1, v0, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7027944a -> :sswitch_9
        -0x65b21745 -> :sswitch_8
        -0x23e7db20 -> :sswitch_7
        0x251fa0 -> :sswitch_6
        0x2834ac -> :sswitch_5
        0x41bb44a -> :sswitch_4
        0x45d8cac -> :sswitch_3
        0x472cdb3 -> :sswitch_2
        0x4a3edcd -> :sswitch_1
        0x7fa995e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
