.class public final Lo/z;
.super Lo/l;
.source "SourceFile"


# instance fields
.field private e:Lo/e;


# direct methods
.method public constructor <init>(Lo/j;Lu/u;Lu/p;Lo/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/l;-><init>(Lo/j;Lu/u;Lu/p;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lo/z;->e:Lo/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "target == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A()Z
    .locals 1

    invoke-virtual {p0}, Lo/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/z;->e:Lo/e;

    invoke-virtual {v0}, Lo/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(Lo/e;)Lo/z;
    .locals 4

    invoke-virtual {p0}, Lo/h;->j()Lo/j;

    move-result-object v0

    invoke-virtual {v0}, Lo/j;->f()Lo/j;

    move-result-object v0

    new-instance v1, Lo/z;

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v2

    invoke-virtual {p0}, Lo/h;->l()Lu/p;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p1}, Lo/z;-><init>(Lo/j;Lu/u;Lu/p;Lo/e;)V

    return-object v1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/z;->e:Lo/e;

    if-nez v0, :cond_0

    const-string v0, "????"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lo/h;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t(Lo/j;)Lo/h;
    .locals 4

    new-instance v0, Lo/z;

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v1

    invoke-virtual {p0}, Lo/h;->l()Lu/p;

    move-result-object v2

    iget-object v3, p0, Lo/z;->e:Lo/e;

    invoke-direct {v0, p1, v1, v2, v3}, Lo/z;-><init>(Lo/j;Lu/u;Lu/p;Lo/e;)V

    return-object v0
.end method

.method public v(Lu/p;)Lo/h;
    .locals 4

    new-instance v0, Lo/z;

    invoke-virtual {p0}, Lo/h;->j()Lo/j;

    move-result-object v1

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v2

    iget-object v3, p0, Lo/z;->e:Lo/e;

    invoke-direct {v0, v1, v2, p1, v3}, Lo/z;-><init>(Lo/j;Lu/u;Lu/p;Lo/e;)V

    return-object v0
.end method

.method public x()Lo/e;
    .locals 1

    iget-object v0, p0, Lo/z;->e:Lo/e;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lo/z;->e:Lo/e;

    invoke-virtual {v0}, Lo/h;->f()I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 2

    iget-object v0, p0, Lo/z;->e:Lo/e;

    invoke-virtual {v0}, Lo/h;->f()I

    move-result v0

    invoke-virtual {p0}, Lo/h;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
