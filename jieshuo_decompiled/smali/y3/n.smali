.class public Ly3/n;
.super Ly3/h0;
.source "SourceFile"


# instance fields
.field private w:Ly3/e;

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/h0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/n;->x:I

    const/16 v0, 0x79

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/h0;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Ly3/n;->x:I

    const/16 p1, 0x79

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public T0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/n;->w:Ly3/e;

    return-object v0
.end method

.method public U0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/n;->w:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public V0(I)V
    .locals 0

    iput p1, p0, Ly3/n;->x:I

    return-void
.end method
