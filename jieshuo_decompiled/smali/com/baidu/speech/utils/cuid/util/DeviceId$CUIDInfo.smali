.class Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/utils/cuid/util/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CUIDInfo"
.end annotation


# static fields
.field public static final I_EMPTY:Ljava/lang/String; = "0"

.field public static final I_FIXED:Ljava/lang/String; = "O"

.field public static final PROTOCAL_MAX_LENGTH:I = 0xe

.field private static final VERSION_DEF:I = 0x2


# instance fields
.field public deviceId:Ljava/lang/String;

.field public flag:Ljava/lang/String;

.field public oldValueLength:I

.field public version:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->version:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->oldValueLength:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/speech/utils/cuid/util/DeviceId$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->createCuidInfoFromV1Cache(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    move-result-object p0

    return-object p0
.end method

.method private static createCuidInfoFromV1Cache(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    invoke-direct {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;-><init>()V

    iput-object p0, v0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->deviceId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    iput p0, v0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->oldValueLength:I

    const/16 v1, 0xe

    if-ge p0, v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p1, "0"

    :cond_1
    iput-object p1, v0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->flag:Ljava/lang/String;

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "0"

    move-object v3, v2

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "dmVy"

    const-string v6, "ZGV2aWNlaWQ="

    if-eqz v4, :cond_3

    :try_start_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v6}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;

    invoke-direct {v5}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;-><init>()V

    iput-object p0, v5, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->deviceId:Ljava/lang/String;

    iput v0, v5, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->version:I

    iput v4, v5, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->oldValueLength:I

    const/16 p0, 0xe

    if-ge v4, p0, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    iput-object v2, v5, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->flag:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-object v5

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$100(Ljava/lang/Throwable;)V

    :cond_7
    return-object v1
.end method

.method public static isIENormal(I)Z
    .locals 1

    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIENull(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getFinalCUID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->flag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIENormal()Z
    .locals 1

    iget v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->oldValueLength:I

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->isIENormal(I)Z

    move-result v0

    return v0
.end method

.method public isIENull()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->flag:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->isIENull(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toPersitString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ZGV2aWNlaWQ="

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "aW1laQ=="

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dmVy"

    invoke-static {v1}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDInfo;->version:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$100(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
