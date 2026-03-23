.class public Lcom/iflytek/sparkchain/utils/DataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEF_CHARSET:Ljava/lang/String; = "gb2312"

.field public static final GB2312:Ljava/lang/String; = "gb2312"

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_64K:I = 0x10000

.field public static final UNICODE:Ljava/lang/String; = "unicode"

.field public static final UTF8:Ljava/lang/String; = "utf-8"

.field public static mMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RandomInt(II)I
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static byteToLong([BI)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    array-length p1, p0

    const/16 v2, 0x8

    if-ge p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_2

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    const/4 v3, 0x7

    if-ge p1, v3, :cond_1

    shl-long/2addr v0, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static compareJsonInt(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid jsonobject,compare "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->e(Ljava/lang/Object;)V

    return v0
.end method

.method public static compareJsonLong(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p2, p0, v1

    if-gez p2, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid jsonobject,compare "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->e(Ljava/lang/Object;)V

    return v0
.end method

.method public static compareJsonString(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid jsonobject,compare "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->e(Ljava/lang/Object;)V

    return v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    sget-object p0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getComplexDateTime(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameByDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNativeByteArray(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "gb2312"

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/DataUtil;->getNativeByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNativeByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    array-length v0, p0

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    aput-byte v2, p1, p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [B

    aput-byte v2, p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getSimpleDateTime(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromNativeByteArray([B)Ljava/lang/String;
    .locals 1

    const-string v0, "gb2312"

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/DataUtil;->getStringFromNativeByteArray([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromNativeByteArray([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v2, p0, v0, v1, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method

.method public static getUTF8Bom(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x3

    add-int/2addr v1, v2

    new-array v0, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x11

    aput-byte v4, v0, v3

    const/16 v3, -0x45

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/4 v3, 0x2

    const/16 v4, -0x41

    aput-byte v4, v0, v3

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, -0x3

    aget-byte v3, p0, v3

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static getUTF8Bom([B)[B
    .locals 5

    array-length v0, p0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/16 v2, -0x11

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const/4 v2, 0x1

    const/16 v4, -0x45

    aput-byte v4, v0, v2

    const/4 v2, 0x2

    const/16 v4, -0x41

    aput-byte v4, v0, v2

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static hexstring2Int(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static longToByte(J)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    shr-long/2addr p0, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static readInt([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x0

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    const/high16 p1, -0x1000000

    and-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    sget-object p0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static spModify(Landroid/content/Context;F)I
    .locals 2

    sget-object v0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    sget-object p0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    mul-float p1, p1, p0

    sget-object p0, Lcom/iflytek/sparkchain/utils/DataUtil;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x2

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static splitBuffer([BIII)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-lez p3, :cond_2

    if-lez p2, :cond_2

    if-eqz p0, :cond_2

    array-length v1, p0

    add-int v2, p2, p1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sub-int v3, p2, p1

    if-ge v2, v3, :cond_2

    sub-int v3, p2, v2

    sub-int/2addr v3, p1

    if-ge p3, v3, :cond_1

    new-array v3, p3, [B

    add-int v4, v2, p1

    invoke-static {p0, v4, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, p3

    goto :goto_0

    :cond_1
    new-array v4, v3, [B

    add-int v5, v2, p1

    invoke-static {p0, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method
