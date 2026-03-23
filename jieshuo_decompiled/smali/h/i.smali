.class public Lh/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;
.implements Lg/j1;


# static fields
.field public static final a:Lh/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/i;

    invoke-direct {v0}, Lh/i;-><init>()V

    sput-object v0, Lh/i;->a:Lh/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 3

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    instance-of p3, p2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p1, p2}, Lh/f1;->L(I)V

    return-void

    :cond_0
    instance-of p3, p2, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p3, :cond_1

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lh/f1;->N(J)V

    return-void

    :cond_1
    instance-of p3, p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p3, :cond_3

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "true"

    goto :goto_0

    :cond_2
    const-string p2, "false"

    :goto_0
    invoke-virtual {p1, p2}, Lh/f1;->c(Ljava/lang/CharSequence;)Lh/f1;

    return-void

    :cond_3
    if-nez p2, :cond_4

    sget-object p2, Lh/g1;->h:Lh/g1;

    invoke-virtual {p1, p2}, Lh/f1;->R(Lh/g1;)V

    return-void

    :cond_4
    instance-of p3, p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/16 p4, 0x2c

    const/16 p5, 0x5d

    const/4 v0, 0x0

    const/16 v1, 0x5b

    if-eqz p3, :cond_7

    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result p3

    invoke-virtual {p1, v1}, Lh/f1;->write(I)V

    :goto_1
    if-ge v0, p3, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    if-eqz v0, :cond_5

    invoke-virtual {p1, p4}, Lh/f1;->write(I)V

    :cond_5
    invoke-virtual {p1, v1}, Lh/f1;->L(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p1, p5}, Lh/f1;->write(I)V

    return-void

    :cond_7
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result p3

    invoke-virtual {p1, v1}, Lh/f1;->write(I)V

    :goto_2
    if-ge v0, p3, :cond_9

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v1

    if-eqz v0, :cond_8

    invoke-virtual {p1, p4}, Lh/f1;->write(I)V

    :cond_8
    invoke-virtual {p1, v1, v2}, Lh/f1;->N(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p1, p5}, Lh/f1;->write(I)V

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    iget-object p3, p1, Lf/a;->f:Lf/c;

    invoke-interface {p3}, Lf/c;->M()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    iget-object p1, p1, Lf/a;->f:Lf/c;

    const/16 p2, 0x10

    invoke-interface {p1, p2}, Lf/c;->x(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p3, Lc/b;

    invoke-direct {p3}, Lc/b;-><init>()V

    invoke-virtual {p1, p3}, Lf/a;->N(Ljava/util/Collection;)V

    const-class p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_2

    new-instance p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p3}, Lc/b;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    :goto_0
    invoke-virtual {p3}, Lc/b;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    invoke-virtual {p3, v0}, Lc/b;->A(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p3}, Lc/b;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    :goto_1
    invoke-virtual {p3}, Lc/b;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    invoke-virtual {p3, v0}, Lc/b;->B(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method
