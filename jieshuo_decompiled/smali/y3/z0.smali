.class public Ly3/z0;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ly3/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly3/e;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/e;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IILy3/e;)V
    .locals 2

    invoke-direct {p0}, Ly3/e;-><init>()V

    invoke-virtual {p0, p3}, Ly3/e;->f0(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ly3/e;->m0()I

    move-result p2

    invoke-virtual {p3}, Ly3/e;->m0()I

    move-result v0

    invoke-virtual {p3}, Ly3/e;->k0()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Ly3/e;->p0(II)V

    invoke-virtual {p0, p1}, Ly3/z0;->x0(I)V

    invoke-virtual {p0, p3}, Ly3/z0;->w0(Ly3/e;)V

    return-void
.end method


# virtual methods
.method public v0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/z0;->m:Ly3/e;

    return-object v0
.end method

.method public w0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/z0;->m:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public x0(I)V
    .locals 3

    invoke-static {p1}, Lw3/s3;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lw3/g2;->d0(I)Lw3/g2;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
