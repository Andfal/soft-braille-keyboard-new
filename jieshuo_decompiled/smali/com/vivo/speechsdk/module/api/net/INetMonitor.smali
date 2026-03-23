.class public interface abstract Lcom/vivo/speechsdk/module/api/net/INetMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract monitorStart()V
.end method

.method public abstract monitorStop()V
.end method

.method public abstract register(Lcom/vivo/speechsdk/module/api/net/IWebSocket;)V
.end method

.method public abstract setListener(Lcom/vivo/speechsdk/module/api/net/NetQualityListener;)V
.end method

.method public abstract setPolicy(Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;)V
.end method

.method public abstract unregister(Lcom/vivo/speechsdk/module/api/net/IWebSocket;)V
.end method
