.class public abstract Lo/a0;
.super Lo/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lu/u;Lu/p;)V
    .locals 1

    sget-object v0, Lo/k;->b:Lo/j;

    invoke-direct {p0, v0, p1, p2}, Lo/h;-><init>(Lo/j;Lu/u;Lu/p;)V

    return-void
.end method


# virtual methods
.method public final t(Lo/j;)Lo/h;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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
