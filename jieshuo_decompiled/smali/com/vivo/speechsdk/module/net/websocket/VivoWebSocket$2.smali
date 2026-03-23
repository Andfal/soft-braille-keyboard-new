.class Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->connect(Ly2/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly2/Request;

.field final synthetic b:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;Ly2/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$2;->b:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$2;->a:Ly2/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ly2/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$2;->b:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->failWebSocket(Ljava/lang/Exception;Ly2/Response;)V

    return-void
.end method

.method public onResponse(Ly2/Call;Ly2/Response;)V
    .locals 0

    sget-object p1, Lz2/b;->instance:Lz2/b;

    invoke-virtual {p1, p2}, Lz2/b;->exchange(Ly2/Response;)Ld3/Exchange;

    const/4 p1, 0x0

    throw p1
.end method
