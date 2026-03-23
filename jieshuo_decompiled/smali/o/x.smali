.class public final Lo/x;
.super Lo/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lo/j;Lu/u;Lu/p;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/l;-><init>(Lo/j;Lu/u;Lu/p;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t(Lo/j;)Lo/h;
    .locals 3

    new-instance v0, Lo/x;

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v1

    invoke-virtual {p0}, Lo/h;->l()Lu/p;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lo/x;-><init>(Lo/j;Lu/u;Lu/p;)V

    return-object v0
.end method

.method public v(Lu/p;)Lo/h;
    .locals 3

    new-instance v0, Lo/x;

    invoke-virtual {p0}, Lo/h;->j()Lo/j;

    move-result-object v1

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/x;-><init>(Lo/j;Lu/u;Lu/p;)V

    return-object v0
.end method
