.class public Ly3/j1;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/i1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/j1;->m:Ljava/util/List;

    const/16 v0, 0x94

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/e;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ly3/j1;->m:Ljava/util/List;

    const/16 p1, 0x94

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public v0(Ly3/i1;)V
    .locals 1

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/j1;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public w0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/i1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly3/j1;->m:Ljava/util/List;

    return-object v0
.end method
