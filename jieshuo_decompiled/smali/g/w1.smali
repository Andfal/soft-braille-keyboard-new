.class public Lg/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;
.implements Lg/j1;


# static fields
.field public static a:Lg/w1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/w1;

    invoke-direct {v0}, Lg/w1;-><init>()V

    sput-object v0, Lg/w1;->a:Lg/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lh/k0;->G()V

    return-void

    :cond_0
    instance-of p3, p2, Ljava/util/Optional;

    if-eqz p3, :cond_2

    check-cast p2, Ljava/util/Optional;

    invoke-static {p2}, Lai/onnxruntime/g;->a(Ljava/util/Optional;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lai/onnxruntime/j;->a(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lh/k0;->E(Ljava/lang/Object;)V

    return-void

    :cond_2
    instance-of p3, p2, Ljava/util/OptionalDouble;

    if-eqz p3, :cond_4

    check-cast p2, Ljava/util/OptionalDouble;

    invoke-static {p2}, Lg/s1;->a(Ljava/util/OptionalDouble;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2}, Lg/t1;->a(Ljava/util/OptionalDouble;)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/k0;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lh/k0;->G()V

    :goto_1
    return-void

    :cond_4
    instance-of p3, p2, Ljava/util/OptionalInt;

    if-eqz p3, :cond_6

    check-cast p2, Ljava/util/OptionalInt;

    invoke-static {p2}, Lg/u1;->a(Ljava/util/OptionalInt;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p2}, Lg/v1;->a(Ljava/util/OptionalInt;)I

    move-result p2

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    invoke-virtual {p1, p2}, Lh/f1;->L(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lh/k0;->G()V

    :goto_2
    return-void

    :cond_6
    instance-of p3, p2, Ljava/util/OptionalLong;

    if-eqz p3, :cond_8

    check-cast p2, Ljava/util/OptionalLong;

    invoke-static {p2}, Lg/l1;->a(Ljava/util/OptionalLong;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {p2}, Lg/m1;->a(Ljava/util/OptionalLong;)J

    move-result-wide p2

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    invoke-virtual {p1, p2, p3}, Lh/f1;->N(J)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lh/k0;->G()V

    :goto_3
    return-void

    :cond_8
    new-instance p1, Lc/d;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support optional : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xc

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

    const-class p3, Ljava/util/OptionalInt;

    if-ne p2, p3, :cond_1

    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lf/a;->S(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ll/l;->t(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lg/k1;->a()Ljava/util/OptionalInt;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lg/n1;->a(I)Ljava/util/OptionalInt;

    move-result-object p1

    return-object p1

    :cond_1
    const-class p3, Ljava/util/OptionalLong;

    if-ne p2, p3, :cond_3

    const-class p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lf/a;->S(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ll/l;->w(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lg/o1;->a()Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lg/p1;->a(J)Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1

    :cond_3
    const-class p3, Ljava/util/OptionalDouble;

    if-ne p2, p3, :cond_5

    const-class p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Lf/a;->S(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ll/l;->q(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lg/q1;->a()Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lg/r1;->a(D)Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {p2}, Ll/l;->N0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a;->U(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lai/onnxruntime/m;->a()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {p1}, Lai/onnxruntime/n;->a(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
