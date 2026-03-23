.class public Ly3/k0;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ljava/lang/String;

.field private n:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    const/16 v0, 0x28

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/e;-><init>(I)V

    const/16 p1, 0x28

    iput p1, p0, Lw3/g2;->a:I

    invoke-virtual {p0, p2}, Ly3/k0;->x0(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ly3/e;->r0(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/k0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lw3/g2;->Y(D)V

    return-void
.end method


# virtual methods
.method public v0()D
    .locals 2

    iget-wide v0, p0, Ly3/k0;->n:D

    return-wide v0
.end method

.method public w0(D)V
    .locals 0

    iput-wide p1, p0, Ly3/k0;->n:D

    return-void
.end method

.method public x0(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/k0;->m:Ljava/lang/String;

    return-void
.end method
