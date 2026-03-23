.class final Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$CancelRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$CancelRunnable;->a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$CancelRunnable;->a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->cancel()V

    return-void
.end method
