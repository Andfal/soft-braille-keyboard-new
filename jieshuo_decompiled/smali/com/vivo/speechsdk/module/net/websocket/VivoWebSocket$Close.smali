.class final Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final a:I

.field final b:Lm3/h;

.field final c:J


# direct methods
.method constructor <init>(ILm3/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;->a:I

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;->b:Lm3/h;

    iput-wide p3, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;->c:J

    return-void
.end method
