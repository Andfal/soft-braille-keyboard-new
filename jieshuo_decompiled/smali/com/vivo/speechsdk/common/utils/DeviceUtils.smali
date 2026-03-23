.class public Lcom/vivo/speechsdk/common/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PROPERTY_OVER_SEA_FALSE:I = 0x0

.field private static final PROPERTY_OVER_SEA_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceUtils"

.field private static mOverSea:Z = false

.field private static mPropertyOverSea:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndroidVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "ro.product.country.region"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ro.product.customize.bbk"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.product.model"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x4000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceUtils"

    const-string v1, "getPackageInfo"

    invoke-static {v0, v1, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.product.model.bbk"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ro.product.device"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "ro.product.name"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "ro.vivo.product.model"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, ""

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "get"

    const/4 v4, 0x2

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "DeviceUtils"

    const-string v2, "Utils"

    invoke-static {v0, v2, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object v1
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.build.version.bbk"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ro.vivo.product.version"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "ro.build.netaccess.version"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "ro.build.software.version"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    const-string v0, "ro.build.display.id"

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public static isOversea()Z
    .locals 4

    sget-boolean v0, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->mOverSea:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->mPropertyOverSea:I

    const/4 v2, 0x0

    if-gez v0, :cond_2

    const-string v0, "ro.vivo.product.overseas"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/common/utils/SystemPropertiesUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "yes"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput v1, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->mPropertyOverSea:I

    goto :goto_0

    :cond_1
    sput v2, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->mPropertyOverSea:I

    :cond_2
    :goto_0
    sget v0, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->mPropertyOverSea:I

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static isVivo()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bbk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setOverSea(Z)V
    .locals 0

    sput-boolean p0, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->mOverSea:Z

    return-void
.end method
