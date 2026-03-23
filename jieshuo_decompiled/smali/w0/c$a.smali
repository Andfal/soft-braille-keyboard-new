.class public Lw0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lw0/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/client/model/DownloadHandler;

.field final synthetic b:Lw0/c;


# direct methods
.method public constructor <init>(Lw0/c;Lcom/baidu/tts/client/model/DownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lw0/c$a;->b:Lw0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    return-void
.end method


# virtual methods
.method public a()Lw0/a;
    .locals 13

    const-string v0, "Downloader"

    const-string v1, "modelId="

    new-instance v2, Lw0/a;

    invoke-direct {v2}, Lw0/a;-><init>()V

    iget-object v3, p0, Lw0/c$a;->b:Lw0/c;

    invoke-static {v3}, Lw0/c;->D(Lw0/c;)Li1/a;

    move-result-object v3

    invoke-virtual {v3}, Li1/a;->q()Lz0/d;

    move-result-object v3

    iget-object v4, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v4}, Lcom/baidu/tts/client/model/DownloadHandler;->getModelId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lw0/c$a;->b:Lw0/c;

    invoke-static {v5}, Lw0/c;->G(Lw0/c;)Ly0/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Ly0/a;->f(Ljava/lang/String;)Ly0/d;

    move-result-object v5

    :try_start_0
    iget-object v6, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6}, Ly0/d;->l(Lcom/baidu/tts/client/model/DownloadHandler;)V

    invoke-virtual {v5, v3}, Ly0/d;->g(Lz0/d;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v6}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    invoke-virtual {v6, v4}, Lcom/baidu/tts/client/model/Conditions;->appendId(Ljava/lang/String;)V

    iget-object v7, p0, Lw0/c$a;->b:Lw0/c;

    invoke-static {v7}, Lw0/c;->D(Lw0/c;)Li1/a;

    move-result-object v7

    invoke-virtual {v7, v6}, Li1/a;->b(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/tts/client/model/ModelBags;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/baidu/tts/client/model/ModelBags;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6, v3}, Ly0/d;->d(Lcom/baidu/tts/client/model/ModelBags;Lz0/d;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v3

    sget-object v6, Lb1/n;->m0:Lb1/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ld1/c;->f(Lb1/n;Ljava/lang/String;)Ll0/f;

    move-result-object v3

    iget-object v6, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Ly0/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V

    return-object v2

    :cond_2
    :goto_1
    invoke-virtual {v5}, Ly0/d;->o()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lq1/b;->h(Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v3

    sget-object v6, Lb1/n;->j0:Lb1/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ld1/c;->f(Lb1/n;Ljava/lang/String;)Ll0/f;

    move-result-object v3

    iget-object v6, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Ly0/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V

    return-object v2

    :cond_3
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lw0/c$a;->b:Lw0/c;

    invoke-static {v8}, Lw0/c;->G(Lw0/c;)Ly0/a;

    move-result-object v8

    invoke-virtual {v8, v7}, Ly0/a;->h(Ljava/lang/String;)Ly0/c;

    move-result-object v8

    invoke-virtual {v8, v3}, Ly0/c;->c(Lz0/d;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lw0/c$a;->b:Lw0/c;

    invoke-static {v10}, Lw0/c;->D(Lw0/c;)Li1/a;

    move-result-object v10

    invoke-virtual {v10, v9}, Li1/a;->d(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/tts/client/model/ModelFileBags;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/baidu/tts/client/model/ModelFileBags;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lw0/c$a;->b:Lw0/c;

    invoke-static {v7}, Lw0/c;->D(Lw0/c;)Li1/a;

    move-result-object v7

    invoke-virtual {v7}, Li1/a;->p()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/baidu/tts/client/model/ModelFileBags;->generateAbsPath(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v3}, Ly0/c;->b(Lcom/baidu/tts/client/model/ModelFileBags;Lz0/d;)V

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v3

    sget-object v6, Lb1/n;->n0:Lb1/n;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ld1/c;->f(Lb1/n;Ljava/lang/String;)Ll0/f;

    move-result-object v3

    iget-object v6, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Ly0/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V

    return-object v2

    :cond_7
    invoke-virtual {v5}, Ly0/d;->m()V

    invoke-virtual {v5}, Ly0/d;->h()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lq1/b;->h(Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v3

    sget-object v6, Lb1/n;->k0:Lb1/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ld1/c;->f(Lb1/n;Ljava/lang/String;)Ll0/f;

    move-result-object v3

    iget-object v6, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Ly0/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V

    return-object v2

    :cond_8
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lw0/c$a;->b:Lw0/c;

    invoke-static {v8}, Lw0/c;->G(Lw0/c;)Ly0/a;

    move-result-object v8

    invoke-virtual {v8, v7}, Ly0/a;->b(Ljava/lang/String;)Ly0/b;

    move-result-object v8

    invoke-virtual {v8, v4}, Ly0/b;->d(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ly0/b;->g(Lz0/d;)Z

    move-result v9

    invoke-virtual {v8}, Ly0/b;->k()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isNeedDownload="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "--fileId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_c

    invoke-virtual {v8}, Ly0/b;->n()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v8}, Ly0/b;->o()Z

    :cond_a
    new-instance v7, Lx0/c;

    invoke-direct {v7}, Lx0/c;-><init>()V

    invoke-virtual {v7, v8}, Lx0/c;->d(Ly0/b;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before download fileId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lw0/c$a;->b:Lw0/c;

    invoke-static {v9}, Lw0/c;->H(Lw0/c;)Lx0/b;

    move-result-object v9

    invoke-virtual {v9, v7}, Lx0/b;->R(Lx0/c;)Lx0/e;

    move-result-object v7

    invoke-virtual {v8, v7}, Ly0/b;->f(Lx0/e;)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lw0/a;->b(Z)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v8}, Ly0/b;->m()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lw0/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v2}, Lw0/a;->c()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v2}, Lw0/a;->d()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/DownloadHandler;->updateProgress(Ly0/d;)V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v3

    sget-object v6, Lb1/n;->l0:Lb1/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ld1/c;->f(Lb1/n;Ljava/lang/String;)Ll0/f;

    move-result-object v3

    iget-object v6, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Ly0/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    return-object v2

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v3, Lb1/n;->o0:Lb1/n;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ld1/c;->f(Lb1/n;Ljava/lang/String;)Ll0/f;

    move-result-object v0

    iget-object v1, p0, Lw0/c$a;->a:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v1, v0}, Ly0/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V

    return-object v2
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw0/c$a;->a()Lw0/a;

    move-result-object v0

    return-object v0
.end method
