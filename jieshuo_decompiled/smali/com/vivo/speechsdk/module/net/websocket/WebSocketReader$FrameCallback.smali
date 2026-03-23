.class public interface abstract Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onReadClose(ILjava/lang/String;)V
.end method

.method public abstract onReadMessage(Ljava/lang/String;)V
.end method

.method public abstract onReadMessage(Lm3/h;)V
.end method

.method public abstract onReadPing(Lm3/h;)V
.end method

.method public abstract onReadPong(Lm3/h;)V
.end method
