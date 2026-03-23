.class public Ly3/c0;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field public m:Lw3/g2;

.field private n:Lw3/g2;

.field private o:Ly3/c0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ly3/e;-><init>()V

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(ILw3/g2;)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/c0;-><init>(I)V

    invoke-virtual {p0, p2}, Lw3/g2;->f(Lw3/g2;)V

    return-void
.end method

.method public constructor <init>(ILw3/g2;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/c0;-><init>(ILw3/g2;)V

    invoke-virtual {p0, p3}, Lw3/g2;->a0(I)V

    return-void
.end method


# virtual methods
.method public A0(Lw3/g2;)V
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x86

    if-eq v0, v1, :cond_1

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Ly3/c0;->n:Lw3/g2;

    if-eqz v0, :cond_2

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p1, p0, Ly3/c0;->n:Lw3/g2;

    return-void
.end method

.method public B0(Lw3/g2;)V
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x86

    if-eq v0, v1, :cond_1

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Ly3/c0;->n:Lw3/g2;

    if-eqz v0, :cond_2

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p1, p0, Ly3/c0;->n:Lw3/g2;

    return-void
.end method

.method public C0(Ly3/c0;)V
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Ly3/c0;->o:Ly3/c0;

    if-eqz v0, :cond_2

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p1, p0, Ly3/c0;->o:Ly3/c0;

    return-void
.end method

.method public D0(Ly3/c0;)V
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x85

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Ly3/c0;->o:Ly3/c0;

    if-eqz v0, :cond_2

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p1, p0, Ly3/c0;->o:Ly3/c0;

    return-void
.end method

.method public v0()Lw3/g2;
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x87

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/c0;->n:Lw3/g2;

    return-object v0
.end method

.method public w0()Lw3/g2;
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/c0;->n:Lw3/g2;

    return-object v0
.end method

.method public x0()Lw3/g2;
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/c0;->n:Lw3/g2;

    return-object v0
.end method

.method public y0()Ly3/c0;
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Ly3/c0;->o:Ly3/c0;

    return-object v0
.end method

.method public z0(Lw3/g2;)V
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x87

    if-eq v0, v1, :cond_0

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x86

    if-eq v0, v1, :cond_1

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Ly3/c0;->n:Lw3/g2;

    if-eqz v0, :cond_2

    invoke-static {}, Ly3/e;->g0()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p1, p0, Ly3/c0;->n:Lw3/g2;

    return-void
.end method
