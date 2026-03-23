.class public abstract Ln1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll0/c;"
    }
.end annotation


# instance fields
.field protected a:Ln1/c;


# direct methods
.method public constructor <init>(Ln1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/a;->a:Ln1/c;

    return-void
.end method


# virtual methods
.method public C(Ln1/a;)V
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0, p1}, Ln1/c;->H(Ln1/a;)V

    return-void
.end method

.method public D()Lb1/m;
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0}, Ln1/c;->T()Lb1/m;

    move-result-object v0

    return-object v0
.end method

.method public E()Lm0/b;
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0}, Ln1/c;->S()Lm0/b;

    move-result-object v0

    return-object v0
.end method

.method public F()Ll1/j;
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0}, Ln1/c;->U()Ll1/j;

    move-result-object v0

    return-object v0
.end method

.method public l(Lm0/b;)V
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0, p1}, Ln1/c;->y(Lm0/b;)V

    return-void
.end method

.method public m(Lb1/m;)Ln0/a;
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0, p1}, Ln1/c;->I(Lb1/m;)Ln0/a;

    move-result-object p1

    return-object p1
.end method

.method public p(Lb1/m;)V
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0, p1}, Ln1/c;->F(Lb1/m;)V

    return-void
.end method

.method public u(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0, p1}, Ln1/c;->E(Landroid/content/Context;)V

    return-void
.end method

.method public z(Lb1/g;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ln1/c;

    invoke-virtual {v0, p1, p2}, Ln1/c;->C(Lb1/g;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
