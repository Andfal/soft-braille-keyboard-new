.class public abstract Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp0/d;"
    }
.end annotation


# instance fields
.field protected a:Lp0/c;


# direct methods
.method public constructor <init>(Lp0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/b;->a:Lp0/c;

    return-void
.end method


# virtual methods
.method public B(Lq0/b;)V
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/c;->a0(Lq0/b;)V

    return-void
.end method

.method public C()V
    .locals 0

    return-void
.end method

.method public D(Lp0/b;)V
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/a;->Q(Lp0/b;)V

    return-void
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

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/c;->Y(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Ll0/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ll1/i;)V
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(Ll1/g;)I
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/c;->X(Ll1/g;)I

    move-result p1

    return p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ll1/f;)I
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/c;->W(Ll1/f;)I

    move-result p1

    return p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/c;->c0(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/c;->b0(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public h(Lo0/b;)V
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/c;->Z(Lo0/b;)V

    return-void
.end method
