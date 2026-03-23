.class public Lcom/vivo/speechsdk/asr/api/VADEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/IEngine;
.implements Lcom/vivo/speechsdk/asr/api/IVad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/api/IEngine<",
        "Lcom/vivo/speechsdk/api/InitListener;",
        ">;",
        "Lcom/vivo/speechsdk/asr/api/IVad;"
    }
.end annotation


# static fields
.field private static final STATUS_DESTROYED:I = 0x2

.field private static final STATUS_INITED:I = 0x1

.field private static final STATUS_UNINIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VADEngine"

.field private static sEngine:Lcom/vivo/speechsdk/asr/api/VADEngine;


# instance fields
.field private mInitListener:Lcom/vivo/speechsdk/a/h/b;

.field private volatile mStatus:I

.field private mVadHandler:Lcom/vivo/speechsdk/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    return-void
.end method

.method public static createEngine()Lcom/vivo/speechsdk/asr/api/VADEngine;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/asr/api/VADEngine;->sEngine:Lcom/vivo/speechsdk/asr/api/VADEngine;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/asr/api/VADEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/asr/api/VADEngine;->sEngine:Lcom/vivo/speechsdk/asr/api/VADEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/asr/api/VADEngine;

    invoke-direct {v1}, Lcom/vivo/speechsdk/asr/api/VADEngine;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/asr/api/VADEngine;->sEngine:Lcom/vivo/speechsdk/asr/api/VADEngine;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/vivo/speechsdk/asr/api/VADEngine;->sEngine:Lcom/vivo/speechsdk/asr/api/VADEngine;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized check([B)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/a/f;->check([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/f;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized event(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/a/f;->event(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized init(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VADEngine init SpeechSdk VERSION "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "5.2.4.00"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, " BUILD "

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "240725_3af788f8"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VADEngine"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/vivo/speechsdk/a/h/b;

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/a/h/b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/a/h/b;->a(Lcom/vivo/speechsdk/api/InitListener;)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    new-instance p2, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v0, 0x7533

    invoke-direct {p2, v0}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/a/h/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    new-instance p2, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v0, 0x4e22

    invoke-direct {p2, v0}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/a/h/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget p2, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    if-ne p2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    :goto_1
    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/h/b;->onSuccess()V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance p2, Lcom/vivo/speechsdk/a/f;

    invoke-direct {p2}, Lcom/vivo/speechsdk/a/f;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/a/f;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput v2, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    new-instance p2, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v0, 0x2af8

    invoke-direct {p2, v0}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/a/h/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isDestroy()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInit()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IVadListener;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vivo/speechsdk/a/h/e;

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/a/h/e;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/a/h/e;->a(Lcom/vivo/speechsdk/asr/api/IVadListener;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/speechsdk/a/f;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IVadListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_2
    :goto_1
    monitor-exit p0

    const/16 p1, 0x7531

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/VADEngine;->mVadHandler:Lcom/vivo/speechsdk/a/f;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/f;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
