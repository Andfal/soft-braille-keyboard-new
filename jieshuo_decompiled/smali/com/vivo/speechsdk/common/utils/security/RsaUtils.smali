.class public Lcom/vivo/speechsdk/common/utils/security/RsaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PROVIDER:Ljava/lang/String;

.field public static final PUB_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDczHSImsT7UywQemtIMOxX56Cq1gL3ubM43xDywXt0/DCPXbh8hVEA47fKNQDQpfgBw+wMq/SJFgy6vGcDZPW3bR7TW1qg8rwVAEn1YMY5U63tS/5ObOfQ68L7kpRTAOL+ooFtM6835r90uEPFkXPxbYpTprWjz35GxrHRf48x4wIDAQAB"

.field private static final RSA_KEY_FACTORY:Ljava/security/KeyFactory;

.field private static final TAG:Ljava/lang/String; = "RsaUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BC"

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    sput-object v1, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->PROVIDER:Ljava/lang/String;

    const-string v2, "RSA"

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {v2, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    sput-object v0, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->RSA_KEY_FACTORY:Ljava/security/KeyFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptByPrivateKey([BLjava/security/PrivateKey;Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {p2}, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    array-length v1, p0

    if-gt v1, p1, :cond_1

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    sub-int v5, v1, v3

    if-lez v5, :cond_3

    if-le v5, p1, :cond_2

    :try_start_1
    invoke-virtual {p2, p0, v3, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p0, v3, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    :goto_1
    array-length v5, v3

    invoke-virtual {v2, v3, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v4, p1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_4
    new-array p0, v0, [B

    return-object p0
.end method

.method public static encryptByPublicKey([BLjava/security/PublicKey;Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {p2}, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length p1, p0

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    if-gt p1, v2, :cond_1

    :try_start_0
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    sub-int v6, p1, v4

    if-lez v6, :cond_3

    if-le v6, v2, :cond_2

    :try_start_2
    invoke-virtual {p2, p0, v4, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    :goto_1
    array-length v6, v4

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v5, v1

    mul-int v4, v5, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_4
    new-array p0, v0, [B

    return-object p0
.end method

.method private static getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->PROVIDER:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static readRSAPrivateKey([B)Ljava/security/PrivateKey;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    sget-object p0, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->RSA_KEY_FACTORY:Ljava/security/KeyFactory;

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readRSAPrivateKey e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RsaUtils"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readRSAPublicKey([B)Ljava/security/PublicKey;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    sget-object p0, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->RSA_KEY_FACTORY:Ljava/security/KeyFactory;

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readRSAPublicKey e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RsaUtils"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
