.class public Lh/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;
.implements Lg/j1;


# static fields
.field static final a:Ljava/math/BigDecimal;

.field static final b:Ljava/math/BigDecimal;

.field public static final c:Lh/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x1fffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lh/n;->a:Ljava/math/BigDecimal;

    const-wide v0, 0x1fffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lh/n;->b:Ljava/math/BigDecimal;

    new-instance v0, Lh/n;

    invoke-direct {v0}, Lh/n;-><init>()V

    sput-object v0, Lh/n;->c:Lh/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Lf/a;)Ljava/lang/Object;
    .locals 4
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

    const/16 v3, 0x10

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-interface {v0}, Lf/c;->y()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-interface {v0, v3}, Lf/c;->x(I)V

    return-object p0

    :cond_0
    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ll/l;->i(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    if-nez p2, :cond_0

    sget-object p2, Lh/g1;->j:Lh/g1;

    invoke-virtual {p1, p2}, Lh/f1;->R(Lh/g1;)V

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p3

    iget v0, p1, Lh/f1;->c:I

    sget-object v1, Lh/g1;->D:Lh/g1;

    invoke-static {p5, v0, v1}, Lh/g1;->b(IILh/g1;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0x64

    if-lt p3, v0, :cond_1

    const/16 v0, 0x64

    if-ge p3, v0, :cond_1

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v1, 0x10

    if-lt p3, v1, :cond_3

    iget p3, p1, Lh/f1;->c:I

    sget-object v1, Lh/g1;->s:Lh/g1;

    invoke-static {p5, p3, v1}, Lh/g1;->b(IILh/g1;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lh/n;->a:Ljava/math/BigDecimal;

    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p3

    if-ltz p3, :cond_2

    sget-object p3, Lh/n;->b:Ljava/math/BigDecimal;

    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p3

    if-lez p3, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Lh/f1;->S(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Lh/f1;->write(Ljava/lang/String;)V

    sget-object p3, Lh/g1;->p:Lh/g1;

    invoke-virtual {p1, p3}, Lh/f1;->j(Lh/g1;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-class p3, Ljava/math/BigDecimal;

    if-eq p4, p3, :cond_4

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    if-nez p2, :cond_4

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Lh/f1;->write(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    :try_start_0
    invoke-static {p1}, Lh/n;->f(Lf/a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseDecimal error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
