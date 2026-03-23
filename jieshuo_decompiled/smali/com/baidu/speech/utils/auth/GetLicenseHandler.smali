.class public Lcom/baidu/speech/utils/auth/GetLicenseHandler;
.super Lcom/baidu/speech/utils/auth/JsonResponseHandler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetLicenseHandler"


# instance fields
.field private mAuthSN:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLicenseFile:Ljava/lang/String;

.field private statusCode:I

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->statusCode:I

    const-string v0, "_new"

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->suffix:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mLicenseFile:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mAuthSN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->statusCode:I

    return v0
.end method

.method public onFailure(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " statusCode: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " responseString: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "GetLicenseHandler"

    invoke-static {p1, p2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getLicense statusCode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "GetLicenseHandler"

    invoke-static {p1, p2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/util/Map;Lorg/json/JSONObject;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-super/range {p0 .. p3}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onSuccess(ILjava/util/Map;Lorg/json/JSONObject;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLicense resopse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "GetLicenseHandler"

    invoke-static {v5, v4}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "err_no"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->statusCode:I

    new-array v7, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " onSuccess statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " errNo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "err_msg"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "expires"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "time"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v12, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mContext:Landroid/content/Context;

    const-string v13, "getLicense_expires"

    invoke-static {v12, v13, v8, v9}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    iget-object v8, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mContext:Landroid/content/Context;

    const-string v9, "getLicense_err_no"

    invoke-static {v8, v9, v4}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    iget-object v8, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mContext:Landroid/content/Context;

    const-string v9, "SN"

    iget-object v12, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mAuthSN:Ljava/lang/String;

    invoke-static {v8, v9, v12}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v12, v8, v10

    const-wide/32 v14, 0xea60

    const-string v6, "getLicense_time"

    cmp-long v16, v12, v14

    if-gez v16, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_0

    iget-object v8, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v10, v11}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mContext:Landroid/content/Context;

    invoke-static {v10, v6, v8, v9}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    :goto_0
    const-string v6, "license"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "license_begin|license_end"

    const-string v8, ""

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mContext:Landroid/content/Context;

    const-string v8, "isRegister"

    invoke-static {v6, v8, v3}, Lcom/baidu/speech/utils/auth/SharedPreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    new-instance v6, Ljava/io/File;

    iget-object v8, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mLicenseFile:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    const-string v9, "isSave="

    if-eqz v8, :cond_1

    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mLicenseFile:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mLicenseFile:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v2}, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    new-array v10, v3, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v5, v10}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    new-array v9, v3, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isDelete="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v11

    invoke-static {v5, v9}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    new-array v6, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRename="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v11

    invoke-static {v5, v6}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    iget-object v6, v0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mLicenseFile:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    new-array v6, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v11

    invoke-static {v5, v6}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLicense statusCode: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " err_msg: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " err_no: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "utf-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_1
    :try_start_3
    const-string p2, "GetLicenseHandler"

    const-string v2, "download license success, write file failed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p2, -0x3f2

    iput p2, p0, Lcom/baidu/speech/utils/auth/GetLicenseHandler;->statusCode:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    throw p1

    :cond_3
    return v0
.end method
