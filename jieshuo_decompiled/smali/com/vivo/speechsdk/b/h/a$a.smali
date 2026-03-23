.class Lcom/vivo/speechsdk/b/h/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/b/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/b/h/a;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/b/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "AbsFileStore"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v2}, Lcom/vivo/speechsdk/b/h/a;->a(Lcom/vivo/speechsdk/b/h/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/speechsdk/b/h/a;->a(Lcom/vivo/speechsdk/b/h/a;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/b/h/a;->a(Lcom/vivo/speechsdk/b/h/a;Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileStore create file failed !!! | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v3}, Lcom/vivo/speechsdk/b/h/a;->a(Lcom/vivo/speechsdk/b/h/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->c(Lcom/vivo/speechsdk/b/h/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->a()V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    iget-object v0, v0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/b/h/e;->a(Z)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileStore start | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v3}, Lcom/vivo/speechsdk/b/h/a;->a(Lcom/vivo/speechsdk/b/h/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v4}, Lcom/vivo/speechsdk/b/h/a;->a(Lcom/vivo/speechsdk/b/h/a;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/h/a;->d()V

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v2}, Lcom/vivo/speechsdk/b/h/a;->b(Lcom/vivo/speechsdk/b/h/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    iget-object v2, v2, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_2
    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v2}, Lcom/vivo/speechsdk/b/h/a;->c(Lcom/vivo/speechsdk/b/h/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/b/h/b;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/vivo/speechsdk/b/h/b;->a:[B

    if-eqz v3, :cond_3

    iget v4, v2, Lcom/vivo/speechsdk/b/h/b;->b:I

    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    iget-object v5, v5, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    iget v6, v2, Lcom/vivo/speechsdk/b/h/b;->c:I

    invoke-virtual {v5, v3, v6, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_3
    iget-object v3, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    iget v4, v2, Lcom/vivo/speechsdk/b/h/b;->b:I

    invoke-static {v3, v4}, Lcom/vivo/speechsdk/b/h/a;->a(Lcom/vivo/speechsdk/b/h/a;I)I

    iget-object v3, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v3, v2}, Lcom/vivo/speechsdk/b/h/a;->a(Lcom/vivo/speechsdk/b/h/a;Lcom/vivo/speechsdk/b/h/b;)V

    iget-boolean v3, v2, Lcom/vivo/speechsdk/b/h/b;->f:Z

    invoke-static {v2}, Lcom/vivo/speechsdk/b/h/b;->a(Lcom/vivo/speechsdk/b/h/b;)V

    if-eqz v3, :cond_2

    :cond_4
    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/h/a;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->c(Lcom/vivo/speechsdk/b/h/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->a()V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    iget-object v0, v0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AbsFileStore write file failed | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-interface {v0, v3, v2}, Lcom/vivo/speechsdk/b/h/e;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->c(Lcom/vivo/speechsdk/b/h/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->a()V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    iget-object v0, v0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/b/h/e;->a(Z)V

    :cond_6
    return-void

    :goto_1
    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v2}, Lcom/vivo/speechsdk/b/h/a;->c(Lcom/vivo/speechsdk/b/h/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->a()V

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    iget-object v2, v2, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v2}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a$a;->a:Lcom/vivo/speechsdk/b/h/a;

    invoke-static {v2}, Lcom/vivo/speechsdk/b/h/a;->d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/vivo/speechsdk/b/h/e;->a(Z)V

    :cond_7
    throw v0
.end method
