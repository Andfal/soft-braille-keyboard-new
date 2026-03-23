.class public final Lu/k;
.super Lu/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lu/r;Lu/u;Lu/n;Lu/n;)V
    .locals 0

    invoke-static {p4}, Lu/p;->r(Lu/n;)Lu/p;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lu/k;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    return-void
.end method

.method public constructor <init>(Lu/r;Lu/u;Lu/n;Lu/p;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lu/f;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    invoke-virtual {p1}, Lu/r;->b()I

    move-result p2

    const/4 p4, 0x5

    if-eq p2, p4, :cond_2

    const/4 p4, 0x6

    if-eq p2, p4, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lu/r;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t mix branchingness with result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Lu/f$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lu/f$b;->b(Lu/k;)V

    return-void
.end method

.method public f()Lw/e;
    .locals 1

    sget-object v0, Lw/b;->c:Lw/b;

    return-object v0
.end method
