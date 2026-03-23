.class public Lcom/baidu/location/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/j$a;
    }
.end annotation


# instance fields
.field private a:Ljavax/crypto/spec/IvParameterSpec;

.field private b:Ljavax/crypto/spec/SecretKeySpec;

.field private c:Ljavax/crypto/Cipher;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    const-string v0, "UTF-8"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/b/j;->d:Z

    :try_start_0
    invoke-static {}, Lcom/baidu/location/Jni;->getldkaiv()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v3, p0, Lcom/baidu/location/b/j;->a:Ljavax/crypto/spec/IvParameterSpec;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    aget-object v1, v2, v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "AES"

    invoke-direct {v3, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/location/b/j;->b:Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES/CBC/PKCS5PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/j;->c:Ljavax/crypto/Cipher;

    iput-boolean v4, p0, Lcom/baidu/location/b/j;->d:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/j$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/b/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/location/b/j;
    .locals 1

    invoke-static {}, Lcom/baidu/location/b/j$a;->a()Lcom/baidu/location/b/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/baidu/location/b/j;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/j;->c:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/baidu/location/b/j;->b:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/baidu/location/b/j;->a:Ljavax/crypto/spec/IvParameterSpec;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v0, p0, Lcom/baidu/location/b/j;->c:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/j;->d:Z

    return v0
.end method
