.class Lcom/vivo/speechsdk/module/record/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/record/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/record/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/record/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recorder thread start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/b;->d(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioRecord"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->d(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecordStart()V

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/b;->e(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/record/b;->d(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v6

    if-ne v6, v2, :cond_6

    iget-object v6, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/record/b;->e(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v7

    invoke-virtual {v6, v3, v4, v7}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    if-ltz v6, :cond_1

    iget-object v7, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/record/b;->e(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v7

    if-gt v6, v7, :cond_1

    iget-object v7, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v7

    if-eqz v7, :cond_1

    const/16 v7, 0x19

    const/16 v8, 0x3e7

    if-ge v5, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-virtual {v7, v3}, Lcom/vivo/speechsdk/module/record/b;->a([B)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v5, 0x3e7

    :cond_2
    iget-object v7, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v7

    :goto_1
    invoke-interface {v7, v3, v6}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecord([BI)V

    goto :goto_0

    :cond_3
    if-ne v5, v8, :cond_4

    iget-object v7, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v7

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/record/b;->f(Lcom/vivo/speechsdk/module/record/b;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v7

    invoke-interface {v7, v3, v6}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecord([BI)V

    iget-object v6, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v6

    const-string v7, "AudioRecord"

    const-string v8, "warning !!! all byte is zero"

    invoke-interface {v6, v7, v8}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v3

    const-string v4, "record is busy"

    const/16 v5, 0x2f49

    invoke-interface {v3, v5, v4}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onError(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/b;->g(Lcom/vivo/speechsdk/module/record/b;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_6
    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/b;->h(Lcom/vivo/speechsdk/module/record/b;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->d(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v4

    if-ne v4, v1, :cond_7

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;I)I

    :cond_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v1

    const-string v2, "AudioRecord"

    const-string v3, "stop audioRecord"

    invoke-interface {v1, v2, v3, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->i(Lcom/vivo/speechsdk/module/record/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/record/b;->release()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    const-string v1, "AudioRecord"

    const-string v2, "autoRelease"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v0

    if-eqz v0, :cond_e

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v3

    goto/16 :goto_5

    :catch_1
    move-exception v3

    :try_start_8
    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v4

    const-string v5, "AudioRecord"

    const-string v6, "exception with recording"

    invoke-interface {v4, v5, v6, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recording error | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f48

    invoke-interface {v4, v5, v3}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onError(ILjava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/b;->g(Lcom/vivo/speechsdk/module/record/b;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/b;->h(Lcom/vivo/speechsdk/module/record/b;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_9
    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->d(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v4

    if-ne v4, v1, :cond_b

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;I)I

    :cond_b
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v1

    const-string v2, "AudioRecord"

    const-string v3, "stop audioRecord"

    invoke-interface {v1, v2, v3, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->i(Lcom/vivo/speechsdk/module/record/b;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/record/b;->release()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    const-string v1, "AudioRecord"

    const-string v2, "autoRelease"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v0

    if-eqz v0, :cond_e

    :goto_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecordStop()V

    :cond_e
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    const-string v1, "AudioRecord"

    const-string v2, " recorder thread end !!! "

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :goto_5
    iget-object v4, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/record/b;->h(Lcom/vivo/speechsdk/module/record/b;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_c
    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/b;->d(Lcom/vivo/speechsdk/module/record/b;)I

    move-result v5

    if-ne v5, v1, :cond_f

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;I)I

    :cond_f
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v1

    const-string v2, "AudioRecord"

    const-string v4, "stop audioRecord"

    invoke-interface {v1, v2, v4, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->i(Lcom/vivo/speechsdk/module/record/b;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/record/b;->release()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    const-string v1, "AudioRecord"

    const-string v2, "autoRelease"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecordStop()V

    :cond_12
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b$b;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    const-string v1, "AudioRecord"

    const-string v2, " recorder thread end !!! "

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0
.end method
