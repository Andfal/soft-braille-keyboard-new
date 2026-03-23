.class public final Lcom/vivo/speechsdk/module/api/net/NetworkError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_CONNECTION_RESET:Ljava/lang/String; = "Connection reset"

.field public static final ERROR_NO_ADDRESS:Ljava/lang/String; = "No address associated with hostname"

.field private static final a:Ljava/lang/String; = "NetworkError"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfessionalNetworkCodeByThrowable(Ljava/lang/Throwable;)I
    .locals 2

    if-eqz p0, :cond_c

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No address associated with hostname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x3a99

    goto/16 :goto_0

    :cond_0
    instance-of p0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz p0, :cond_1

    const/16 p0, 0x3b01

    goto :goto_0

    :cond_1
    const/16 p0, 0x3b02

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-eqz v0, :cond_3

    const/16 p0, 0x3b03

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_8

    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_4

    const/16 p0, 0x3b08

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_5

    const/16 p0, 0x3b09

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_6

    const/16 p0, 0x3b0a

    goto :goto_0

    :cond_6
    instance-of p0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p0, :cond_7

    const/16 p0, 0x3b0b

    goto :goto_0

    :cond_7
    const/16 p0, 0x3b04

    goto :goto_0

    :cond_8
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_9

    const/16 p0, 0x3b06

    goto :goto_0

    :cond_9
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Connection reset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0x3b07

    goto :goto_0

    :cond_a
    const/16 p0, 0x3b05

    goto :goto_0

    :cond_b
    const/16 p0, 0x3afe

    goto :goto_0

    :cond_c
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSampleNetworkCodeByThrowable(Ljava/lang/Throwable;)I
    .locals 1

    if-eqz p0, :cond_6

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz p0, :cond_0

    const/16 p0, 0x3b01

    goto :goto_0

    :cond_0
    const/16 p0, 0x3b02

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-eqz v0, :cond_2

    const/16 p0, 0x3b03

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_3

    const/16 p0, 0x3b04

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_4

    const/16 p0, 0x3b06

    goto :goto_0

    :cond_4
    instance-of p0, p0, Ljava/io/IOException;

    if-eqz p0, :cond_5

    const/16 p0, 0x3b05

    goto :goto_0

    :cond_5
    const/16 p0, 0x3afe

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
