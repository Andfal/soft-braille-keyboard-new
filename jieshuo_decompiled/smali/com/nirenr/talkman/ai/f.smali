.class public Lcom/nirenr/talkman/ai/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 1

    const-string v0, "\u8bc6\u522b\u56fe\u4e2d\u7b97\u5f0f\u5e76\u5224\u65ad\u5bf9\u9519"

    invoke-static {p0, v0, p1}, Lcom/nirenr/talkman/ai/g;->i([BLjava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method

.method public static b([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nirenr/talkman/ai/f$b;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/ai/f$b;-><init>([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/f;->c([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method

.method public static c([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v4, "Image"

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "MaxBodyNum"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "UpperBodyCloth"

    const-string v5, "LowerBodyCloth"

    const-string v6, "Age"

    const-string v7, "Gender"

    const-string v8, "Orientation"

    filled-new-array {v6, v7, v8, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p0, :cond_0

    aget-object v7, v4, v6

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "AttributesOptions"

    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/nirenr/talkman/ai/f;->h([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/nirenr/talkman/ai/f$c;

    invoke-direct {v4, p1, v2, p0}, Lcom/nirenr/talkman/ai/f$c;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v3, v4}, Lcom/nirenr/talkman/util/a;->v(JLjava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 1

    const-string v0, "\u8bc6\u522b\u5e76\u89e3\u7b54\u56fe\u4e2d\u7684\u95ee\u9898"

    invoke-static {p0, v0, p1}, Lcom/nirenr/talkman/ai/g;->i([BLjava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method

.method public static e([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;
    .locals 0

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/g;->f([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p0

    return-object p0
.end method

.method public static f([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/nirenr/talkman/ai/f;->j(B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;
    .locals 0

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/g;->f([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p0

    return-object p0
.end method

.method public static h([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/nirenr/talkman/ai/f;->f([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static i([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v4, "ImageBase64"

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/nirenr/talkman/ai/f;->h([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/nirenr/talkman/ai/f$a;

    invoke-direct {v4, p1, v2, p0}, Lcom/nirenr/talkman/ai/f$a;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v3, v4}, Lcom/nirenr/talkman/util/a;->x(JLjava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
