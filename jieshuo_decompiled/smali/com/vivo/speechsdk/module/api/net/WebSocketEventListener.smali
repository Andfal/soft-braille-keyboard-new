.class public abstract Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener$1;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener$1;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->EMPTY:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessage([B)V
    .locals 0

    return-void
.end method

.method public onOpen(Z)V
    .locals 0

    return-void
.end method

.method public onPing(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPong(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public querySize(J)V
    .locals 0

    return-void
.end method
