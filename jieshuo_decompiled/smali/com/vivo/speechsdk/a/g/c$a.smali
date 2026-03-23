.class Lcom/vivo/speechsdk/a/g/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/a/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/a/g/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/a/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Cache_Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-string v0, "CacheInterceptor thread begin "

    const-string v1, "CacheInterceptor"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/a/g/c;->a(Lcom/vivo/speechsdk/a/g/c;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/vivo/speechsdk/a/g/c;->a()[B

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/a/g/c;->b(Lcom/vivo/speechsdk/a/g/c;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/a/g/c;->c(Lcom/vivo/speechsdk/a/g/c;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v4, v0}, Lcom/vivo/speechsdk/a/g/c;->a(Lcom/vivo/speechsdk/a/g/c;Z)Z

    iget-object v4, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    const/16 v5, 0x67

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/a/g/c;->b(Lcom/vivo/speechsdk/a/g/c;I)V

    :cond_0
    iget-object v4, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/a/g/c;->d(Lcom/vivo/speechsdk/a/g/c;)Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/a/g/c;->d(Lcom/vivo/speechsdk/a/g/c;)Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

    move-result-object v4

    array-length v5, v3

    invoke-interface {v4, v3, v5}, Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;->calculate([BI)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    const/16 v6, 0x6c

    invoke-static {v5, v6, v4, v0, v3}, Lcom/vivo/speechsdk/a/g/c;->a(Lcom/vivo/speechsdk/a/g/c;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/a/g/c;->e(Lcom/vivo/speechsdk/a/g/c;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    :goto_2
    iget-object v7, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v7}, Lcom/vivo/speechsdk/a/g/c;->f(Lcom/vivo/speechsdk/a/g/c;)I

    move-result v7

    invoke-static {v4, v5, v6, v7, v3}, Lcom/vivo/speechsdk/a/g/c;->b(Lcom/vivo/speechsdk/a/g/c;IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/g/c;->b(Lcom/vivo/speechsdk/a/g/c;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    const/16 v3, 0x68

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/a/g/c;->a(Lcom/vivo/speechsdk/a/g/c;I)V

    :cond_4
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/c$a;->a:Lcom/vivo/speechsdk/a/g/c;

    const/16 v3, 0x6b

    const/16 v4, 0x8

    invoke-static {v0, v3, v4}, Lcom/vivo/speechsdk/a/g/c;->a(Lcom/vivo/speechsdk/a/g/c;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheInterceptor thread end !!! receive frameCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
