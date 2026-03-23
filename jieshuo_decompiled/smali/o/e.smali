.class public final Lo/e;
.super Lo/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lu/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/b0;-><init>(Lu/u;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected q(Z)Ljava/lang/String;
    .locals 0

    const-string p1, "code-address"

    return-object p1
.end method

.method public final v(Lu/p;)Lo/h;
    .locals 1

    new-instance p1, Lo/e;

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/e;-><init>(Lu/u;)V

    return-object p1
.end method
