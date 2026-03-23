.class final Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field a:I

.field b:J

.field c:Z

.field d:Z

.field final synthetic e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 7

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->d:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->a:I

    iget-object v0, v1, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->f:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->c:Z

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;IJZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->d:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->h:Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 7

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->d:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->a:I

    iget-object v0, v1, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->f:Lm3/e;

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->c:Z

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;IJZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget-object v0, v0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->c:Lm3/f;

    invoke-interface {v0}, Lm3/a0;->timeout()Lm3/d0;

    move-result-object v0

    return-object v0
.end method

.method public write(Lm3/e;J)V
    .locals 6

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget-object v0, v0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->f:Lm3/e;

    invoke-virtual {v0, p1, p2, p3}, Lm3/e;->write(Lm3/e;J)V

    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->c:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->b:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget-object p1, p1, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->f:Lm3/e;

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget-object p3, p3, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->f:Lm3/e;

    invoke-virtual {p3}, Lm3/e;->g()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->e:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->a:I

    iget-boolean v4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->c:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;IJZZ)V

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter$FrameSink;->c:Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
