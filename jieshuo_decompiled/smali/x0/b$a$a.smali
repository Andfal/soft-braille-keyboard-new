.class Lx0/b$a$a;
.super Lx0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/b$a;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lx0/b$a;


# direct methods
.method constructor <init>(Lx0/b$a;Ljava/io/File;Lx0/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lx0/b$a$a;->j:Lx0/b$a;

    iput-object p4, p0, Lx0/b$a$a;->i:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lx0/g;-><init>(Ljava/io/File;Lx0/c;)V

    return-void
.end method


# virtual methods
.method public h(ILjava/util/Map;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2isInterrupted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx0/b$a$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadEngine"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/b$a$a;->j:Lx0/b$a;

    iget-object v0, v0, Lx0/b$a;->b:Lx0/b;

    invoke-virtual {v0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lx0/g;->h(ILjava/util/Map;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public i(ILjava/util/Map;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1isInterrupted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadEngine"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/b$a$a;->j:Lx0/b$a;

    iget-object v0, v0, Lx0/b$a;->b:Lx0/b;

    invoke-virtual {v0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lx0/g;->i(ILjava/util/Map;Ljava/lang/Throwable;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public j(JJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx0/b$a$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--written="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadEngine"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/b$a$a;->j:Lx0/b$a;

    iget-object v0, v0, Lx0/b$a;->b:Lx0/b;

    invoke-virtual {v0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lx0/g;->j(JJ)V

    :cond_0
    return-void
.end method
