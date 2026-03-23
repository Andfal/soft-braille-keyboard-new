.class public Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AES_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final RSA_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "RSA/NONE/NoPadding"

.field private static final TAG:Ljava/lang/String; = "RandomAesKeyCryptoUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([BLjava/security/Key;)[B
    .locals 1

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {p0, p1, v0}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "RandomAesKeyCryptoUtil"

    const-string v0, "decrypt2 failed !!! "

    invoke-static {p1, v0, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decrypt([B[BLjava/security/PrivateKey;)[B
    .locals 4

    :try_start_0
    const-string v0, "RSA/NONE/NoPadding"

    invoke-static {p1, p2, v0}, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->decryptByPrivateKey([BLjava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object p1

    array-length p2, p1

    const/16 v0, 0x10

    if-ge p2, v0, :cond_2

    new-array p2, v0, [B

    array-length v1, p1

    rsub-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aput-byte v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    sub-int v3, v2, v1

    aget-byte v3, p1, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :cond_2
    const-string p2, "AES/GCM/NoPadding"

    invoke-static {p0, p1, p2}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->decrypt([B[BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "RandomAesKeyCryptoUtil"

    const-string p2, "decrypt failed !!! "

    invoke-static {p1, p2, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encrypt([BLjava/security/PublicKey;)Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;
    .locals 4

    const/16 v0, 0x80

    :try_start_0
    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->initkey(I)Ljavax/crypto/SecretKey;

    move-result-object v1

    new-array v0, v0, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v2, "AES/GCM/NoPadding"

    invoke-static {p0, v1, v2, v0}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->encrypt([BLjava/security/Key;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    const-string v3, "RSA/NONE/NoPadding"

    invoke-static {v2, p1, v3}, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->encryptByPublicKey([BLjava/security/PublicKey;Ljava/lang/String;)[B

    move-result-object p1

    new-instance v2, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;

    invoke-direct {v2, v1, p0, p1, v0}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;-><init>(Ljava/security/Key;[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string p1, "RandomAesKeyCryptoUtil"

    const-string v0, "encrypt failed !!! "

    invoke-static {p1, v0, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;-><init>(Ljava/security/Key;[B[B[B)V

    return-object p0
.end method

.method public static encrypt([B[B)[B
    .locals 2

    const/16 v0, 0xc

    :try_start_0
    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v1, "AES/GCM/NoPadding"

    invoke-static {p0, p1, v1, v0}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->encrypt([B[BLjava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "RandomAesKeyCryptoUtil"

    const-string v0, "encrypt2 failed !!! "

    invoke-static {p1, v0, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
