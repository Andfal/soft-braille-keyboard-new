.class final Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PingRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingRunnable;->a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingRunnable;->a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(ZLjava/lang/String;)V

    return-void
.end method
