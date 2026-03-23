.class public Ly3/s0;
.super Ly3/r0;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/w;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/w0;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:[Ljava/lang/String;

.field private E:[Z

.field private F:I

.field private G:Z

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/w;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/p0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ly3/r0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/s0;->t:I

    iput v0, p0, Ly3/s0;->u:I

    iput v0, p0, Ly3/s0;->x:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly3/s0;->A:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ly3/s0;->B:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Ly3/s0;->C:I

    iput v0, p0, Ly3/s0;->F:I

    iput-object p0, p0, Ly3/r0;->r:Ly3/s0;

    const/16 v0, 0x8b

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Ly3/r0;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Ly3/s0;->t:I

    iput p1, p0, Ly3/s0;->u:I

    iput p1, p0, Ly3/s0;->x:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ly3/s0;->A:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ly3/s0;->B:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Ly3/s0;->C:I

    iput p1, p0, Ly3/s0;->F:I

    iput-object p0, p0, Ly3/r0;->r:Ly3/s0;

    const/16 p1, 0x8b

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public Q0(Ly3/w;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/s0;->y:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/s0;->y:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Ly3/s0;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ly3/s0;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public R0(Ly3/p0;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/s0;->z:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/s0;->z:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Ly3/s0;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ly3/s0;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lw3/g2;->R(II)V

    return-void
.end method

.method S0(Ly3/w0;)V
    .locals 2

    iget-object v0, p0, Ly3/s0;->D:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p1}, Ly3/w0;->b()I

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_1

    iget v0, p0, Ly3/s0;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ly3/s0;->C:I

    :cond_1
    iget-object v0, p0, Ly3/s0;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public T0(Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ly3/r0;->p:Ljava/util/Map;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ly3/s0;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ly3/s0;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/w0;

    invoke-virtual {v2}, Ly3/w0;->a()Ly3/r0;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Ly3/s0;->B:Ljava/util/List;

    :cond_2
    iget-object p1, p0, Ly3/s0;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Ly3/s0;->D:[Ljava/lang/String;

    iget-object p1, p0, Ly3/s0;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Ly3/s0;->E:[Z

    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Ly3/s0;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Ly3/s0;->B:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/w0;

    iget-object v2, p0, Ly3/s0;->D:[Ljava/lang/String;

    invoke-virtual {v1}, Ly3/w0;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    iget-object v2, p0, Ly3/s0;->E:[Z

    invoke-virtual {v1}, Ly3/w0;->b()I

    move-result v3

    const/16 v4, 0x9d

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    aput-boolean v3, v2, p1

    invoke-virtual {v1, p1}, Ly3/w0;->h(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public U0()I
    .locals 1

    iget v0, p0, Lw3/g2;->e:I

    return v0
.end method

.method public V0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/s0;->w:Ljava/lang/String;

    return-object v0
.end method

.method public W0()I
    .locals 1

    iget v0, p0, Ly3/s0;->u:I

    return v0
.end method

.method public X0()I
    .locals 1

    iget v0, p0, Ly3/s0;->t:I

    return v0
.end method

.method public Y0()I
    .locals 1

    iget-object v0, p0, Ly3/s0;->y:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public Z0(I)Ly3/w;
    .locals 1

    iget-object v0, p0, Ly3/s0;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly3/w;

    return-object p1
.end method

.method public a1(Lw3/g2;)I
    .locals 2

    iget-object v0, p0, Ly3/s0;->D:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p1}, Lw3/g2;->F()Ly3/r0;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, p1, Ly3/i0;

    if-eqz v1, :cond_1

    check-cast p1, Ly3/i0;

    invoke-virtual {p1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly3/r0;->I0(Ljava/lang/String;)Ly3/w0;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ly3/w0;->d()I

    move-result p1

    :goto_1
    return p1
.end method

.method public b1()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly3/s0;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly3/s0;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c1()[Z
    .locals 1

    iget-object v0, p0, Ly3/s0;->D:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/s0;->E:[Z

    return-object v0
.end method

.method public d1()I
    .locals 1

    iget-object v0, p0, Ly3/s0;->D:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/s0;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e1()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/s0;->D:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/s0;->D:[Ljava/lang/String;

    return-object v0
.end method

.method public f1()I
    .locals 1

    iget v0, p0, Ly3/s0;->C:I

    return v0
.end method

.method public g1()I
    .locals 1

    iget-object v0, p0, Ly3/s0;->z:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public h1(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/s0;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly3/p0;

    invoke-virtual {p1}, Ly3/p0;->v0()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i1(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/s0;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly3/p0;

    invoke-virtual {p1}, Ly3/p0;->w0()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/s0;->v:Ljava/lang/String;

    return-object v0
.end method

.method public k1()Z
    .locals 1

    iget-boolean v0, p0, Ly3/s0;->G:Z

    return v0
.end method

.method public l1(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lw3/g2;->e:I

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_1
    iput p1, p0, Lw3/g2;->e:I

    return-void
.end method

.method public m1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly3/s0;->w:Ljava/lang/String;

    return-void
.end method

.method public n1(II)V
    .locals 0

    iput p1, p0, Ly3/s0;->t:I

    iput p2, p0, Ly3/s0;->u:I

    return-void
.end method

.method public o1(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ly3/s0;->x:I

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_1
    iput p1, p0, Ly3/s0;->x:I

    return-void
.end method

.method public p1(Z)V
    .locals 0

    iput-boolean p1, p0, Ly3/s0;->G:Z

    return-void
.end method

.method public q1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly3/s0;->v:Ljava/lang/String;

    return-void
.end method
