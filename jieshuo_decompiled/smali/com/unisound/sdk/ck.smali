.class Lcom/unisound/sdk/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/z;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/ci;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->c()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    iget-object v0, v0, Lcom/unisound/sdk/ci;->c:Lcom/unisound/sdk/aq;

    invoke-virtual {v0}, Lcom/unisound/sdk/aq;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x1008

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/VoicePrintRecognizerListener;->onEvent(II)I

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->b(I)V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    iget-object v0, v0, Lcom/unisound/sdk/ci;->c:Lcom/unisound/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aq;->a(I)V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0, p1}, Lcom/unisound/sdk/ci;->a(Lcom/unisound/sdk/ci;I)I

    iget-object p1, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {p1}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x1007

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/VoicePrintRecognizerListener;->onEvent(II)I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/sdk/ci;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/a;->a(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResult : result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , isLast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoicePrintRecognizerInterface"

    invoke-static {v1, v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {p2, p1}, Lcom/unisound/sdk/ci;->a(Lcom/unisound/sdk/ci;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Lcom/unisound/common/VoiceprintResult;

    invoke-direct {p2, p1}, Lcom/unisound/common/VoiceprintResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/unisound/common/VoiceprintResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/unisound/common/VoiceprintResult;->getStatus()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {p1}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unisound/common/VoiceprintResult;->getStatus()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    iget-object v1, v1, Lcom/unisound/sdk/ci;->b:Lcom/unisound/client/ErrorCode;

    invoke-virtual {p2}, Lcom/unisound/common/VoiceprintResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/unisound/client/VoicePrintRecognizerListener;->onError(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {p1}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unisound/common/VoiceprintResult;->getStatus()I

    move-result v0

    invoke-interface {p1, v0, p2}, Lcom/unisound/client/VoicePrintRecognizerListener;->onResult(ILcom/unisound/common/VoiceprintResult;)V

    return-void
.end method

.method public a(Z[BII)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/ci;->a(Z[BII)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    iget-object v0, v0, Lcom/unisound/sdk/ci;->d:Lcom/unisound/sdk/cg;

    invoke-virtual {v0}, Lcom/unisound/sdk/cg;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    iget-object v0, v0, Lcom/unisound/sdk/ci;->d:Lcom/unisound/sdk/cg;

    invoke-virtual {v0}, Lcom/unisound/sdk/cg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-virtual {v0}, Lcom/unisound/sdk/ci;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0xfac

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/VoicePrintRecognizerListener;->onEvent(II)I

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    sget-object v1, Lcom/unisound/common/al;->a:Lcom/unisound/common/al;

    invoke-static {v0, v1}, Lcom/unisound/sdk/ci;->a(Lcom/unisound/sdk/ci;Lcom/unisound/common/al;)Lcom/unisound/common/al;

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->a(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    iget-object v1, v1, Lcom/unisound/sdk/ci;->b:Lcom/unisound/client/ErrorCode;

    const/16 v1, 0x10cd

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unisound/client/VoicePrintRecognizerListener;->onError(ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {p1}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x1008

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/VoicePrintRecognizerListener;->onEvent(II)I

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->c()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    iget-object v0, v0, Lcom/unisound/sdk/ci;->c:Lcom/unisound/sdk/aq;

    invoke-virtual {v0}, Lcom/unisound/sdk/aq;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x1005

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/VoicePrintRecognizerListener;->onEvent(II)I

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    iget-object v0, v0, Lcom/unisound/sdk/ci;->c:Lcom/unisound/sdk/aq;

    invoke-virtual {v0}, Lcom/unisound/sdk/aq;->c()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-virtual {v0}, Lcom/unisound/sdk/ci;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x1006

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/VoicePrintRecognizerListener;->onEvent(II)I

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/ck;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x100a

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/VoicePrintRecognizerListener;->onEvent(II)I

    return-void
.end method
