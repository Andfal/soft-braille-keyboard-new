.class public Lcom/vivo/speechsdk/module/vad/VadCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/vad/a;


# static fields
.field private static final a:Ljava/lang/String; = "VadCheck"

.field private static b:Z = false

.field private static final c:Ljava/lang/String; = "libvad_check.so"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "vad_check"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/speechsdk/module/vad/VadCheck;->b:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/speechsdk/module/vad/VadCheck;->b:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-boolean v0, Lcom/vivo/speechsdk/module/vad/VadCheck;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "libvad_check.so"

    return-object v0
.end method

.method public native check([SLcom/vivo/speechsdk/module/vad/VadAudio;)V
.end method

.method public native clear()V
.end method

.method public native getVadInnerDelay()I
.end method

.method public native getVersion()Ljava/lang/String;
.end method

.method public native init(Ljava/lang/String;IZ)Z
.end method
