.class public Lcom/iflytek/sparkchain/utils/ByteUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sparkchain/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrToHexString([B)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit16 v0, v0, 0x100

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static byteArrToShort([B)S
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrToShort([BI)S

    move-result p0

    return p0
.end method

.method public static byteArrToShort([BI)S
    .locals 1

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static byteArrToShort([BSI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p2, p2, 0x0

    shr-int/lit8 p1, p1, 0x0

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToInt([BI)I

    move-result p0

    return p0
.end method

.method public static byteArrayToInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static byteArrayToShort([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/ByteUtil;->byteArrayToShort([BI)S

    move-result p0

    return p0
.end method

.method public static byteArrayToShort([BI)S
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static byteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static bytesToLong([B)J
    .locals 3

    sget-object v0, Lcom/iflytek/sparkchain/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sget-object p0, Lcom/iflytek/sparkchain/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object p0, Lcom/iflytek/sparkchain/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getByteArr([BII)[B
    .locals 3

    sub-int v0, p2, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    add-int v2, p1, v1

    if-ge v2, p2, :cond_0

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/iflytek/sparkchain/utils/ByteUtil;->getString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    return-object p2
.end method

.method public static hexStringToInt(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static intToBinary(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intToByte(I)B
    .locals 0

    int-to-byte p0, p0

    return p0
.end method

.method public static intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static isEq([B[B)Z
    .locals 5

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public static longToBytes(J)[B
    .locals 2

    sget-object v0, Lcom/iflytek/sparkchain/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    sget-object p0, Lcom/iflytek/sparkchain/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-static {v1, v0}, Lcom/iflytek/sparkchain/utils/ByteUtil;->isEq([B[B)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method public static readByteArr([B)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    return-object v0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_1
    nop

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    return-object v0

    :cond_2
    :goto_2
    throw v2

    :catch_3
    nop

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    nop

    :catch_4
    :cond_4
    return-object v0
.end method

.method public static shortToByteArr(S)[B
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
