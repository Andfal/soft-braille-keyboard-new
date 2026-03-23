.class public Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;
.super Lcom/vivo/speechsdk/module/api/net/DefaultDetectPolicy;
.source "SourceFile"


# static fields
.field private static final MAX_PING_INTERVAL:I = 0xc8


# instance fields
.field private mConnTimeOut:I

.field private mMsgInterval:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/api/net/DefaultDetectPolicy;-><init>()V

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;->mMsgInterval:I

    iput p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;->mConnTimeOut:I

    return-void
.end method


# virtual methods
.method public messageInterval()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;->mMsgInterval:I

    return v0
.end method

.method public netConnTimeout()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;->mConnTimeOut:I

    return v0
.end method

.method public netQualityLow()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TtsDetectPolicy"

    return-object v0
.end method
