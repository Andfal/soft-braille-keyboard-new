.class public Ly3/v;
.super Ly3/e;
.source "SourceFile"


# static fields
.field protected static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected m:Ly3/e;

.field protected n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field protected o:I

.field protected p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ly3/v;->q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/v;->o:I

    iput v0, p0, Ly3/v;->p:I

    const/16 v0, 0x26

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/e;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Ly3/v;->o:I

    iput p1, p0, Ly3/v;->p:I

    const/16 p1, 0x26

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public A0(II)V
    .locals 0

    iput p1, p0, Ly3/v;->o:I

    iput p2, p0, Ly3/v;->p:I

    return-void
.end method

.method public B0(I)V
    .locals 0

    iput p1, p0, Ly3/v;->p:I

    return-void
.end method

.method public C0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/v;->m:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public v0(Ly3/e;)V
    .locals 1

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/v;->n:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/v;->n:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Ly3/v;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public w0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly3/v;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ly3/v;->q:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public x0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/v;->m:Ly3/e;

    return-object v0
.end method

.method public y0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly3/e;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ly3/v;->n:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ly3/v;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/e;

    invoke-virtual {p0, v0}, Ly3/v;->v0(Ly3/e;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public z0(I)V
    .locals 0

    iput p1, p0, Ly3/v;->o:I

    return-void
.end method
