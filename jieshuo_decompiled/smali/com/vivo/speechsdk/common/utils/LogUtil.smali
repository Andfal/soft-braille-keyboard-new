.class public Lcom/vivo/speechsdk/common/utils/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mLogger:Lcom/vivo/speechsdk/common/utils/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/vivo/speechsdk/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/vivo/speechsdk/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vivo/speechsdk/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/vivo/speechsdk/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vivo/speechsdk/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static declared-synchronized init()V
    .locals 2

    const-class v0, Lcom/vivo/speechsdk/common/utils/LogUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-direct {v1}, Lcom/vivo/speechsdk/common/utils/Logger;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isPrivateLog()Z
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/Logger;->isPrivateLog()Z

    move-result v0

    return v0
.end method

.method public static varargs printPrivate(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/vivo/speechsdk/common/utils/Logger;->printPrivate(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static setLogValue(I)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/common/utils/Logger;->setLogValue(I)V

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/common/utils/Logger;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/vivo/speechsdk/common/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/vivo/speechsdk/common/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->init()V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/common/utils/LogUtil;->mLogger:Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vivo/speechsdk/common/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
