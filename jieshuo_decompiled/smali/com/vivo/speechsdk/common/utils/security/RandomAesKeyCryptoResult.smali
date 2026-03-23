.class public Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aesKey:Ljava/security/Key;

.field private encryptedData:[B

.field private encryptedKey:[B

.field private flag:[B


# direct methods
.method public constructor <init>(Ljava/security/Key;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->aesKey:Ljava/security/Key;

    iput-object p2, p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->encryptedData:[B

    iput-object p3, p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->encryptedKey:[B

    iput-object p4, p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->flag:[B

    return-void
.end method


# virtual methods
.method public getAesKey()Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->aesKey:Ljava/security/Key;

    return-object v0
.end method

.method public getEncryptedData()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->encryptedData:[B

    return-object v0
.end method

.method public getEncryptedKey()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->encryptedKey:[B

    return-object v0
.end method

.method public getFlag()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->flag:[B

    return-object v0
.end method
