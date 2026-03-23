.class public final Lu/j;
.super Lu/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lu/r;Lu/u;Lu/n;Lu/p;Lv/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lu/d;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;Lv/a;)V

    invoke-virtual {p1}, Lu/r;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Lu/f$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lu/f$b;->c(Lu/j;)V

    return-void
.end method

.method public f()Lw/e;
    .locals 1

    sget-object v0, Lw/b;->c:Lw/b;

    return-object v0
.end method
