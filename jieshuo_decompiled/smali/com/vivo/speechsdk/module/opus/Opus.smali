.class public Lcom/vivo/speechsdk/module/opus/Opus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Opus"

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "vopus_v5"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/speechsdk/module/opus/Opus;->b:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/speechsdk/module/opus/Opus;->b:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/vivo/speechsdk/module/opus/Opus;->b:Z

    return v0
.end method

.method public static native decode(J[BII)[B
.end method

.method public static native destroyDecoder(J)V
.end method

.method public static native destroyEncoder(J)V
.end method

.method public static native encode(J[SII)[B
.end method

.method public static native initOpusDecoder(I)J
.end method

.method public static native initOpusEncoder(I)J
.end method

.method public static native ogg(J[BIII)[B
.end method

.method public static native oggHead(I)[B
.end method
