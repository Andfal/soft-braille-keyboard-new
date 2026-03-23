.class public Ly3/u;
.super Ly3/h0;
.source "SourceFile"


# instance fields
.field private w:Ly3/e;

.field private x:Ly3/e;

.field private y:Ly3/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/h0;-><init>()V

    const/16 v0, 0x7a

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/h0;-><init>(I)V

    const/16 p1, 0x7a

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public T0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/u;->x:Ly3/e;

    return-object v0
.end method

.method public U0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/u;->y:Ly3/e;

    return-object v0
.end method

.method public V0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/u;->w:Ly3/e;

    return-object v0
.end method

.method public W0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/u;->x:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public X0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/u;->y:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public Y0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/u;->w:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method
