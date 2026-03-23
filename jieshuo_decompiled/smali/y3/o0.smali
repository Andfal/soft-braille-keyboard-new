.class public Ly3/o0;
.super Ly3/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/b0;-><init>()V

    const/16 v0, 0x21

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(Ly3/e;Ly3/i0;I)V
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, v0, p1, p2, p3}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public B0()Ly3/i0;
    .locals 1

    invoke-virtual {p0}, Ly3/b0;->w0()Ly3/e;

    move-result-object v0

    check-cast v0, Ly3/i0;

    return-object v0
.end method

.method public C0()Ly3/e;
    .locals 1

    invoke-virtual {p0}, Ly3/b0;->v0()Ly3/e;

    move-result-object v0

    return-object v0
.end method
