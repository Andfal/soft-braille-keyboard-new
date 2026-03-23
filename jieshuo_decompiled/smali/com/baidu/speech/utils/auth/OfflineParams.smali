.class public Lcom/baidu/speech/utils/auth/OfflineParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private AppCode:Ljava/lang/String;

.field private AuthSN:Ljava/lang/String;

.field private LicenseFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineParams;->AppCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthSN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineParams;->AuthSN:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineParams;->LicenseFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineParams;->AppCode:Ljava/lang/String;

    return-void
.end method

.method public setAuthSN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineParams;->AuthSN:Ljava/lang/String;

    return-void
.end method

.method public setLicenseFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineParams;->LicenseFilePath:Ljava/lang/String;

    return-void
.end method
