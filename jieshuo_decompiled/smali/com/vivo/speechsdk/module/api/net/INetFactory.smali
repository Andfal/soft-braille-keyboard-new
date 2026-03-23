.class public interface abstract Lcom/vivo/speechsdk/module/api/net/INetFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/b;


# static fields
.field public static final DEFAULT_DOMAIN_ASR:I = 0x1

.field public static final DEFAULT_DOMAIN_TTS:I = 0x2

.field public static final OLD_DOMAIN_ASR:I = 0x3

.field public static final OLD_DOMAIN_TTS:I = 0x4

.field public static final TYPE_COMPATIBLE:I = 0x1

.field public static final TYPE_CUSTOM:I = 0x2


# virtual methods
.method public abstract createHttpClient()Lcom/vivo/speechsdk/module/api/net/IHttp;
.end method

.method public abstract createNetworkState()Lcom/vivo/speechsdk/module/api/net/INetworkState;
.end method

.method public abstract createWebSocket(Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;Landroid/os/Looper;II)Lcom/vivo/speechsdk/module/api/net/IWebSocket;
.end method

.method public abstract getDnsFinder()Lcom/vivo/speechsdk/module/api/net/IDnsFinder;
.end method

.method public abstract getDomain(I)Ljava/lang/String;
.end method

.method public abstract getNetMonitor()Lcom/vivo/speechsdk/module/api/net/INetMonitor;
.end method
