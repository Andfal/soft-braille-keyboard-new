.class public abstract Lo/l;
.super Lo/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lo/j;Lu/u;Lu/p;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/h;-><init>(Lo/j;Lu/u;Lu/p;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lo/h;->j()Lo/j;

    move-result-object v0

    invoke-virtual {v0}, Lo/j;->b()Lo/n;

    move-result-object v0

    invoke-virtual {v0}, Lo/n;->d()I

    move-result v0

    return v0
.end method

.method protected final q(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo/h;->j()Lo/j;

    move-result-object v0

    invoke-virtual {v0}, Lo/j;->b()Lo/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lo/n;->n(Lo/h;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final u(I)Lo/h;
    .locals 1

    invoke-virtual {p0}, Lo/h;->l()Lu/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/p;->y(I)Lu/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/h;->v(Lu/p;)Lo/h;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lx/a;)V
    .locals 1

    invoke-virtual {p0}, Lo/h;->j()Lo/j;

    move-result-object v0

    invoke-virtual {v0}, Lo/j;->b()Lo/n;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lo/n;->K(Lx/a;Lo/h;)V

    return-void
.end method
