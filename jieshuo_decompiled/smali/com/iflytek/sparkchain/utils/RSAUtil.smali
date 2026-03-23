.class public Lcom/iflytek/sparkchain/utils/RSAUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final TRANSFORMATION:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ASCII_To_BCD([BI)[B
    .locals 6

    div-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p1, 0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/RSAUtil;->asc_to_bcd(B)B

    move-result v3

    aput-byte v3, v0, v2

    if-lt v4, p1, :cond_0

    move v3, v4

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/iflytek/sparkchain/utils/RSAUtil;->asc_to_bcd(B)B

    move-result v4

    :goto_1
    aget-byte v5, v0, v2

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static asc_to_bcd(B)B
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v2, 0x46

    if-gt p0, v2, :cond_1

    :goto_0
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    goto :goto_2

    :cond_1
    const/16 v1, 0x61

    if-lt p0, v1, :cond_2

    const/16 v2, 0x66

    if-gt p0, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    sub-int/2addr p0, v0

    :goto_2
    int-to-byte p0, p0

    return p0
.end method

.method private static bcd2Str([B)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-char v3, v3

    mul-int/lit8 v4, v1, 0x2

    const/16 v5, 0x9

    if-le v3, v5, :cond_0

    add-int/lit8 v3, v3, 0x41

    add-int/lit8 v3, v3, -0xa

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x30

    :goto_1
    int-to-char v3, v3

    aput-char v3, v0, v4

    and-int/lit8 v2, v2, 0xf

    int-to-char v2, v2

    add-int/lit8 v4, v4, 0x1

    if-le v2, v5, :cond_1

    add-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0xa

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x30

    :goto_2
    int-to-char v2, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static decryptByPrivateKey(Ljava/lang/String;Ljava/security/interfaces/RSAPrivateKey;)Ljava/lang/String;
    .locals 5

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v1}, Lcom/iflytek/sparkchain/utils/RSAUtil;->ASCII_To_BCD([BI)[B

    move-result-object p0

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/RSAUtil;->splitArray([BI)[[B

    move-result-object p0

    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/iflytek/sparkchain/utils/RSAUtil;->decryptByPrivateKey([BLjava/security/interfaces/RSAPrivateKey;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static decryptByPrivateKey([BLjava/security/interfaces/RSAPrivateKey;)[B
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 5

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v1}, Lcom/iflytek/sparkchain/utils/RSAUtil;->ASCII_To_BCD([BI)[B

    move-result-object p0

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/RSAUtil;->splitArray([BI)[[B

    move-result-object p0

    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/iflytek/sparkchain/utils/RSAUtil;->decryptByPublicKey([BLjava/security/interfaces/RSAPublicKey;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static decryptByPublicKey([BLjava/security/interfaces/RSAPublicKey;)[B
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPrivateKey(Ljava/lang/String;Ljava/security/interfaces/RSAPrivateKey;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0xb

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/RSAUtil;->splitString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, p1}, Lcom/iflytek/sparkchain/utils/RSAUtil;->encryptByPrivateKey([BLjava/security/interfaces/RSAPrivateKey;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/RSAUtil;->bcd2Str([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPrivateKey([BLjava/security/interfaces/RSAPrivateKey;)[B
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0xb

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/utils/RSAUtil;->splitString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, p1}, Lcom/iflytek/sparkchain/utils/RSAUtil;->encryptByPublicKey([BLjava/security/interfaces/RSAPublicKey;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/RSAUtil;->bcd2Str([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPublicKey([BLjava/security/interfaces/RSAPublicKey;)[B
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static loadPrivateKey(Ljava/io/InputStream;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/utils/RSAUtil;->loadPrivateKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadPrivateKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadPublicKey(Ljava/io/InputStream;)Ljava/security/interfaces/RSAPublicKey;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/sparkchain/utils/RSAUtil;->loadPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static splitArray([BI)[[B
    .locals 7

    array-length v0, p0

    div-int/2addr v0, p1

    array-length v1, p0

    rem-int/2addr v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v0, v3

    new-array v3, v0, [[B

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    new-array v5, p1, [B

    add-int/lit8 v6, v0, -0x1

    if-ne v4, v6, :cond_1

    if-eqz v1, :cond_1

    mul-int v6, v4, p1

    invoke-static {p0, v6, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    mul-int v6, v4, p1

    invoke-static {p0, v6, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private static splitString(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v0, v3

    new-array v3, v0, [Ljava/lang/String;

    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    if-eqz v1, :cond_1

    mul-int v4, v2, p1

    add-int v5, v4, v1

    goto :goto_2

    :cond_1
    mul-int v4, v2, p1

    add-int v5, v4, p1

    :goto_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method
