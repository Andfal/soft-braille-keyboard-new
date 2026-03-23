.class public interface abstract Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PingListener"
.end annotation


# static fields
.field public static final EMPTY:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener$1;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener$1;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;->EMPTY:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    return-void
.end method


# virtual methods
.method public abstract onPing(ZLjava/lang/String;)V
.end method

.method public abstract onPong(Ljava/lang/String;)V
.end method
