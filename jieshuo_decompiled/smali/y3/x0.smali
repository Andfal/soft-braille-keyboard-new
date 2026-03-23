.class public Ly3/x0;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ly3/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(ILy3/e;)V
    .locals 1

    invoke-virtual {p2}, Ly3/e;->k0()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ly3/e;-><init>(II)V

    const/16 p1, 0x32

    iput p1, p0, Lw3/g2;->a:I

    invoke-virtual {p0, p2}, Ly3/x0;->w0(Ly3/e;)V

    return-void
.end method


# virtual methods
.method public v0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/x0;->m:Ly3/e;

    return-object v0
.end method

.method public w0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/x0;->m:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method
