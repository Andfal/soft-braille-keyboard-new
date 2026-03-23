.class final Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final a:I

.field final b:Lm3/h;


# direct methods
.method constructor <init>(ILm3/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;->a:I

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;->b:Lm3/h;

    return-void
.end method
