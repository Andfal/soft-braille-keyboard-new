.class public Lx0/i;
.super Lx0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lx0/a;-><init>(Lx0/b;)V

    return-void
.end method


# virtual methods
.method public b()Ll0/f;
    .locals 1

    iget-object v0, p0, Lx0/a;->a:Lx0/b;

    invoke-virtual {v0}, Lx0/b;->W()Lx0/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Lx0/a;)V

    const/4 v0, 0x0

    return-object v0
.end method
