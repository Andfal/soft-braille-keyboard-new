.class public Ly3/j0;
.super Ly3/v;
.source "SourceFile"


# instance fields
.field private r:Ly3/l0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/v;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/v;-><init>(I)V

    const/16 p1, 0x1e

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public D0()Ly3/l0;
    .locals 1

    iget-object v0, p0, Ly3/j0;->r:Ly3/l0;

    return-object v0
.end method

.method public E0(Ly3/l0;)V
    .locals 0

    iput-object p1, p0, Ly3/j0;->r:Ly3/l0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    :cond_0
    return-void
.end method
