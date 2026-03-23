.class Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;-><init>(Ly2/Request;Ly2/g0;Ljava/util/Random;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->g()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->failWebSocket(Ljava/lang/Exception;Ly2/Response;)V

    :cond_0
    return-void
.end method
