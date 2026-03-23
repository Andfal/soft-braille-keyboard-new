.class public interface abstract Lcom/vivo/speechsdk/module/api/net/IWebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_ACTIVE:I = 0x8

.field public static final STATE_CLOSED:I = 0x40

.field public static final STATE_CLOSING:I = 0x20

.field public static final STATE_ERROR:I = 0x10

.field public static final STATE_HAND_SHAKE:I = 0x1

.field public static final STATE_IDLE:I = 0x4

.field public static final STATE_NOT_YET_CONNECTED:I = 0x0

.field public static final STATE_OPEN:I = 0x2


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close(ILjava/lang/String;)Z
.end method

.method public abstract connect(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
.end method

.method public abstract ping(Ljava/lang/String;)V
.end method

.method public abstract queueSize()J
.end method

.method public abstract send(Ljava/lang/String;)Z
.end method

.method public abstract send([B)Z
.end method

.method public abstract setEventListener(Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract state()I
.end method
