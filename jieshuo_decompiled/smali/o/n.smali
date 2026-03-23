.class public abstract Lo/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static A(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static B(Lx/a;S)V
    .locals 0

    invoke-interface {p0, p1}, Lx/q;->writeShort(I)V

    return-void
.end method

.method protected static C(Lx/a;SI)V
    .locals 1

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    invoke-static {p0, p1, v0, p2}, Lo/n;->H(Lx/a;SSS)V

    return-void
.end method

.method protected static D(Lx/a;SIS)V
    .locals 1

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    invoke-static {p0, p1, v0, p2, p3}, Lo/n;->I(Lx/a;SSSS)V

    return-void
.end method

.method protected static E(Lx/a;SISS)V
    .locals 6

    int-to-short v2, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short v3, p2

    move-object v0, p0

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lo/n;->J(Lx/a;SSSSS)V

    return-void
.end method

.method protected static F(Lx/a;SJ)V
    .locals 7

    long-to-int v0, p2

    int-to-short v3, v0

    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v1, v0

    int-to-short v4, v1

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v1, v0

    int-to-short v5, v1

    const/16 v0, 0x30

    shr-long/2addr p2, v0

    long-to-int p3, p2

    int-to-short v6, p3

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lo/n;->J(Lx/a;SSSSS)V

    return-void
.end method

.method protected static G(Lx/a;SS)V
    .locals 0

    invoke-interface {p0, p1}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p2}, Lx/q;->writeShort(I)V

    return-void
.end method

.method protected static H(Lx/a;SSS)V
    .locals 0

    invoke-interface {p0, p1}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p2}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p3}, Lx/q;->writeShort(I)V

    return-void
.end method

.method protected static I(Lx/a;SSSS)V
    .locals 0

    invoke-interface {p0, p1}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p2}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p3}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p4}, Lx/q;->writeShort(I)V

    return-void
.end method

.method protected static J(Lx/a;SSSSS)V
    .locals 0

    invoke-interface {p0, p1}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p2}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p3}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p4}, Lx/q;->writeShort(I)V

    invoke-interface {p0, p5}, Lx/q;->writeShort(I)V

    return-void
.end method

.method protected static a(Lo/h;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lo/z;

    invoke-virtual {p0}, Lo/z;->z()I

    move-result p0

    int-to-short v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lx/i;->b(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lx/i;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected static c(Lo/h;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lo/z;

    invoke-virtual {p0}, Lo/z;->y()I

    move-result p0

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected static e(II)S
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static f(IIII)S
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_3

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_2

    and-int/lit8 v0, p2, 0xf

    if-ne v0, p2, :cond_1

    and-int/lit8 v0, p3, 0xf

    if-ne v0, p3, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xc

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n3 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n2 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n1 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n0 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static h(Lo/h;)Ljava/lang/String;
    .locals 2

    check-cast p0, Lo/f;

    invoke-virtual {p0}, Lo/f;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lo/f;->y()I

    move-result v1

    invoke-virtual {p0}, Lo/f;->x()Lv/a;

    move-result-object p0

    invoke-virtual {p0}, Lv/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 p0, 0x10000

    if-ge v1, p0, :cond_1

    invoke-static {v1}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static i(Lo/h;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lo/f;

    invoke-virtual {p0}, Lo/f;->x()Lv/a;

    move-result-object p0

    instance-of v0, p0, Lv/v;

    if-eqz v0, :cond_0

    check-cast p0, Lv/v;

    invoke-virtual {p0}, Lv/v;->l()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lx/r;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected static m(Lu/p;)Z
    .locals 7

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v3

    invoke-virtual {v3}, Lu/n;->l()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lu/p;->p(I)Lu/n;

    move-result-object v5

    invoke-virtual {v5}, Lu/n;->l()I

    move-result v6

    if-eq v6, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v5}, Lu/n;->i()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method protected static o(Lv/p;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v1, p0, Lv/o;

    if-eqz v1, :cond_0

    check-cast p0, Lv/o;

    invoke-virtual {p0}, Lv/o;->i()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv/p;->h()I

    move-result p0

    int-to-long v1, p0

    :goto_0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_5

    const/16 p0, 0x8

    if-eq p1, p0, :cond_4

    const/16 p0, 0x10

    if-eq p1, p0, :cond_3

    const/16 p0, 0x20

    if-eq p1, p0, :cond_2

    const/16 p0, 0x40

    if-ne p1, p0, :cond_1

    invoke-static {v1, v2}, Lx/i;->i(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    long-to-int p0, v1

    invoke-static {p0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    long-to-int p0, v1

    invoke-static {p0}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    long-to-int p0, v1

    invoke-static {p0}, Lx/i;->d(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    long-to-int p0, v1

    invoke-static {p0}, Lx/i;->j(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static p(Lv/p;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    instance-of v1, p0, Lv/m;

    if-eqz v1, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lx/r;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static q(II)I
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_1

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static r(Lo/h;)S
    .locals 1

    invoke-virtual {p0}, Lo/h;->j()Lo/j;

    move-result-object p0

    invoke-virtual {p0}, Lo/j;->e()I

    move-result p0

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "extended opcode out of range 255..65535"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static s(Lo/h;I)S
    .locals 1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lo/h;->j()Lo/j;

    move-result-object p0

    invoke-virtual {p0}, Lo/j;->e()I

    move-result p0

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "opcode out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static t(Lu/p;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v3

    invoke-virtual {v3}, Lu/n;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static u(Lu/p;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->i()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v3}, Lu/n;->v(I)Lu/n;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v2}, Lu/p;->p(I)Lu/n;

    move-result-object p0

    invoke-virtual {p0}, Lu/n;->s()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lu/n;->s()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lu/p;->p(I)Lu/n;

    move-result-object p0

    invoke-virtual {p0}, Lu/n;->s()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static v(I)Z
    .locals 1

    int-to-byte v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static w(I)Z
    .locals 1

    const/4 v0, -0x8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static x(I)Z
    .locals 1

    int-to-short v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static y(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static z(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract K(Lx/a;Lo/h;)V
.end method

.method public b(Lo/z;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract d()I
.end method

.method public g(Lo/h;)Ljava/util/BitSet;
    .locals 0

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    return-object p1
.end method

.method public abstract j(Lo/h;)Ljava/lang/String;
.end method

.method public abstract k(Lo/h;Z)Ljava/lang/String;
.end method

.method public abstract l(Lo/h;)Z
.end method

.method public final n(Lo/h;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lo/h;->j()Lo/j;

    move-result-object v0

    invoke-virtual {v0}, Lo/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lo/n;->j(Lo/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lo/n;->k(Lo/h;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " // "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
