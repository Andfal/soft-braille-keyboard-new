.class public Lcom/unisound/sdk/ca;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static a:I = 0x25800


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/unisound/sdk/by;

.field private e:Lcom/unisound/sdk/bz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/bz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ca;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/ca;->c:Z

    iput-object p1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    return-void
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ca;->d:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/by;->a(I)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ca;->d:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/by;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private e()Lcom/unisound/sdk/aa;
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unisound/sdk/aa;

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/aa;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v2}, Lcom/unisound/sdk/aa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/aa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->g(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ca;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ca;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "NLU processing begin"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/sdk/ca;->e()Lcom/unisound/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/bz;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/aa;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/aa;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->j(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/aa;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/aa;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->l(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/aa;->b(J)V

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/aa;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->p(Ljava/lang/String;)V

    sget-object v1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/ca;->e:Lcom/unisound/sdk/bz;

    invoke-virtual {v1}, Lcom/unisound/sdk/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/ca;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->h(Ljava/lang/String;)V

    new-instance v1, Lcom/unisound/sdk/bx;

    invoke-direct {v1}, Lcom/unisound/sdk/bx;-><init>()V

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/bx;->c(Lcom/unisound/sdk/aa;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ca;->c:Z

    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/sdk/ca;->c()V

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, p1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    const-string p1, "USCNluThread::waitEnd()"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/by;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ca;->d:Lcom/unisound/sdk/by;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ca;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/ca;->c:Z

    return v0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/ca;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ca;->d:Lcom/unisound/sdk/by;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ca;->d:Lcom/unisound/sdk/by;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-boolean v0, p0, Lcom/unisound/sdk/ca;->c:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/unisound/sdk/ca;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, -0x1155a

    goto :goto_0

    :cond_0
    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, -0x11559

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/unisound/sdk/ca;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/unisound/sdk/ca;->b(I)V

    :cond_2
    return-void
.end method
