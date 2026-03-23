.class public Ly0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private volatile d:I

.field private volatile e:I

.field private f:Ljava/lang/String;

.field private g:Lx0/e;

.field private h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ly0/b;->d:I

    const/16 v0, 0x9

    iput v0, p0, Ly0/b;->e:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p1, p0, Ly0/b;->a:Ljava/lang/String;

    return-void
.end method

.method private s()V
    .locals 3

    iget-object v0, p0, Ly0/b;->g:Lx0/e;

    if-eqz v0, :cond_1

    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "unregisterObserver stop"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ly0/b;->g:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly0/b;->g:Lx0/e;

    iget v0, p0, Ly0/b;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Ly0/b;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Ly0/b;->d:I

    iput v0, p0, Ly0/b;->e:I

    invoke-static {}, Ly0/a;->a()Ly0/a;

    move-result-object v0

    invoke-virtual {v0}, Ly0/a;->g()Lz0/d;

    move-result-object v0

    iget-object v1, p0, Ly0/b;->a:Ljava/lang/String;

    iget v2, p0, Ly0/b;->e:I

    invoke-virtual {v0, v1, v2}, Lz0/d;->i(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ly0/c;)I
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ly0/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Ly0/b;->b:J

    invoke-virtual {p1}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p0, Ly0/b;->b:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    invoke-static {}, Lq1/f;->e()Lq1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq1/f;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly0/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ly0/c;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ly0/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Ly0/b;->d:I

    iget p1, p0, Ly0/b;->d:I

    return p1
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Ly0/b;->b:J

    return-wide v0
.end method

.method public c(JJ)V
    .locals 0

    invoke-static {}, Ly0/a;->a()Ly0/a;

    move-result-object p3

    iput-wide p1, p0, Ly0/b;->b:J

    iget-object p1, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ly0/a;->f(Ljava/lang/String;)Ly0/d;

    move-result-object p2

    invoke-virtual {p2, p0}, Ly0/d;->e(Ly0/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(Ll0/f;)V
    .locals 4

    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "onDownloadFailure"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Ly0/b;->d:I

    iput v0, p0, Ly0/b;->e:I

    invoke-static {}, Ly0/a;->a()Ly0/a;

    move-result-object v0

    invoke-virtual {v0}, Ly0/a;->g()Lz0/d;

    move-result-object v1

    iget-object v2, p0, Ly0/b;->a:Ljava/lang/String;

    iget v3, p0, Ly0/b;->e:I

    invoke-virtual {v1, v2, v3}, Lz0/d;->i(Ljava/lang/String;I)V

    iget-object v1, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly0/a;->f(Ljava/lang/String;)Ly0/d;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ly0/d;->f(Ly0/b;Ll0/f;)V

    iget-object v3, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Lx0/e;)V
    .locals 0

    iput-object p1, p0, Ly0/b;->g:Lx0/e;

    return-void
.end method

.method public g(Lz0/d;)Z
    .locals 4

    invoke-static {}, Ly0/e;->b()Ly0/e;

    move-result-object v0

    iget-object v1, p0, Ly0/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly0/e;->e(Ljava/lang/String;)Ly0/c;

    move-result-object v0

    iget v1, p0, Ly0/b;->d:I

    const/4 v2, 0x7

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ly0/b;->a(Ly0/c;)I

    invoke-virtual {p0, p1}, Ly0/b;->h(Lz0/d;)I

    goto :goto_0

    :cond_0
    iget v1, p0, Ly0/b;->d:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    iget v1, p0, Ly0/b;->d:I

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Ly0/b;->a(Ly0/c;)I

    :cond_2
    :goto_0
    iget v0, p0, Ly0/b;->d:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Ly0/b;->e:I

    if-eq v0, v2, :cond_3

    iput v2, p0, Ly0/b;->e:I

    iget-object v0, p0, Ly0/b;->a:Ljava/lang/String;

    iget v1, p0, Ly0/b;->e:I

    invoke-virtual {p1, v0, v1}, Lz0/d;->i(Ljava/lang/String;I)V

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ly0/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--filestate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ly0/b;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--dbstate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ly0/b;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FsFileInfoFlyweight"

    invoke-static {v0, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Ly0/b;->d:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    iget p1, p0, Ly0/b;->d:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    iget p1, p0, Ly0/b;->d:I

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public h(Lz0/d;)I
    .locals 1

    iget-object v0, p0, Ly0/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lz0/d;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lb1/g;->d:Lb1/g;

    invoke-virtual {v0}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lq1/b;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x9

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p0, Ly0/b;->e:I

    iget p1, p0, Ly0/b;->e:I

    return p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly0/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Lq1/b;->h(Ljava/util/Set;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterObserver 1isEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FsFileInfoFlyweight"

    invoke-static {v2, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Lq1/b;->h(Ljava/util/Set;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterObserver 2isEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ly0/b;->s()V

    :cond_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly0/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly0/b;->f:Ljava/lang/String;

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Ly0/b;->d:I

    return v0
.end method

.method public n()Z
    .locals 6

    iget v0, p0, Ly0/b;->d:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Ly0/b;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Ly0/b;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ly0/e;->b()Ly0/e;

    move-result-object v0

    iget-object v1, p0, Ly0/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly0/e;->e(Ljava/lang/String;)Ly0/c;

    move-result-object v0

    invoke-virtual {v0}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v3, p0, Ly0/b;->b:J

    cmp-long v5, v3, v0

    if-ltz v5, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public o()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ly0/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueForDownload fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly0/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--filestate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly0/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FsFileInfoFlyweight"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Ly0/b;->d:I

    return-void
.end method

.method public q()V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Ly0/b;->d:I

    const/4 v0, 0x6

    iput v0, p0, Ly0/b;->e:I

    invoke-static {}, Ly0/a;->a()Ly0/a;

    move-result-object v0

    invoke-virtual {v0}, Ly0/a;->g()Lz0/d;

    move-result-object v0

    iget-object v1, p0, Ly0/b;->a:Ljava/lang/String;

    iget v2, p0, Ly0/b;->e:I

    invoke-virtual {v0, v1, v2}, Lz0/d;->i(Ljava/lang/String;I)V

    return-void
.end method

.method public r()V
    .locals 4

    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "onDownloadSuccess"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    iput v0, p0, Ly0/b;->d:I

    iput v0, p0, Ly0/b;->e:I

    invoke-static {}, Ly0/a;->a()Ly0/a;

    move-result-object v0

    invoke-virtual {v0}, Ly0/a;->g()Lz0/d;

    move-result-object v1

    iget-object v2, p0, Ly0/b;->a:Ljava/lang/String;

    iget v3, p0, Ly0/b;->e:I

    invoke-virtual {v1, v2, v3}, Lz0/d;->i(Ljava/lang/String;I)V

    iget-object v1, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly0/a;->f(Ljava/lang/String;)Ly0/d;

    move-result-object v3

    invoke-virtual {v3, p0}, Ly0/d;->j(Ly0/b;)V

    iget-object v3, p0, Ly0/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
