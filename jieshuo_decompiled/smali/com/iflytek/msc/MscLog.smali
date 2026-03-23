.class public Lcom/iflytek/msc/MscLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MscLog"

.field private static mLog:Ljava/lang/StringBuffer;

.field private static mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mOldestIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLog(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0

    :try_start_0
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    sget v2, Lcom/iflytek/msc/MscLog;->mOldestIndex:I

    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/iflytek/msc/MscLog;->mOldestIndex:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/iflytek/msc/MscLog;->mOldestIndex:I

    if-lt p0, v1, :cond_2

    const/4 p0, 0x0

    sput p0, Lcom/iflytek/msc/MscLog;->mOldestIndex:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const-class p0, Lcom/iflytek/msc/MscLog;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class p0, Lcom/iflytek/msc/MscLog;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0

    throw p0
.end method

.method public static appendLog(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0

    :try_start_0
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    :try_start_1
    const-class p0, Lcom/iflytek/msc/MscLog;

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class p0, Lcom/iflytek/msc/MscLog;

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_2
    sget-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    :cond_1
    sget-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Speech Log = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MscLog"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p0, Lcom/iflytek/msc/MscLog;

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0

    throw p0
.end method

.method public static endLog()V
    .locals 2

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0

    :try_start_0
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MscLog;->addLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    :cond_0
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1

    throw v0
.end method

.method public static getLogs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0

    :try_start_0
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1

    throw v0
.end method

.method public static reset()V
    .locals 2

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0

    :try_start_0
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/iflytek/msc/MscLog;->mOldestIndex:I

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    sput-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1

    throw v0
.end method

.method public static startLog(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0

    :try_start_0
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    :try_start_1
    const-class p0, Lcom/iflytek/msc/MscLog;

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class p0, Lcom/iflytek/msc/MscLog;

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_2
    sget-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MscLog;->addLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p0, Lcom/iflytek/msc/MscLog;->mLog:Ljava/lang/StringBuffer;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-class p0, Lcom/iflytek/msc/MscLog;

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0

    throw p0
.end method

.method public static toLogString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0

    :try_start_0
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLogs.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MscLog"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/iflytek/msc/MscLog;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/iflytek/msc/MscLog;->reset()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1

    goto :goto_3

    :cond_3
    :goto_2
    :try_start_2
    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class v0, Lcom/iflytek/msc/MscLog;

    monitor-exit v0

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const-class v1, Lcom/iflytek/msc/MscLog;

    monitor-exit v1

    throw v0
.end method
