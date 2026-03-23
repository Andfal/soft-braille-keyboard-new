.class public Ly3/k;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ly3/e;

.field private n:Ly3/e;

.field private o:Ly3/e;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/k;->p:I

    iput v0, p0, Ly3/k;->q:I

    const/16 v0, 0x69

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/e;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Ly3/k;->p:I

    iput p1, p0, Ly3/k;->q:I

    const/16 p1, 0x69

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public A0(I)V
    .locals 0

    iput p1, p0, Ly3/k;->p:I

    return-void
.end method

.method public B0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/k;->m:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public C0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/k;->n:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public n0()Z
    .locals 1

    iget-object v0, p0, Ly3/k;->m:Ly3/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly3/k;->n:Ly3/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly3/k;->o:Ly3/e;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Ly3/k;->n:Ly3/e;

    invoke-virtual {v0}, Ly3/e;->n0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ly3/k;->o:Ly3/e;

    invoke-virtual {v0}, Ly3/e;->n0()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/k;->o:Ly3/e;

    return-object v0
.end method

.method public w0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/k;->m:Ly3/e;

    return-object v0
.end method

.method public x0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/k;->n:Ly3/e;

    return-object v0
.end method

.method public y0(I)V
    .locals 0

    iput p1, p0, Ly3/k;->q:I

    return-void
.end method

.method public z0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/k;->o:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method
