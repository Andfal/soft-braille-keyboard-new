.class public Lcom/nirenr/talkman/ai/BaiduAI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;,
        Lcom/nirenr/talkman/ai/BaiduAI$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Ld0/a;

.field private static d:Ld0/a;

.field private static final e:Le0/a;

.field private static f:Lcom/nirenr/talkman/ai/BaiduAI$b;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "https://aip.baidubce.com/rest/2.0/image-classify/v1/animal"

    const-string v1, "https://aip.baidubce.com/rest/2.0/image-classify/v1/plant"

    const-string v2, "https://aip.baidubce.com/rest/2.0/image-classify/v1/ingredient"

    const-string v3, "https://aip.baidubce.com/rest/2.0/image-classify/v1/currency"

    const-string v4, "https://aip.baidubce.com/rest/2.0/ocr/v1/accurate"

    const-string v5, "https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic"

    const-string v6, "https://aip.baidubce.com/rpc/2.0/ai_custom/v1/detection/huakuai2"

    const-string v7, "https://aip.baidubce.com/rest/2.0/image-classify/v2/advanced_general"

    const-string v8, "https://aip.baidubce.com/rest/2.0/image-classify/v2/logo"

    const-string v9, "https://aip.baidubce.com/rest/2.0/image-classify/v1/multi_object_detect"

    const-string v10, "https://aip.baidubce.com/rest/2.0/image-classify/v1/image-understanding/request"

    const-string v11, "https://aip.baidubce.com/rest/2.0/image-classify/v1/image-understanding/get-result"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->a:[Ljava/lang/String;

    const-string v0, "https://aip.baidubce.com/rest/2.0/ocr/v1/general"

    const-string v1, "https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->b:[Ljava/lang/String;

    new-instance v0, Ld0/a;

    const-string v1, "9681975"

    const-string v2, "LYv3vpUsbpnD7uHNbFKMRRY1ZA5To4xz"

    const-string v3, "8wKX9aA4iyXuvTGDdEYcDneplokUAbf6"

    invoke-direct {v0, v1, v2, v3}, Ld0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->c:Ld0/a;

    new-instance v0, Ld0/a;

    invoke-direct {v0, v1, v2, v3}, Ld0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->d:Ld0/a;

    new-instance v0, Le0/a;

    invoke-direct {v0, v1, v2, v3}, Le0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->e:Le0/a;

    sget-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->c:Ld0/a;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lz/a;->f(I)V

    sget-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->c:Ld0/a;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lz/a;->g(I)V

    return-void
.end method

.method static bridge synthetic a()Ld0/a;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->c:Ld0/a;

    return-object v0
.end method

.method static bridge synthetic b()Ld0/a;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->d:Ld0/a;

    return-object v0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/ai/BaiduAI$b;)V
    .locals 0

    sput-object p0, Lcom/nirenr/talkman/ai/BaiduAI;->f:Lcom/nirenr/talkman/ai/BaiduAI$b;

    return-void
.end method

.method public static d(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 1

    new-instance v0, Lcom/nirenr/talkman/ai/BaiduAI$a;

    invoke-direct {v0, p2}, Lcom/nirenr/talkman/ai/BaiduAI$a;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-static {p0, p1, v0}, Lcom/nirenr/talkman/ai/BaiduAI;->f(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;

    move-result-object p0

    return-object p0
.end method

.method public static e(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/nirenr/talkman/ai/BaiduAI;->f(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;
    .locals 2

    sget-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->f:Lcom/nirenr/talkman/ai/BaiduAI$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/nirenr/talkman/ai/BaiduAI$b;

    sget-object v1, Lcom/nirenr/talkman/ai/BaiduAI;->a:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-direct {v0, p0, p1, p2}, Lcom/nirenr/talkman/ai/BaiduAI$b;-><init>(Ljava/lang/String;[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)V

    sput-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->f:Lcom/nirenr/talkman/ai/BaiduAI$b;

    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    sget-object p0, Lcom/nirenr/talkman/ai/BaiduAI;->f:Lcom/nirenr/talkman/ai/BaiduAI$b;

    return-object p0
.end method

.method public static g(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    const-string v1, "keyword"

    const-string v2, "currencyDenomination"

    const-string v3, "result"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "score"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v12, v8, v10

    if-lez v12, :cond_1

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "currencyName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-object v4
.end method

.method public static h(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const-string v0, "words"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v2, "words_result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 13

    const-string v0, "name"

    const-string v1, "keyword"

    const-string v2, "currencyDenomination"

    const-string v3, "result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "score"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v12, v8, v10

    if-lez v12, :cond_1

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "\n"

    if-eqz v8, :cond_0

    :try_start_1
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_2
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "currencyName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ld0/a;

    invoke-direct {v0, p0, p1, p2}, Ld0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->c:Ld0/a;

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Ld0/a;

    const-string p1, "LYv3vpUsbpnD7uHNbFKMRRY1ZA5To4xz"

    const-string p2, "8wKX9aA4iyXuvTGDdEYcDneplokUAbf6"

    const-string v0, "9681975"

    invoke-direct {p0, v0, p1, p2}, Ld0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/nirenr/talkman/ai/BaiduAI;->c:Ld0/a;

    const/4 p0, 0x0

    :goto_1
    sput-boolean p0, Lcom/nirenr/talkman/ai/BaiduAI;->g:Z

    return-void
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/ai/BaiduAI;->g:Z

    return v0
.end method

.method public static l(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;
    .locals 2

    sget-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->f:Lcom/nirenr/talkman/ai/BaiduAI$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/nirenr/talkman/ai/BaiduAI$b;

    sget-object v1, Lcom/nirenr/talkman/ai/BaiduAI;->b:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-direct {v0, p0, p1, p2}, Lcom/nirenr/talkman/ai/BaiduAI$b;-><init>(Ljava/lang/String;[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)V

    sput-object v0, Lcom/nirenr/talkman/ai/BaiduAI;->f:Lcom/nirenr/talkman/ai/BaiduAI$b;

    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    sget-object p0, Lcom/nirenr/talkman/ai/BaiduAI;->f:Lcom/nirenr/talkman/ai/BaiduAI$b;

    return-object p0
.end method
