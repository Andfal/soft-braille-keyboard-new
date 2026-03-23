.class public abstract Lo/b0;
.super Lo/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lu/u;)V
    .locals 2

    sget-object v0, Lo/k;->b:Lo/j;

    sget-object v1, Lu/p;->c:Lu/p;

    invoke-direct {p0, v0, p1, v1}, Lo/h;-><init>(Lo/j;Lu/u;Lu/p;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final t(Lo/j;)Lo/h;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(I)Lo/h;
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
    .locals 0

    return-void
.end method
