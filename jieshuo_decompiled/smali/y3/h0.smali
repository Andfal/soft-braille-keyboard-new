.class public abstract Ly3/h0;
.super Ly3/r0;
.source "SourceFile"


# instance fields
.field protected t:Ly3/e;

.field protected u:I

.field protected v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/r0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/h0;->u:I

    iput v0, p0, Ly3/h0;->v:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/r0;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Ly3/h0;->u:I

    iput p1, p0, Ly3/h0;->v:I

    return-void
.end method


# virtual methods
.method public Q0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/h0;->t:Ly3/e;

    return-object v0
.end method

.method public R0(Ly3/e;)V
    .locals 2

    iput-object p1, p0, Ly3/h0;->t:Ly3/e;

    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result v0

    invoke-virtual {p1}, Ly3/e;->k0()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ly3/e;->m0()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ly3/e;->r0(I)V

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public S0(II)V
    .locals 0

    iput p1, p0, Ly3/h0;->u:I

    iput p2, p0, Ly3/h0;->v:I

    return-void
.end method
