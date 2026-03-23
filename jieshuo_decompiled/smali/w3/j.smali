.class public Lw3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lw3/z;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw3/s;->c:Lw3/s;

    iput-object v0, p0, Lw3/j;->a:Lw3/z;

    const/4 v0, 0x0

    iput v0, p0, Lw3/j;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lw3/j;->c:Z

    iput-boolean v1, p0, Lw3/j;->d:Z

    iput-boolean v0, p0, Lw3/j;->e:Z

    iput-boolean v1, p0, Lw3/j;->f:Z

    iput v0, p0, Lw3/j;->g:I

    iput-boolean v1, p0, Lw3/j;->h:Z

    iput-boolean v0, p0, Lw3/j;->i:Z

    iput-boolean v0, p0, Lw3/j;->j:Z

    iput-boolean v0, p0, Lw3/j;->k:Z

    iput-boolean v0, p0, Lw3/j;->q:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw3/j;->r:Ljava/util/Set;

    return-object v0
.end method

.method public final b()Lw3/z;
    .locals 1

    iget-object v0, p0, Lw3/j;->a:Lw3/z;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lw3/j;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->o:Z

    return v0
.end method

.method public e(Lw3/m;)V
    .locals 1

    invoke-virtual {p1}, Lw3/m;->t()Lw3/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/j;->q(Lw3/z;)V

    invoke-virtual {p1}, Lw3/m;->v()I

    move-result v0

    iput v0, p0, Lw3/j;->b:I

    invoke-virtual {p1}, Lw3/m;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lw3/m;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lw3/j;->c:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lw3/m;->E(I)Z

    move-result v0

    iput-boolean v0, p0, Lw3/j;->d:Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lw3/m;->E(I)Z

    move-result v0

    iput-boolean v0, p0, Lw3/j;->e:Z

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lw3/m;->E(I)Z

    move-result v0

    iput-boolean v0, p0, Lw3/j;->i:Z

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lw3/m;->E(I)Z

    move-result v0

    iput-boolean v0, p0, Lw3/j;->j:Z

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lw3/m;->E(I)Z

    move-result v0

    iput-boolean v0, p0, Lw3/j;->f:Z

    invoke-virtual {p1}, Lw3/m;->y()I

    move-result v0

    iput v0, p0, Lw3/j;->g:I

    invoke-virtual {p1}, Lw3/m;->J()Z

    move-result v0

    iput-boolean v0, p0, Lw3/j;->h:Z

    iget-object v0, p1, Lw3/m;->x:Ljava/util/Set;

    iput-object v0, p0, Lw3/j;->r:Ljava/util/Set;

    iget-boolean p1, p1, Lw3/m;->D:Z

    iput-boolean p1, p0, Lw3/j;->k:Z

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->e:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->c:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->p:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->l:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->m:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->d:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->i:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->f:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->n:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lw3/j;->j:Z

    return v0
.end method

.method public q(Lw3/z;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lw3/j;->a:Lw3/z;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
