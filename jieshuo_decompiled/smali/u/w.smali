.class public final Lu/w;
.super Lu/f;
.source "SourceFile"


# instance fields
.field private final e:Lw/e;


# direct methods
.method public constructor <init>(Lu/r;Lu/u;Lu/p;Lw/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lu/f;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    invoke-virtual {p1}, Lu/r;->b()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Lu/w;->e:Lw/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static n(Lw/e;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "catch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lw/e;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0, v2}, Lw/e;->getType(I)Lw/c;

    move-result-object v3

    invoke-virtual {v3}, Lw/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(Lu/f$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lu/f$b;->a(Lu/w;)V

    return-void
.end method

.method public f()Lw/e;
    .locals 1

    iget-object v0, p0, Lu/w;->e:Lw/e;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/w;->e:Lw/e;

    invoke-static {v0}, Lu/w;->n(Lw/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
