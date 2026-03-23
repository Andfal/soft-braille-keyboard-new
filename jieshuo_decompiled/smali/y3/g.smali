.class public Ly3/g;
.super Ly3/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    const/16 v0, 0x84

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/e;-><init>(I)V

    const/16 p1, 0x84

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public v0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->e0(Ly3/e;)V

    return-void
.end method
