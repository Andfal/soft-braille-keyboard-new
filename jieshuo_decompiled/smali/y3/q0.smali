.class public Ly3/q0;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ly3/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(IILy3/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/e;-><init>(II)V

    const/4 p1, 0x4

    iput p1, p0, Lw3/g2;->a:I

    invoke-virtual {p0, p3}, Ly3/q0;->w0(Ly3/e;)V

    return-void
.end method


# virtual methods
.method public v0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/q0;->m:Ly3/e;

    return-object v0
.end method

.method public w0(Ly3/e;)V
    .locals 0

    iput-object p1, p0, Ly3/q0;->m:Ly3/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    :cond_0
    return-void
.end method
