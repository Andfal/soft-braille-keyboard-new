.class public Ly3/h;
.super Ly3/c0;
.source "SourceFile"


# instance fields
.field private p:Ly3/i0;

.field private q:Ly3/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/c0;-><init>()V

    const/16 v0, 0x7b

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ly3/c0;-><init>()V

    const/16 v0, 0x7b

    iput v0, p0, Lw3/g2;->a:I

    iput p1, p0, Ly3/e;->h:I

    iput p2, p0, Ly3/e;->i:I

    return-void
.end method


# virtual methods
.method public E0()Ly3/i0;
    .locals 1

    iget-object v0, p0, Ly3/h;->p:Ly3/i0;

    return-object v0
.end method

.method public F0(Ly3/i0;)V
    .locals 0

    iput-object p1, p0, Ly3/h;->p:Ly3/i0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    :cond_0
    return-void
.end method

.method public G0(Ly3/c0;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/h;->q:Ly3/e;

    invoke-virtual {p0, p1}, Ly3/c0;->C0(Ly3/c0;)V

    return-void
.end method
