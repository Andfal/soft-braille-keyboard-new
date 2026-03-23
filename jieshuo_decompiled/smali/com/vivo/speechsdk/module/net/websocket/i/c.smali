.class public Lcom/vivo/speechsdk/module/net/websocket/i/c;
.super Lcom/vivo/speechsdk/module/api/net/DefaultDetectPolicy;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x3e8

.field private static final c:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/api/net/DefaultDetectPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public detectInterval()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public maxDetectCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public messageInterval()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TtsDetectPolicy"

    return-object v0
.end method
