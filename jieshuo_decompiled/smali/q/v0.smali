.class public final Lq/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lq/m;

.field private final b:Lx/a;


# direct methods
.method public constructor <init>(Lq/m;Lx/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lq/v0;->a:Lq/m;

    iput-object p2, p0, Lq/v0;->b:Lx/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lq/m;Lt/a;)V
    .locals 0

    invoke-virtual {p0}, Lq/m;->s()Lq/r0;

    invoke-virtual {p0}, Lq/m;->r()Lq/p0;

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Lq/m;Lv/a;)V
    .locals 3

    instance-of v0, p1, Lv/b;

    if-eqz v0, :cond_0

    check-cast p1, Lv/b;

    invoke-virtual {p1}, Lv/b;->g()Lt/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lq/v0;->a(Lq/m;Lt/a;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lv/c;

    if-eqz v0, :cond_1

    check-cast p1, Lv/c;

    invoke-virtual {p1}, Lv/c;->g()Lv/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lv/c$a;->q(I)Lv/a;

    move-result-object v2

    invoke-static {p0, v2}, Lq/v0;->b(Lq/m;Lv/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lq/m;->v(Lv/a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Lv/a;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lq/v0;->d(Lv/a;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lx/r;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lv/a;)I
    .locals 1

    instance-of v0, p0, Lv/f;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lv/u;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Lv/g;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    instance-of v0, p0, Lv/l;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    instance-of v0, p0, Lv/q;

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    instance-of v0, p0, Lv/k;

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    :cond_5
    instance-of v0, p0, Lv/h;

    if-eqz v0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    instance-of v0, p0, Lv/v;

    if-eqz v0, :cond_7

    const/16 p0, 0x17

    return p0

    :cond_7
    instance-of v0, p0, Lv/w;

    if-eqz v0, :cond_8

    const/16 p0, 0x18

    return p0

    :cond_8
    instance-of v0, p0, Lv/j;

    if-eqz v0, :cond_9

    const/16 p0, 0x19

    return p0

    :cond_9
    instance-of v0, p0, Lv/s;

    if-eqz v0, :cond_a

    const/16 p0, 0x1a

    return p0

    :cond_a
    instance-of v0, p0, Lv/i;

    if-eqz v0, :cond_b

    const/16 p0, 0x1b

    return p0

    :cond_b
    instance-of v0, p0, Lv/c;

    if-eqz v0, :cond_c

    const/16 p0, 0x1c

    return p0

    :cond_c
    instance-of v0, p0, Lv/b;

    if-eqz v0, :cond_d

    const/16 p0, 0x1d

    return p0

    :cond_d
    instance-of v0, p0, Lv/m;

    if-eqz v0, :cond_e

    const/16 p0, 0x1e

    return p0

    :cond_e
    instance-of p0, p0, Lv/e;

    if-eqz p0, :cond_f

    const/16 p0, 0x1f

    return p0

    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private h(IJ)V
    .locals 3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long/2addr p2, v1

    iget-object v1, p0, Lq/v0;->b:Lx/a;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lx/q;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_1

    iget-object p1, p0, Lq/v0;->b:Lx/a;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lx/q;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i(IJ)V
    .locals 3

    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lq/v0;->b:Lx/a;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lx/q;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_0

    iget-object p1, p0, Lq/v0;->b:Lx/a;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lx/q;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(IJ)V
    .locals 3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lq/v0;->b:Lx/a;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lx/q;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_1

    iget-object p1, p0, Lq/v0;->b:Lx/a;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lx/q;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public e(Lt/a;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lq/v0;->b:Lx/a;

    invoke-interface {p1}, Lx/a;->k()Z

    move-result p1

    :cond_0
    iget-object p1, p0, Lq/v0;->a:Lq/m;

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    iget-object p1, p0, Lq/v0;->a:Lq/m;

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Lv/c;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lq/v0;->b:Lx/a;

    invoke-interface {p2}, Lx/a;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lv/c;->g()Lv/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lq/v0;->b:Lx/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lx/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lq/v0;->b:Lx/a;

    invoke-interface {v2, v1}, Lx/q;->i(I)I

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lv/c$a;->q(I)Lv/a;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lq/v0;->b:Lx/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lq/v0;->c(Lv/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lx/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v2}, Lq/v0;->g(Lv/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lq/v0;->b:Lx/a;

    invoke-interface {p1}, Lx/a;->j()V

    :cond_4
    return-void
.end method

.method public g(Lv/a;)V
    .locals 3

    invoke-static {p1}, Lq/v0;->d(Lv/a;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Lv/e;

    invoke-virtual {p1}, Lv/n;->h()I

    move-result p1

    iget-object v1, p0, Lq/v0;->b:Lx/a;

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    invoke-interface {v1, p1}, Lx/q;->writeByte(I)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Lq/v0;->b:Lx/a;

    invoke-interface {p1, v0}, Lx/q;->writeByte(I)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v2, p0, Lq/v0;->b:Lx/a;

    invoke-interface {v2, v0}, Lx/q;->writeByte(I)V

    check-cast p1, Lv/b;

    invoke-virtual {p1}, Lv/b;->g()Lt/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lq/v0;->e(Lt/a;Z)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v2, p0, Lq/v0;->b:Lx/a;

    invoke-interface {v2, v0}, Lx/q;->writeByte(I)V

    check-cast p1, Lv/c;

    invoke-virtual {p0, p1, v1}, Lq/v0;->f(Lv/c;Z)V

    goto :goto_4

    :pswitch_4
    check-cast p1, Lv/i;

    invoke-virtual {p1}, Lv/i;->i()Lv/j;

    move-result-object p1

    iget-object v1, p0, Lq/v0;->a:Lq/m;

    invoke-virtual {v1}, Lq/m;->i()Lq/t;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lq/v0;->a:Lq/m;

    invoke-virtual {v1}, Lq/m;->n()Lq/f0;

    move-result-object v1

    check-cast p1, Lv/s;

    invoke-virtual {v1, p1}, Lq/f0;->s(Lv/d;)I

    move-result p1

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Lq/v0;->a:Lq/m;

    invoke-virtual {v1}, Lq/m;->i()Lq/t;

    move-result-object v1

    check-cast p1, Lv/j;

    :goto_0
    invoke-virtual {v1, p1}, Lq/t;->s(Lv/j;)I

    move-result p1

    goto :goto_1

    :pswitch_7
    iget-object v1, p0, Lq/v0;->a:Lq/m;

    invoke-virtual {v1}, Lq/m;->s()Lq/r0;

    move-result-object v1

    check-cast p1, Lv/w;

    invoke-virtual {v1, p1}, Lq/r0;->s(Lv/w;)I

    move-result p1

    goto :goto_1

    :pswitch_8
    iget-object v1, p0, Lq/v0;->a:Lq/m;

    invoke-virtual {v1}, Lq/m;->r()Lq/p0;

    move-result-object v1

    check-cast p1, Lv/v;

    invoke-virtual {v1, p1}, Lq/p0;->s(Lv/v;)I

    move-result p1

    :goto_1
    int-to-long v1, p1

    goto :goto_3

    :cond_0
    check-cast p1, Lv/h;

    invoke-virtual {p1}, Lv/o;->i()J

    move-result-wide v1

    goto :goto_2

    :cond_1
    check-cast p1, Lv/k;

    invoke-virtual {p1}, Lv/n;->i()J

    move-result-wide v1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lq/v0;->h(IJ)V

    goto :goto_4

    :cond_2
    check-cast p1, Lv/p;

    invoke-virtual {p1}, Lv/p;->i()J

    move-result-wide v1

    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lq/v0;->j(IJ)V

    goto :goto_4

    :cond_3
    check-cast p1, Lv/p;

    invoke-virtual {p1}, Lv/p;->i()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lq/v0;->i(IJ)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
