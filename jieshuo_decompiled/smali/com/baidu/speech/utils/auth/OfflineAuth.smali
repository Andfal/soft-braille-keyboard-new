.class public Lcom/baidu/speech/utils/auth/OfflineAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/speech/utils/auth/IMemorizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/speech/utils/auth/IMemorizable<",
        "Lcom/baidu/speech/utils/auth/OfflineAuth;",
        "Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineAuth"


# instance fields
.field private context:Landroid/content/Context;

.field private final downloadLicenseFailureInvalidSN:I

.field private mAppCode:Ljava/lang/String;

.field private mAuthSN:Ljava/lang/String;

.field private mLicenseFilePath:Ljava/lang/String;

.field private final offlineEngineDownloadLicenseFailure:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186b1

    iput v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->downloadLicenseFailureInvalidSN:I

    const v0, 0x186b3

    iput v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->offlineEngineDownloadLicenseFailure:I

    return-void
.end method


# virtual methods
.method public call()Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;
    .locals 11

    new-instance v0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;

    invoke-direct {v0}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;-><init>()V

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mLicenseFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setLicenseFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAppCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setAppId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAuthSN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setAuthSN(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->context:Landroid/content/Context;

    const-string v2, "getLicense_expires"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v5, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->context:Landroid/content/Context;

    const-string v6, "getLicense_time"

    invoke-static {v5, v6, v3, v4}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->context:Landroid/content/Context;

    const-string v6, "getLicense_err_no"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->context:Landroid/content/Context;

    const-string v8, "SN"

    const-string v9, ""

    invoke-static {v6, v8, v9}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    iget-object v3, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAuthSN:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, -0x3ee

    if-eq v5, v3, :cond_0

    const/16 v3, -0x3ef

    if-eq v5, v3, :cond_0

    const/16 v3, -0x3f0

    if-eq v5, v3, :cond_0

    const/16 v3, -0x3f3

    if-ne v5, v3, :cond_1

    :cond_0
    const-wide/32 v3, 0x5265c00

    cmp-long v5, v8, v3

    if-gtz v5, :cond_1

    const v1, 0x186b1

    invoke-virtual {v0, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setError(I)V

    return-object v0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "OfflineAuth"

    cmp-long v6, v8, v1

    if-lez v6, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;

    iget-object v6, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAppCode:Ljava/lang/String;

    iget-object v9, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mLicenseFilePath:Ljava/lang/String;

    iget-object v10, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAuthSN:Ljava/lang/String;

    invoke-direct {v2, v6, v8, v9, v10}, Lcom/baidu/speech/utils/auth/GetTtsLicenseWork;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v1, v8, v9, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- downloadLicense ret = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5, v1}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setDownloadLicenseResult(I)V

    if-gez v7, :cond_3

    const v1, 0x186b3

    invoke-virtual {v0, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setError(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->isValid()Z

    :cond_4
    :goto_1
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/OfflineAuth;->call()Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/baidu/speech/utils/auth/OfflineAuth;)I
    .locals 2

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/OfflineAuth;->getAppCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/OfflineAuth;->getLicenseFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAppCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/speech/utils/auth/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mLicenseFilePath:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/speech/utils/auth/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/baidu/speech/utils/auth/OfflineAuth;

    invoke-virtual {p0, p1}, Lcom/baidu/speech/utils/auth/OfflineAuth;->compareTo(Lcom/baidu/speech/utils/auth/OfflineAuth;)I

    move-result p1

    return p1
.end method

.method public getAppCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAppCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthSN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAuthSN:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mLicenseFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAppCode:Ljava/lang/String;

    return-void
.end method

.method public setAuthSN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mAuthSN:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->context:Landroid/content/Context;

    return-void
.end method

.method public setLicenseFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/OfflineAuth;->mLicenseFilePath:Ljava/lang/String;

    return-void
.end method
