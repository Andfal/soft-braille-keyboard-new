.class public Lcom/vivo/speechsdk/module/api/net/DefaultDetectPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;


# static fields
.field private static final DETECT_DURATION:I = 0xbb8

.field public static final HIGH_NET_QUALITY:I = 0x64

.field public static final LOW_NET_QUALITY:I = 0xc8

.field private static final MAX_CONN_TIMEOUT:I = 0x7d0

.field private static final MAX_DETECT_COUNT:I = 0x3

.field public static final MID_NET_QUALITY:I = 0x96

.field private static final MSG_DURATION:I = 0x5dc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detectInterval()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public maxDetectCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public messageInterval()I
    .locals 1

    const/16 v0, 0x5dc

    return v0
.end method

.method public netConnTimeout()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public netQualityHigh()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public netQualityLow()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public netQualityMid()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultDetectPolicy"

    return-object v0
.end method
