.class public abstract Ls0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/c;"
    }
.end annotation


# instance fields
.field protected a:Ls0/f;


# direct methods
.method public constructor <init>(Ls0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/b;->a:Ls0/f;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 0

    return-void
.end method

.method public D(Ls0/b;)V
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1}, Ls0/a;->Q(Ls0/b;)V

    return-void
.end method

.method public a(I)I
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1}, Ls0/f;->Z(I)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1, p2}, Ls0/f;->W(II)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1}, Ls0/f;->X(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract a(Ll1/h;)V
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1}, Ls0/f;->a0(I)I

    move-result p1

    return p1
.end method

.method public b()Ll0/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(FF)I
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1, p2}, Ls0/f;->V(FF)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public i(Lr0/a;)V
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1}, Ls0/f;->Y(Lr0/a;)V

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method
