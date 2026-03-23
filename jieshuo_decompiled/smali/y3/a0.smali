.class public Ly3/a0;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ly3/e;

.field private n:Ly3/e;

.field private o:I

.field private p:Ly3/e;

.field private q:Ly3/e;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/a0;->o:I

    iput v0, p0, Ly3/a0;->r:I

    iput v0, p0, Ly3/a0;->s:I

    const/16 v0, 0x73

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/e;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Ly3/a0;->o:I

    iput p1, p0, Ly3/a0;->r:I

    iput p1, p0, Ly3/a0;->s:I

    const/16 p1, 0x73

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public A0(Ly3/e;)V
    .locals 0

    iput-object p1, p0, Ly3/a0;->p:Ly3/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    :cond_0
    return-void
.end method

.method public B0(I)V
    .locals 0

    iput p1, p0, Ly3/a0;->o:I

    return-void
.end method

.method public C0(II)V
    .locals 0

    iput p1, p0, Ly3/a0;->r:I

    iput p2, p0, Ly3/a0;->s:I

    return-void
.end method

.method public D0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/a0;->n:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public v0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/a0;->m:Ly3/e;

    return-object v0
.end method

.method public w0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/a0;->p:Ly3/e;

    return-object v0
.end method

.method public x0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/a0;->n:Ly3/e;

    return-object v0
.end method

.method public y0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/a0;->m:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public z0(Ly3/e;)V
    .locals 0

    iput-object p1, p0, Ly3/a0;->q:Ly3/e;

    return-void
.end method
