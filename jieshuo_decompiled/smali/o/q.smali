.class public final Lo/q;
.super Lo/b0;
.source "SourceFile"


# instance fields
.field private final e:Lu/q;


# direct methods
.method public constructor <init>(Lu/u;Lu/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/b0;-><init>(Lu/u;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lo/q;->e:Lu/q;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/q;->e:Lu/q;

    invoke-virtual {v0}, Lu/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected q(Z)Ljava/lang/String;
    .locals 4

    iget-object p1, p0, Lo/q;->e:Lu/q;

    invoke-virtual {p1}, Lu/q;->size()I

    move-result p1

    iget-object v0, p0, Lo/q;->e:Lu/q;

    invoke-virtual {v0}, Lu/q;->k()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x64

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string p1, "local-snapshot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lo/q;->e:Lu/q;

    invoke-virtual {v2, p1}, Lu/q;->j(I)Lu/n;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lo/r;->y(Lu/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(I)Lo/h;
    .locals 3

    new-instance v0, Lo/q;

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v1

    iget-object v2, p0, Lo/q;->e:Lu/q;

    invoke-virtual {v2, p1}, Lu/q;->o(I)Lu/q;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/q;-><init>(Lu/u;Lu/q;)V

    return-object v0
.end method

.method public v(Lu/p;)Lo/h;
    .locals 2

    new-instance p1, Lo/q;

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v0

    iget-object v1, p0, Lo/q;->e:Lu/q;

    invoke-direct {p1, v0, v1}, Lo/q;-><init>(Lu/u;Lu/q;)V

    return-object p1
.end method

.method public x()Lu/q;
    .locals 1

    iget-object v0, p0, Lo/q;->e:Lu/q;

    return-object v0
.end method
