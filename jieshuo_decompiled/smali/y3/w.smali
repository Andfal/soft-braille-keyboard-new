.class public Ly3/w;
.super Ly3/s0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/w$a;
    }
.end annotation


# static fields
.field private static final U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private H:Ly3/i0;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ly3/e;

.field private K:Z

.field private L:Ly3/w$a;

.field private M:I

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw3/g2;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ly3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ly3/w;->U:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/s0;-><init>()V

    sget-object v0, Ly3/w$a;->a:Ly3/w$a;

    iput-object v0, p0, Ly3/w;->L:Ly3/w$a;

    const/4 v0, -0x1

    iput v0, p0, Ly3/w;->M:I

    iput v0, p0, Ly3/w;->N:I

    const/16 v0, 0x70

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/s0;-><init>(I)V

    sget-object p1, Ly3/w$a;->a:Ly3/w$a;

    iput-object p1, p0, Ly3/w;->L:Ly3/w$a;

    const/4 p1, -0x1

    iput p1, p0, Ly3/w;->M:I

    iput p1, p0, Ly3/w;->N:I

    const/16 p1, 0x70

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(ILy3/i0;)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/s0;-><init>(I)V

    sget-object p1, Ly3/w$a;->a:Ly3/w$a;

    iput-object p1, p0, Ly3/w;->L:Ly3/w$a;

    const/4 p1, -0x1

    iput p1, p0, Ly3/w;->M:I

    iput p1, p0, Ly3/w;->N:I

    const/16 p1, 0x70

    iput p1, p0, Lw3/g2;->a:I

    invoke-virtual {p0, p2}, Ly3/w;->I1(Ly3/i0;)V

    return-void
.end method


# virtual methods
.method public A1()Z
    .locals 1

    iget-boolean v0, p0, Ly3/w;->R:Z

    return v0
.end method

.method public B1()Z
    .locals 1

    iget-boolean v0, p0, Ly3/w;->K:Z

    return v0
.end method

.method public C1()Z
    .locals 1

    iget-boolean v0, p0, Ly3/w;->Q:Z

    return v0
.end method

.method public D1()Z
    .locals 1

    iget-boolean v0, p0, Ly3/w;->P:Z

    return v0
.end method

.method public E1(Ly3/e;)V
    .locals 2

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/w;->J:Ly3/e;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ly3/w;->L1(Z)V

    :cond_0
    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result v0

    invoke-virtual {p1}, Ly3/e;->k0()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    iget p1, p0, Ly3/e;->h:I

    sub-int p1, v0, p1

    invoke-virtual {p0, p1}, Ly3/e;->r0(I)V

    iget p1, p0, Ly3/e;->h:I

    invoke-virtual {p0, p1, v0}, Ly3/s0;->n1(II)V

    return-void
.end method

.method public F1()V
    .locals 1

    sget-object v0, Ly3/w$a;->b:Ly3/w$a;

    iput-object v0, p0, Ly3/w;->L:Ly3/w$a;

    return-void
.end method

.method public G1()V
    .locals 1

    sget-object v0, Ly3/w$a;->d:Ly3/w$a;

    iput-object v0, p0, Ly3/w;->L:Ly3/w$a;

    return-void
.end method

.method public H1()V
    .locals 1

    sget-object v0, Ly3/w$a;->c:Ly3/w$a;

    iput-object v0, p0, Ly3/w;->L:Ly3/w$a;

    return-void
.end method

.method public I1(Ly3/i0;)V
    .locals 0

    iput-object p1, p0, Ly3/w;->H:Ly3/i0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    :cond_0
    return-void
.end method

.method public J1(I)V
    .locals 0

    iput p1, p0, Ly3/w;->O:I

    return-void
.end method

.method public K1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly3/w;->R:Z

    iput-boolean v0, p0, Ly3/w;->Q:Z

    return-void
.end method

.method public L1(Z)V
    .locals 0

    iput-boolean p1, p0, Ly3/w;->K:Z

    return-void
.end method

.method public M1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly3/w;->Q:Z

    return-void
.end method

.method public N1(I)V
    .locals 0

    iput p1, p0, Ly3/w;->M:I

    return-void
.end method

.method public O1(Ly3/e;)V
    .locals 0

    iput-object p1, p0, Ly3/w;->T:Ly3/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    :cond_0
    return-void
.end method

.method public P1(II)V
    .locals 0

    iput p1, p0, Ly3/w;->M:I

    iput p2, p0, Ly3/w;->N:I

    return-void
.end method

.method public Q0(Ly3/w;)I
    .locals 1

    invoke-super {p0, p1}, Ly3/s0;->Q0(Ly3/w;)I

    move-result p1

    invoke-virtual {p0}, Ly3/s0;->Y0()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly3/w;->P:Z

    :cond_0
    return p1
.end method

.method public Q1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly3/w;->P:Z

    return-void
.end method

.method public R1(I)V
    .locals 0

    iput p1, p0, Ly3/w;->N:I

    return-void
.end method

.method public r1(Ly3/e;)V
    .locals 1

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/w;->I:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/w;->I:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Ly3/w;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public s1(Lw3/g2;)V
    .locals 1

    iget-object v0, p0, Ly3/w;->S:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/w;->S:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Ly3/w;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t1()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/w;->J:Ly3/e;

    return-object v0
.end method

.method public u1()Ly3/i0;
    .locals 1

    iget-object v0, p0, Ly3/w;->H:Ly3/i0;

    return-object v0
.end method

.method public v1()I
    .locals 1

    iget v0, p0, Ly3/w;->O:I

    return v0
.end method

.method public w1()I
    .locals 1

    iget v0, p0, Ly3/w;->M:I

    return v0
.end method

.method public x1()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/w;->T:Ly3/e;

    return-object v0
.end method

.method public y1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/w;->H:Ly3/i0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public z1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly3/w;->I:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ly3/w;->U:Ljava/util/List;

    :goto_0
    return-object v0
.end method
