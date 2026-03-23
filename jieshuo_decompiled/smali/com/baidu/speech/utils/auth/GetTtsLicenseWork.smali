.class public Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetTtsLicenseWork"


# instance fields
.field private appCode:Ljava/lang/String;

.field private authSN:Ljava/lang/String;

.field private licenseFilePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->appCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->licenseFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->authSN:Ljava/lang/String;

    return-void
.end method

.method private getEntity()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/speech/utils/Policy;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->appCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/speech/utils/Utility;->stringToMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getLicense_err_no"

    invoke-static {v2, v4}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/baidu/speech/utils/auth/KeyEnum;->CUID:Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v5}, Lcom/baidu/speech/utils/auth/KeyEnum;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/speech/utils/auth/KeyEnum;->SIGN:Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v1}, Lcom/baidu/speech/utils/auth/KeyEnum;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/speech/utils/auth/KeyEnum;->ID:Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v1}, Lcom/baidu/speech/utils/auth/KeyEnum;->getShortName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->appCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/speech/utils/auth/KeyEnum;->SERIAL_NUMBER:Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v1}, Lcom/baidu/speech/utils/auth/KeyEnum;->getShortName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->authSN:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/speech/utils/auth/KeyEnum;->APPNAME:Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v1}, Lcom/baidu/speech/utils/auth/KeyEnum;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/baidu/speech/utils/Utility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/speech/utils/auth/KeyEnum;->STA:Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v1}, Lcom/baidu/speech/utils/auth/KeyEnum;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/baidu/speech/utils/Utility;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/speech/utils/auth/KeyEnum;->GETLICENSE_ERRNO:Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v1}, Lcom/baidu/speech/utils/auth/KeyEnum;->getShortName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/speech/utils/auth/KeyEnum;->VERSION:Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v1}, Lcom/baidu/speech/utils/auth/KeyEnum;->getAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.4.4.106"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetTtsLicenseWork"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLicense params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 6

    sget-object v0, Lcom/baidu/speech/utils/auth/UrlEnum;->GETLICENSE_SERVER:Lcom/baidu/speech/utils/auth/UrlEnum;

    invoke-virtual {v0}, Lcom/baidu/speech/utils/auth/UrlEnum;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->mContext:Landroid/content/Context;

    const-string v2, "isRegister"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->mContext:Landroid/content/Context;

    const-string v4, "SN"

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->authSN:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "check?logid="

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "register?logid="

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isRegister:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  getlicense url:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "GetTtsLicenseWork"

    invoke-static {v1, v2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/speech/utils/auth/HttpClientUtil;

    invoke-direct {v1}, Lcom/baidu/speech/utils/auth/HttpClientUtil;-><init>()V

    new-instance v2, Lcom/baidu/speech/utils/auth/GetLicenseHandler;

    iget-object v3, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->licenseFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->authSN:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/speech/utils/auth/GetLicenseHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->setContext(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->getEntity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/baidu/speech/utils/auth/HttpClientUtil;->post(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;)V

    invoke-virtual {v2}, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
