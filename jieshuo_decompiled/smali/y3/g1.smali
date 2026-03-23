.class public Ly3/g1;
.super Ly3/m1;
.source "SourceFile"


# instance fields
.field private p:Ly3/e;

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/m1;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/g1;->q:I

    iput v0, p0, Ly3/g1;->r:I

    const/16 v0, 0x4f

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/m1;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Ly3/g1;->q:I

    iput p1, p0, Ly3/g1;->r:I

    const/16 p1, 0x4f

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public A0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/g1;->p:Ly3/e;

    return-object v0
.end method

.method public B0(II)V
    .locals 0

    iput p1, p0, Ly3/g1;->q:I

    iput p2, p0, Ly3/g1;->r:I

    return-void
.end method

.method public C0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/g1;->p:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method
