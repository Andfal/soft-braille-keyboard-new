.class public abstract Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Streams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lm3/f;

.field public final source:Lm3/g;


# direct methods
.method public constructor <init>(ZLm3/g;Lm3/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Streams;->client:Z

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Streams;->source:Lm3/g;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Streams;->sink:Lm3/f;

    return-void
.end method
