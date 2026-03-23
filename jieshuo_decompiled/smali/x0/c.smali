.class public Lx0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ly0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx0/c;->a:Ly0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly0/b;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(JJ)V
    .locals 1

    iget-object v0, p0, Lx0/c;->a:Ly0/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Ly0/b;->c(JJ)V

    return-void
.end method

.method public c(Ll0/f;)V
    .locals 1

    iget-object v0, p0, Lx0/c;->a:Ly0/b;

    invoke-virtual {v0, p1}, Ly0/b;->e(Ll0/f;)V

    return-void
.end method

.method public d(Ly0/b;)V
    .locals 0

    iput-object p1, p0, Lx0/c;->a:Ly0/b;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx0/c;->a:Ly0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly0/b;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lx0/c;->a:Ly0/b;

    invoke-virtual {v0}, Ly0/b;->p()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lx0/c;->a:Ly0/b;

    invoke-virtual {v0}, Ly0/b;->q()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lx0/c;->a:Ly0/b;

    invoke-virtual {v0}, Ly0/b;->r()V

    return-void
.end method
