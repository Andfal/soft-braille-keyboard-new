.class public Lcom/iflytek/sparkchain/core/JniCallback;
.super Lcom/iflytek/sparkchain/utils/DeviceIdUtil;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/JniCallback$JniAuthTimer;,
        Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;
    }
.end annotation


# static fields
.field private static final license_dir:Ljava/lang/String; = "dir_empty"

.field private static final license_extension:Ljava/lang/String; = "extension"

.field private static final license_sp_key:Ljava/lang/String; = "protocol_sp"

.field private static final license_version:Ljava/lang/String; = "d"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/utils/DeviceIdUtil;-><init>()V

    return-void
.end method

.method static synthetic access$000([BZ)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iflytek/sparkchain/core/JniCallback;->collectData([BZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static authFormatFilt(Ljava/lang/String;)V
    .locals 11

    const-string v0, "device"

    const-string v1, "license"

    invoke-static {}, Lcom/iflytek/sparkchain/utils/DeviceIdUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "extension"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v4, "level"

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/sparkchain/core/JniCallback;->encodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-string v5, "protocol_sp"

    invoke-interface {p0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {p0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/sparkchain/core/JniCallback;->decodeAuthInfoMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    return-void

    :cond_2
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {v10, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/sparkchain/core/JniCallback;->encodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_2
    move-object v8, v3

    goto :goto_2

    :catch_3
    move-object v6, v3

    move-object v8, v6

    :catch_4
    :goto_2
    const-string v4, "Auth"

    const-string v7, "authFormatFilt rawStr imperfect"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    invoke-interface {p0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    return-void
.end method

.method private static charToByte(C)B
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static chatOnError(ILjava/lang/String;IILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->getChatListener()Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/iflytek/sparkchain/core/AiHelper;->getUsrContext(I)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/iflytek/sparkchain/core/AIChatHandle;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/sparkchain/core/AIChatHandle;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-interface {v0, v1, p3, p4}, Lcom/iflytek/sparkchain/core/ChatListener;->onChatError(Lcom/iflytek/sparkchain/core/AIChatHandle;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static chatOnOutput(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->getChatListener()Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/iflytek/sparkchain/core/AiHelper;->getUsrContext(I)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/iflytek/sparkchain/core/AIChatHandle;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/sparkchain/core/AIChatHandle;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-interface {v0, v1, p3, p4, p5}, Lcom/iflytek/sparkchain/core/ChatListener;->onChatOutput(Lcom/iflytek/sparkchain/core/AIChatHandle;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static chatTokenCount(ILjava/lang/String;IIII)Z
    .locals 3

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->getChatListener()Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/iflytek/sparkchain/core/AiHelper;->getUsrContext(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/iflytek/sparkchain/core/AIChatHandle;

    invoke-direct {v2, v1, p1, p2}, Lcom/iflytek/sparkchain/core/AIChatHandle;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v2, p0}, Lcom/iflytek/sparkchain/core/AIChatHandle;->setUsrContextIndex(I)Lcom/iflytek/sparkchain/core/AIChatHandle;

    invoke-interface {v0, v2, p3, p4, p5}, Lcom/iflytek/sparkchain/core/ChatListener;->onChatToken(Lcom/iflytek/sparkchain/core/AIChatHandle;III)V

    const/4 p0, 0x1

    return p0
.end method

.method public static clearKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dir_empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/iflytek/sparkchain/core/JniCallback;->doReflex(Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x2f

    const/16 v0, 0x2e

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/iflytek/sparkchain/utils/DeviceIdUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static collectData([BZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ)",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/iflytek/sparkchain/core/AiResponse;

    invoke-direct {v3}, Lcom/iflytek/sparkchain/core/AiResponse;-><init>()V

    add-int/lit8 v4, v2, 0x4

    if-le v4, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v2}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToInt([BI)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/iflytek/sparkchain/core/AiResponse;->setType(I)V

    if-nez p1, :cond_2

    add-int/lit8 v2, v4, 0x4

    if-le v2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, v4}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToInt([BI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/sparkchain/core/AiResponse;->setStatus(I)V

    move v4, v2

    :cond_2
    add-int/lit8 v2, v4, 0x4

    if-le v2, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p0, v4}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToInt([BI)I

    move-result v5

    if-lez v5, :cond_5

    add-int v4, v2, v5

    if-le v4, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, p0, v2, v5}, Lcom/iflytek/sparkchain/core/AiResponse;->setKey([BII)V

    :cond_5
    add-int/lit8 v2, v4, 0x4

    if-le v2, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p0, v4}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToInt([BI)I

    move-result v5

    if-lez v5, :cond_8

    add-int v4, v2, v5

    if-le v4, v1, :cond_7

    :goto_1
    return-object v0

    :cond_7
    invoke-virtual {v3, p0, v2, v5}, Lcom/iflytek/sparkchain/core/AiResponse;->setValue([BII)V

    invoke-virtual {v3, v5}, Lcom/iflytek/sparkchain/core/AiResponse;->setLen(I)V

    :cond_8
    move v2, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static collectDataEvent([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/iflytek/sparkchain/core/AiResponse;

    invoke-direct {v3}, Lcom/iflytek/sparkchain/core/AiResponse;-><init>()V

    add-int/lit8 v4, v2, 0x4

    if-le v4, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v2}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToInt([BI)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/iflytek/sparkchain/core/AiResponse;->setType(I)V

    add-int/lit8 v2, v4, 0x4

    if-le v2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, v4}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToInt([BI)I

    move-result v5

    if-lez v5, :cond_3

    add-int v4, v2, v5

    if-le v4, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p0, v2, v5}, Lcom/iflytek/sparkchain/core/AiResponse;->setKey([BII)V

    :cond_3
    add-int/lit8 v2, v4, 0x4

    if-le v2, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0, v4}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToInt([BI)I

    move-result v5

    if-lez v5, :cond_6

    add-int v4, v2, v5

    if-le v4, v1, :cond_5

    :goto_1
    return-object v0

    :cond_5
    invoke-virtual {v3, p0, v2, v5}, Lcom/iflytek/sparkchain/core/AiResponse;->setValue([BII)V

    invoke-virtual {v3, v5}, Lcom/iflytek/sparkchain/core/AiResponse;->setLen(I)V

    :cond_6
    move v2, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static decodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeAuthInfoMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/sparkchain/core/JniCallback;->getEnMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static delExtValueFromStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->decodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->encodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static delKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dir_empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/iflytek/sparkchain/core/JniCallback;->doReflex(Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x2f

    const/16 v0, 0x2e

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/iflytek/sparkchain/utils/DeviceIdUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p2}, Lcom/iflytek/sparkchain/core/JniCallback;->isExtensionKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    const-string v0, "extension"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/iflytek/sparkchain/core/JniCallback;->delExtValueFromStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static doReflex(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Lcom/iflytek/sparkchain/utils/DeviceIdUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mPreferencesDir"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static encodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->stringToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeAuthInfoMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->getEnMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->stringToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findNativeLibraryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    check-cast p0, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEnMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static getExtValueFromStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->decodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public static getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "dir_empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/iflytek/sparkchain/core/JniCallback;->doReflex(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/utils/DeviceIdUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/16 p1, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->authFormatFilt(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/sparkchain/utils/DeviceIdUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p2}, Lcom/iflytek/sparkchain/core/JniCallback;->isExtensionKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "extension"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/iflytek/sparkchain/core/JniCallback;->getExtValueFromStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static gp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, ".so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Auth;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/iflytek/sparkchain/core/JniCallback;->findNativeLibraryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hexStrToBytes(Ljava/lang/String;)[B
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p0, v2

    invoke-static {v3}, Lcom/iflytek/sparkchain/core/JniCallback;->charToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x1

    aget-char v5, p0, v4

    invoke-static {v5}, Lcom/iflytek/sparkchain/core/JniCallback;->charToByte(C)B

    move-result v5

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static hexStringToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "gbk"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object p0

    :cond_2
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isExtensionKey(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "license"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static onError(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->getListener()Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->getUsrContext(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/iflytek/sparkchain/core/AiResponseListener;->onError(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;III[B)Z
    .locals 7

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->getListener()Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/iflytek/sparkchain/core/JniCallback;->collectData([BZ)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->getUsrContext(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/iflytek/sparkchain/core/AiResponseListener;->onEvent(Ljava/lang/String;IILjava/util/List;Ljava/lang/Object;)V

    return v0
.end method

.method public static onResult(Ljava/lang/String;II[B)Z
    .locals 3

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->getListener()Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v0

    const-string v1, "AEELog"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "onResult\uff1alistener == null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {p3, v2}, Lcom/iflytek/sparkchain/core/JniCallback;->collectData([BZ)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->getUsrContext(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p0, p1, p3, p2}, Lcom/iflytek/sparkchain/core/AiResponseListener;->onResult(Ljava/lang/String;ILjava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "outputs null in jni!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static sdkStateChange(II)V
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/sparkchain/core/Auth;->a(II)V

    return-void
.end method

.method private static setExtValueToStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->decodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/JniCallback;->encodeAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dir_empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/iflytek/sparkchain/core/JniCallback;->doReflex(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/utils/DeviceIdUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p2}, Lcom/iflytek/sparkchain/core/JniCallback;->isExtensionKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    const-string v0, "extension"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/iflytek/sparkchain/core/JniCallback;->setExtValueToStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static stringToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
