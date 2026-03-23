.class public Ly3/x;
.super Ly3/r0;
.source "SourceFile"


# instance fields
.field private t:Ly3/e;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/y;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ly3/e;

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/r0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/x;->u:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Ly3/x;->w:I

    iput v0, p0, Ly3/x;->x:I

    iput v0, p0, Ly3/x;->y:I

    const/16 v0, 0xa5

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/r0;-><init>(II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ly3/x;->u:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Ly3/x;->w:I

    iput p1, p0, Ly3/x;->x:I

    iput p1, p0, Ly3/x;->y:I

    const/16 p1, 0xa5

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public Q0(Ly3/y;)V
    .locals 1

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/x;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public R0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/x;->v:Ly3/e;

    return-object v0
.end method

.method public S0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly3/x;->u:Ljava/util/List;

    return-object v0
.end method

.method public T0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/x;->t:Ly3/e;

    return-object v0
.end method

.method public U0(Ly3/e;)V
    .locals 0

    iput-object p1, p0, Ly3/x;->v:Ly3/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    :cond_0
    return-void
.end method

.method public V0(I)V
    .locals 0

    iput p1, p0, Ly3/x;->x:I

    return-void
.end method

.method public W0(I)V
    .locals 0

    iput p1, p0, Ly3/x;->y:I

    return-void
.end method

.method public X0(I)V
    .locals 0

    iput p1, p0, Ly3/x;->w:I

    return-void
.end method

.method public Y0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly3/y;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/x;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/y;

    invoke-virtual {p0, v0}, Ly3/x;->Q0(Ly3/y;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Z0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/x;->t:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method
