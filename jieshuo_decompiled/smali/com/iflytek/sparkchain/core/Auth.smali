.class public Lcom/iflytek/sparkchain/core/Auth;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/Auth$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/sparkchain/core/CoreListener;

.field private e:Lcom/iflytek/sparkchain/core/AuthListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "SparkChain"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLibrary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AEE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/iflytek/sparkchain/core/Auth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->d:Lcom/iflytek/sparkchain/core/CoreListener;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->e:Lcom/iflytek/sparkchain/core/AuthListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/Auth$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/Auth;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const-string v0, "resources:"

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/Auth;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v3, "aikit_resources"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-gtz v4, :cond_1

    return-object v2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/aikit_resources/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_2
    iget-object v4, p0, Lcom/iflytek/sparkchain/core/Auth;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resources in assets,count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v7, v3, v6

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aikit_resources/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v8, 0x400

    :try_start_3
    new-array v8, v8, [B

    :goto_1
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_4

    invoke-virtual {v10, v8, v5, v11}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/iflytek/sparkchain/core/Auth;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " copy from assets to:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "success!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    move-object v8, v10

    goto :goto_4

    :catch_0
    move-object v8, v10

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v9, v8

    goto :goto_4

    :catch_1
    move-object v9, v8

    :catch_2
    :goto_3
    :try_start_5
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Auth;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "copy from assets failed!:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    return-object v2

    :goto_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    return-object p1

    :catch_3
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Auth;->a:Ljava/lang/String;

    const-string v0, "auth init info:no resources dir in aar"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    return-object v2
.end method

.method public static d()Lcom/iflytek/sparkchain/core/Auth;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth$b;->a()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->e:Lcom/iflytek/sparkchain/core/AuthListener;

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/iflytek/sparkchain/core/ErrType;->valueOf(I)Lcom/iflytek/sparkchain/core/ErrType;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/iflytek/sparkchain/core/AuthListener;->onAuthStateChange(Lcom/iflytek/sparkchain/core/ErrType;I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->d:Lcom/iflytek/sparkchain/core/CoreListener;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Auth;->b:Landroid/content/Context;

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->resDir:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/iflytek/sparkchain/core/Auth;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->resDir:Ljava/lang/String;

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getApiSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getAuthType()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getLicenseFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getWorkDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->isLogOpen()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->isiLogOpen()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getiLogMaxCount()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getiLogMaxSize()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->isRecordOpen()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getCustomDeviceId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getAuthInterval()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getResDir()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getBatchID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getCfgFile()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->getAbility()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v19}, Lcom/iflytek/sparkchain/core/Auth;->initAndCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZIJZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/iflytek/sparkchain/core/Auth;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auth init ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/iflytek/sparkchain/core/ErrType;->AUTH:Lcom/iflytek/sparkchain/core/ErrType;

    invoke-virtual {v2}, Lcom/iflytek/sparkchain/core/ErrType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/sparkchain/core/Auth;->a(II)V

    return-void
.end method

.method a(Lcom/iflytek/sparkchain/core/AuthListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Auth;->e:Lcom/iflytek/sparkchain/core/AuthListener;

    return-void
.end method

.method a(Lcom/iflytek/sparkchain/core/CoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Auth;->d:Lcom/iflytek/sparkchain/core/CoreListener;

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/Auth;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->a:Ljava/lang/String;

    const-string v1, "require oaid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/Auth;->a(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Auth;->c:Ljava/lang/String;

    return-object v0
.end method

.method native getDeviceId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method native getOaIdWeightValue()I
.end method

.method native getState()I
.end method

.method native initAndCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZIJZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method native release()I
.end method

.method native reset(Landroid/content/Context;)V
.end method
