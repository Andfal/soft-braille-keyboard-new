.class public Lh/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;
.implements Lg/j1;


# static fields
.field private static final a:Ljava/math/BigInteger;

.field private static final b:Ljava/math/BigInteger;

.field public static final c:Lh/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x1fffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lh/o;->a:Ljava/math/BigInteger;

    const-wide v0, 0x1fffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lh/o;->b:Ljava/math/BigInteger;

    new-instance v0, Lh/o;

    invoke-direct {v0}, Lh/o;-><init>()V

    sput-object v0, Lh/o;->c:Lh/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Lf/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lf/c;->h0()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lf/c;->x(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lc/d;

    const-string v0, "decimal overflow"

    invoke-direct {p0, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ll/l;->j(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 1

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    if-nez p2, :cond_0

    sget-object p2, Lh/g1;->j:Lh/g1;

    invoke-virtual {p1, p2}, Lh/f1;->R(Lh/g1;)V

    return-void

    :cond_0
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v0, 0x10

    if-lt p4, v0, :cond_2

    iget p4, p1, Lh/f1;->c:I

    sget-object v0, Lh/g1;->s:Lh/g1;

    invoke-static {p5, p4, v0}, Lh/g1;->b(IILh/g1;)Z

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Lh/o;->a:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p4

    if-ltz p4, :cond_1

    sget-object p4, Lh/o;->b:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-lez p2, :cond_2

    :cond_1
    invoke-virtual {p1, p3}, Lh/f1;->S(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1, p3}, Lh/f1;->write(Ljava/lang/String;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lh/o;->f(Lf/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
