.class public abstract Ly2/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ly2/f0;ILjava/lang/String;)V
    .locals 0

    const-string p2, "webSocket"

    invoke-static {p1, p2}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reason"

    invoke-static {p3, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onClosing(Ly2/f0;ILjava/lang/String;)V
    .locals 0

    const-string p2, "webSocket"

    invoke-static {p1, p2}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reason"

    invoke-static {p3, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ly2/f0;Ljava/lang/Throwable;Ly2/Response;)V
    .locals 0

    const-string p3, "webSocket"

    invoke-static {p1, p3}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ly2/f0;Ljava/lang/String;)V
    .locals 1

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "text"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ly2/f0;Lm3/h;)V
    .locals 1

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bytes"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Ly2/f0;Ly2/Response;)V
    .locals 1

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
