.class public Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/speech/utils/auth/IMResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/utils/auth/OfflineAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfflineResult"
.end annotation


# static fields
.field private static final CODE_TEMP_LICENSE_MIN:I = 0x2710

.field private static final CODE_VERIFY_OK_MIN:I = 0x0

.field private static final CUID_UNMATCH:I = -0x4

.field private static final INVALID_LICENSE:I = -0x8

.field private static final OFFICIAL_LICENSE_EXPIRED:I = -0x5

.field private static final PACKAGE_NAME_UNMATCH:I = -0x2

.field private static final PLATFORM_UNMATCH:I = -0x7

.field private static final SIGN_OR_CODE_UNMATCH:I = -0x3

.field private static final TEMP_LICENSE_EXPIRED:I = -0xa

.field private static final WILL_EXPIRED_AFTER_A_MONTH:I = -0x6


# instance fields
.field private context:Landroid/content/Context;

.field private mAppId:Ljava/lang/String;

.field private mAuthSN:Ljava/lang/String;

.field private mDownloadLicenseResult:I

.field private mError:I

.field private mLicenseFilePath:Ljava/lang/String;

.field private mVerifyResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    iput v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mDownloadLicenseResult:I

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthSN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mAuthSN:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadLicenseResult()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mDownloadLicenseResult:I

    return v0
.end method

.method public getError()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mError:I

    return v0
.end method

.method public getLeftValidDays()I
    .locals 2

    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLicenseFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mLicenseFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyMessage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->isValidOfficial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "valid official"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->isValidTemp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "valid temp"

    return-object v0

    :cond_1
    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "not a valid result"

    return-object v0

    :pswitch_1
    const-string v0, "package name unmatched"

    return-object v0

    :pswitch_2
    const-string v0, "sign or appcode unmatched"

    return-object v0

    :pswitch_3
    const-string v0, "cuid unmatched"

    return-object v0

    :pswitch_4
    const-string v0, "official license expired"

    return-object v0

    :pswitch_5
    const-string v0, "will expire after a month"

    return-object v0

    :pswitch_6
    const-string v0, "platform unmatched"

    return-object v0

    :pswitch_7
    const-string v0, "license not exist or invalid license"

    return-object v0

    :pswitch_8
    const-string v0, "temp license expired"

    return-object v0

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getVerifyResult()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    return v0
.end method

.method public isOfficialExpired()Z
    .locals 2

    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_1

    const/4 v1, -0x6

    if-ne v0, v1, :cond_0

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

.method public isValid()Z
    .locals 10

    const-string v0, "isValid begin"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineAuth"

    invoke-static {v1, v0}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mLicenseFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/utils/auth/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mLicenseFilePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/speech/utils/Policy;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/speech/utils/Utility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x80

    new-array v0, v0, [B

    const-string v3, "verify license before "

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mAppId:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mAuthSN:Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mLicenseFilePath:Ljava/lang/String;

    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lcom/baidu/speech/core/BDSSDKLoader;->bdVerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v3

    iput v3, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verify result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    new-array v0, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get appIdStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v1, v0}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    if-gez v0, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public isValidOfficial()Z
    .locals 2

    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    if-ltz v0, :cond_0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidTemp()Z
    .locals 2

    iget v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setAuthSN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mAuthSN:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->context:Landroid/content/Context;

    return-void
.end method

.method public setDownloadLicenseResult(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mDownloadLicenseResult:I

    return-void
.end method

.method public setError(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "--error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mError:I

    invoke-static {v2}, Lcom/baidu/speech/utils/AsrError;->getDescFromCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OfflineAuth"

    invoke-static {v1, v0}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    iput p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mError:I

    return-void
.end method

.method public setLicenseFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mLicenseFilePath:Ljava/lang/String;

    return-void
.end method

.method public setVerifyResult(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->mVerifyResult:I

    return-void
.end method
