.class public Lcom/vivo/speechsdk/common/utils/security/AesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "AES"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 1

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B[BLjava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->toKey([B)Ljava/security/Key;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B[BLjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)[B
    .locals 1

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->toKey([B)Ljava/security/Key;

    move-result-object p1

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([BLjava/security/Key;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)[B
    .locals 1

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([BLjava/security/Key;Ljava/lang/String;[B)[B
    .locals 2

    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([B[BLjava/lang/String;[B)[B
    .locals 0

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->toKey([B)Ljava/security/Key;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/vivo/speechsdk/common/utils/security/AesUtil;->encrypt([BLjava/security/Key;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static initkey(I)Ljavax/crypto/SecretKey;
    .locals 1

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toKey([B)Ljava/security/Key;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
