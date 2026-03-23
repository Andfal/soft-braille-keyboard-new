.class public abstract Lcom/unisound/sdk/w;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static g:Z = false

.field private static h:Z = false


# instance fields
.field protected volatile a:Z

.field protected b:Lcom/unisound/sdk/ap;

.field protected c:Lcn/yunzhisheng/asr/a;

.field protected d:[B

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/w;->a:Z

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x64

    aput-byte v2, v1, v0

    iput-object v1, p0, Lcom/unisound/sdk/w;->d:[B

    iput-object p1, p0, Lcom/unisound/sdk/w;->c:Lcn/yunzhisheng/asr/a;

    iput-object p2, p0, Lcom/unisound/sdk/w;->b:Lcom/unisound/sdk/ap;

    iput-boolean v0, p0, Lcom/unisound/sdk/w;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unisound/sdk/w;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/unisound/sdk/w;->a:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x64

    aput-byte v1, v0, p3

    iput-object v0, p0, Lcom/unisound/sdk/w;->d:[B

    iput-object p1, p0, Lcom/unisound/sdk/w;->c:Lcn/yunzhisheng/asr/a;

    iput-object p2, p0, Lcom/unisound/sdk/w;->b:Lcom/unisound/sdk/ap;

    iput-boolean p3, p0, Lcom/unisound/sdk/w;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unisound/sdk/w;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/unisound/sdk/w;->g:Z

    return-void
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/unisound/sdk/w;->h:Z

    return-void
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/sdk/w;->g:Z

    return v0
.end method

.method public static m()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/sdk/w;->h:Z

    return v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/w;->b:Lcom/unisound/sdk/ap;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ap;->b(Z)V

    :cond_0
    return-void
.end method

.method protected a(Z[BII)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/w;->b:Lcom/unisound/sdk/ap;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/ap;->a(Z[BII)V

    :cond_0
    return-void
.end method

.method protected a([B)V
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/unisound/sdk/w;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/a;->v()I

    move-result p1

    iget-object v0, p0, Lcom/unisound/sdk/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/unisound/sdk/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    if-lt v2, p1, :cond_0

    iput-boolean v1, p0, Lcom/unisound/sdk/w;->e:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()V
.end method

.method protected abstract c()[B
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InputSourceThread::stopRecording"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/w;->a:Z

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/w;->a:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/w;->b:Lcom/unisound/sdk/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->d()V

    const-string v0, "InputSourceThread::cancel"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/w;->b:Lcom/unisound/sdk/ap;

    :cond_0
    return-void
.end method

.method protected h()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/w;->b:Lcom/unisound/sdk/ap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ap;->i()V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/w;->b:Lcom/unisound/sdk/ap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ap;->j()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/w;->a:Z

    return v0
.end method

.method public k()V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->g()V

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    const-string v0, "InputSourceThread::waitEnd()"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "InputSourceThread::VAD destory"

    const-string v1, "Recording InputSource Thread start"

    invoke-static {v1}, Lcom/unisound/common/r;->g(Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/sdk/w;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/w;->a(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/unisound/sdk/w;->e()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->f()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->c()[B

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/unisound/sdk/w;->e:Z

    if-nez v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/unisound/sdk/w;->a([B)V

    :cond_1
    iget-boolean v4, p0, Lcom/unisound/sdk/w;->e:Z

    if-eqz v4, :cond_0

    array-length v4, v2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/unisound/sdk/w;->a(Z[BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/unisound/sdk/w;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lcom/unisound/sdk/w;->b()V

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->b()V

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->i()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/unisound/sdk/w;->h()V

    const-string v0, "recording stopped"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :goto_2
    const-string v0, "Recording InputSource Thread stop"

    invoke-static {v0}, Lcom/unisound/common/r;->g(Ljava/lang/String;)V

    return-void

    :goto_3
    invoke-virtual {p0}, Lcom/unisound/sdk/w;->b()V

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    throw v1
.end method
