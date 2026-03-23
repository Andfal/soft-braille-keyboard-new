.class public Ly3/k1;
.super Ly3/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/b0;-><init>()V

    const/16 v0, 0x92

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public B0()Ly3/m1;
    .locals 1

    invoke-virtual {p0}, Ly3/b0;->w0()Ly3/e;

    move-result-object v0

    check-cast v0, Ly3/m1;

    return-object v0
.end method
