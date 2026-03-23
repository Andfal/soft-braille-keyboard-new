.class public Ly0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ly0/a;

.field private f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/baidu/tts/client/model/DownloadHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ly0/d;->d:J

    invoke-static {}, Ly0/a;->a()Ly0/a;

    move-result-object v0

    iput-object v0, p0, Ly0/d;->e:Ly0/a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p1, p0, Ly0/d;->a:Ljava/lang/String;

    return-void
.end method

.method private s()V
    .locals 3

    iget-object v0, p0, Ly0/d;->e:Ly0/a;

    iget-object v1, p0, Ly0/d;->b:Ljava/lang/String;

    iget-object v2, p0, Ly0/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ly0/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ly0/d;->e:Ly0/a;

    iget-object v1, p0, Ly0/d;->c:Ljava/lang/String;

    iget-object v2, p0, Ly0/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ly0/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    invoke-direct {p0}, Ly0/d;->s()V

    return-void
.end method

.method public b(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .locals 1

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lcom/baidu/tts/client/model/DownloadHandler;->updateFinish(Ly0/d;Ll0/f;)V

    invoke-virtual {p0, p1}, Ly0/d;->i(Lcom/baidu/tts/client/model/DownloadHandler;)V

    return-void
.end method

.method public d(Lcom/baidu/tts/client/model/ModelBags;Lz0/d;)V
    .locals 0

    invoke-virtual {p2, p1}, Lz0/d;->g(Lcom/baidu/tts/client/model/ModelBags;)V

    invoke-virtual {p0, p2}, Ly0/d;->g(Lz0/d;)Z

    return-void
.end method

.method public e(Ly0/b;)V
    .locals 1

    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/client/model/DownloadHandler;->updateProgress(Ly0/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ly0/b;Ll0/f;)V
    .locals 1

    const-string p1, "ModelFlyweight"

    const-string v0, "onFileDownloadFailure"

    invoke-static {p1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {p0, v0, p2}, Ly0/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lz0/d;)Z
    .locals 3

    iget-object v0, p0, Ly0/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lz0/d;->o(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lb1/g;->u:Lb1/g;

    invoke-virtual {v2}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lq1/b;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ly0/d;->b:Ljava/lang/String;

    sget-object v2, Lb1/g;->v:Lb1/g;

    invoke-virtual {v2}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lq1/b;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly0/d;->c:Ljava/lang/String;

    iget-object v0, p0, Ly0/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Ly0/d;->c:Ljava/lang/String;

    invoke-static {v2}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Ly0/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lz0/d;->a(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public h()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Ly0/e;->b()Ly0/e;

    move-result-object v1

    iget-object v2, p0, Ly0/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ly0/e;->e(Ljava/lang/String;)Ly0/c;

    move-result-object v2

    iget-object v3, p0, Ly0/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ly0/e;->e(Ljava/lang/String;)Ly0/c;

    move-result-object v1

    invoke-virtual {v2}, Ly0/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ly0/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public i(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .locals 4

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Lq1/b;->h(Ljava/util/Set;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener 1isEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModelFlyweight"

    invoke-static {v2, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Lq1/b;->h(Ljava/util/Set;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener 2isEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ly0/d;->s()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListener item="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public j(Ly0/b;)V
    .locals 2

    invoke-virtual {p0}, Ly0/d;->r()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFileDownloadSuccess isAllFileDownloadSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelFlyweight"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ly0/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;Ll0/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k()J
    .locals 2

    invoke-virtual {p0}, Ly0/d;->m()V

    iget-wide v0, p0, Ly0/d;->d:J

    return-wide v0
.end method

.method public l(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly0/d;->b(Lcom/baidu/tts/client/model/DownloadHandler;)V

    invoke-virtual {p1, p0}, Lcom/baidu/tts/client/model/DownloadHandler;->updateStart(Ly0/d;)V

    return-void
.end method

.method public m()V
    .locals 5

    iget-wide v0, p0, Ly0/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ly0/d;->n()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 5

    invoke-static {}, Ly0/e;->b()Ly0/e;

    move-result-object v0

    iget-object v1, p0, Ly0/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly0/e;->e(Ljava/lang/String;)Ly0/c;

    move-result-object v1

    invoke-virtual {v1}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ly0/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly0/e;->e(Ljava/lang/String;)Ly0/c;

    move-result-object v0

    invoke-virtual {v0}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Ly0/d;->d:J

    return-void
.end method

.method public o()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Ly0/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ly0/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly0/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public q()J
    .locals 4

    iget-object v0, p0, Ly0/d;->e:Ly0/a;

    iget-object v1, p0, Ly0/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly0/a;->j(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Ly0/d;->e:Ly0/a;

    iget-object v3, p0, Ly0/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ly0/a;->j(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public r()Z
    .locals 3

    iget-object v0, p0, Ly0/d;->e:Ly0/a;

    iget-object v1, p0, Ly0/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly0/a;->k(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ly0/d;->e:Ly0/a;

    iget-object v2, p0, Ly0/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ly0/a;->k(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
