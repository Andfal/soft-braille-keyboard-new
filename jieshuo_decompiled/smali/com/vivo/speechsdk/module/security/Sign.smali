.class public Lcom/vivo/speechsdk/module/security/Sign;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "speech_sec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/speechsdk/module/security/Sign;->a:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/speechsdk/module/security/Sign;->a:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/vivo/speechsdk/module/security/Sign;->a:Z

    return v0
.end method

.method public static native generateSignature(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native hash(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nonce(I)Ljava/lang/String;
.end method

.method public static native sign([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method
