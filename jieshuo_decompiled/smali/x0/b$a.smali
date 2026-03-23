.class public Lx0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lx0/c;

.field final synthetic b:Lx0/b;


# direct methods
.method public constructor <init>(Lx0/b;Lx0/c;)V
    .locals 0

    iput-object p1, p0, Lx0/b$a;->b:Lx0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx0/b$a;->a:Lx0/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7

    iget-object v0, p0, Lx0/b$a;->a:Lx0/c;

    invoke-virtual {v0}, Lx0/c;->g()V

    iget-object v0, p0, Lx0/b$a;->a:Lx0/c;

    invoke-virtual {v0}, Lx0/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadWork start fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadEngine"

    invoke-static {v2, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->h0:Lb1/n;

    const-string v3, "fileId is null"

    :goto_0
    invoke-virtual {v0, v1, v3}, Ld1/c;->f(Lb1/n;Ljava/lang/String;)Ll0/f;

    move-result-object v0

    iget-object v1, p0, Lx0/b$a;->a:Lx0/c;

    invoke-virtual {v1, v0}, Lx0/c;->c(Ll0/f;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lx0/b$a;->b:Lx0/b;

    invoke-static {v3}, Lx0/b;->P(Lx0/b;)Li1/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Li1/a;->d(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/client/model/ModelFileBags;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/baidu/tts/client/model/ModelFileBags;->getUrl(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v4, Lk1/b;

    invoke-direct {v4}, Lk1/b;-><init>()V

    invoke-virtual {v4, v3}, Lk1/b;->g(Z)V

    sget-object v3, Lb1/l;->c:Lb1/l;

    invoke-virtual {v3}, Lb1/l;->b()I

    move-result v3

    invoke-virtual {v4, v3}, Lk1/b;->b(I)V

    iget-object v3, p0, Lx0/b$a;->a:Lx0/c;

    invoke-virtual {v3}, Lx0/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lq1/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Lx0/b$a$a;

    iget-object v6, p0, Lx0/b$a;->a:Lx0/c;

    invoke-direct {v5, p0, v3, v6, v0}, Lx0/b$a$a;-><init>(Lx0/b$a;Ljava/io/File;Lx0/c;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before get fileId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lk1/b;->f(Ljava/lang/String;Lk1/g;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->h0:Lb1/n;

    const-string v3, "url is null"

    goto :goto_0

    :cond_2
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->h0:Lb1/n;

    const-string v3, "urlbags is null"

    goto :goto_0

    :goto_1
    const-string v0, "DownloadWork end"

    invoke-static {v2, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Lx0/c;
    .locals 1

    iget-object v0, p0, Lx0/b$a;->a:Lx0/c;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx0/b$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
