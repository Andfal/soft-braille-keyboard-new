.class public Ly3/b1;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/c1;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/b1;->m:Ljava/util/List;

    const/16 v0, 0x7d

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/e;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ly3/b1;->m:Ljava/util/List;

    const/16 p1, 0x7d

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public d0(I)Lw3/g2;
    .locals 3

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid decl type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lw3/g2;->d0(I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method public v0(Ly3/c1;)V
    .locals 1

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/b1;->m:Ljava/util/List;

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
            "Ly3/c1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly3/b1;->m:Ljava/util/List;

    return-object v0
.end method

.method public x0(Z)V
    .locals 0

    iput-boolean p1, p0, Ly3/b1;->n:Z

    return-void
.end method
