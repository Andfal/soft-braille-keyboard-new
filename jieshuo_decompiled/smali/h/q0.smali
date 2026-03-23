.class public Lh/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;
.implements Lg/j1;


# static fields
.field public static a:Lh/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/q0;

    invoke-direct {v0}, Lh/q0;-><init>()V

    sput-object v0, Lh/q0;->a:Lh/q0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    if-nez p2, :cond_0

    sget-object p2, Lh/g1;->j:Lh/g1;

    invoke-virtual {p1, p2}, Lh/f1;->R(Lh/g1;)V

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lh/f1;->N(J)V

    sget-object p5, Lh/g1;->p:Lh/g1;

    invoke-virtual {p1, p5}, Lh/f1;->j(Lh/g1;)Z

    move-result p5

    if-eqz p5, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long p5, p2, v0

    if-gtz p5, :cond_1

    const-wide/32 v0, -0x80000000

    cmp-long p5, p2, v0

    if-ltz p5, :cond_1

    const-class p2, Ljava/lang/Long;

    if-eq p4, p2, :cond_1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_1

    const/16 p2, 0x4c

    invoke-virtual {p1, p2}, Lh/f1;->write(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    iget-object v0, p1, Lf/a;->f:Lf/c;

    :try_start_0
    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x10

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lf/c;->e()J

    move-result-wide v1

    invoke-interface {v0, v3}, Lf/c;->x(I)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lf/c;->y()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Ll/l;->D0(Ljava/math/BigDecimal;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v3}, Lf/c;->x(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xc

    if-ne v1, v0, :cond_2

    new-instance v0, Lc/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/e;-><init>(Z)V

    invoke-virtual {p1, v0}, Lf/a;->W(Ljava/util/Map;)Ljava/lang/Object;

    invoke-static {v0}, Ll/l;->w(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lf/a;->H()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ll/l;->w(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_1
    const-class p3, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p2, p3, :cond_4

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object p1, p2

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseLong error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
