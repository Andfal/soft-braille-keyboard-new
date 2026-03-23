.class Lcom/vivo/speechsdk/module/record/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/record/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/record/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/record/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "FileRecord"

    const-string v1, "file record thread start"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/c;->a(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const-string v1, "FileRecord"

    const-string v3, "file recorder start"

    invoke-static {v1, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecordStart()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v0, 0x0

    const/16 v1, 0x68

    const/16 v3, 0x67

    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/record/c;->c(Lcom/vivo/speechsdk/module/record/c;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->d(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->e(Lcom/vivo/speechsdk/module/record/c;)J

    move-result-wide v5

    :goto_0
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->e(Lcom/vivo/speechsdk/module/record/c;)J

    move-result-wide v5

    const-wide/16 v7, 0x2c

    add-long/2addr v5, v7

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->a(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v5

    if-ne v5, v2, :cond_5

    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->f(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v5

    new-array v5, v5, [B

    iget-object v6, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/record/c;->f(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    if-gtz v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v8}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v8

    if-eqz v8, :cond_3

    new-array v8, v6, [B

    invoke-static {v5, v7, v8, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v5

    invoke-interface {v5, v8, v6}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecord([BI)V

    :cond_3
    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->g(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v5

    if-ltz v5, :cond_4

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->h(Lcom/vivo/speechsdk/module/record/c;)Ljava/lang/Thread;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v6, "FileRecord"

    const-string v7, "file record pause"

    invoke-static {v6, v7}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/record/c;->h(Lcom/vivo/speechsdk/module/record/c;)Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    monitor-enter v0

    :try_start_5
    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/c;->a(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/module/record/c;->a(Lcom/vivo/speechsdk/module/record/c;I)I

    :cond_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v4, v0

    :goto_3
    :try_start_7
    const-string v5, "FileRecord"

    const-string v6, "error "

    invoke-static {v5, v6, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v2

    const/16 v5, 0x2f48

    invoke-interface {v2, v5, v0}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onError(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    monitor-enter v0

    :try_start_8
    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/c;->a(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v2

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/module/record/c;->a(Lcom/vivo/speechsdk/module/record/c;I)I

    :cond_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecordStop()V

    :cond_9
    const-string v0, "FileRecord"

    const-string v1, "file record thread stoped !!!"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    :goto_5
    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    monitor-enter v2

    :try_start_a
    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/c;->a(Lcom/vivo/speechsdk/module/record/c;)I

    move-result v5

    if-ne v5, v3, :cond_a

    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v3, v1}, Lcom/vivo/speechsdk/module/record/c;->a(Lcom/vivo/speechsdk/module/record/c;I)I

    :cond_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/c$a;->a:Lcom/vivo/speechsdk/module/record/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/c;->b(Lcom/vivo/speechsdk/module/record/c;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onRecordStop()V

    :cond_b
    const-string v1, "FileRecord"

    const-string v2, "file record thread stoped !!!"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    :catchall_6
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v1
.end method
