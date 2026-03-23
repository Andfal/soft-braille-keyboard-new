.class final Lw3/a2;
.super Lw3/n0;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/Object;


# instance fields
.field private j:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "String"

    sput-object v0, Lw3/a2;->k:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    iput-object p1, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method private I1(Ljava/lang/Object;)Lw3/a3;
    .locals 4

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Lw3/x1;

    invoke-direct {v1}, Lw3/x1;-><init>()V

    sget-object v2, Lw3/u3$a;->a:Lw3/u3$a;

    invoke-static {v1, v0, v2}, Lw3/u2;->s1(Lw3/a3;Lw3/z2;Lw3/u3$a;)V

    const-string v0, "value"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "writable"

    invoke-virtual {v1, v0, p1, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "enumerable"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v3, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "configurable"

    invoke-virtual {v1, v0, p1, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method static K1(Lw3/z2;Z)V
    .locals 2

    new-instance v0, Lw3/a2;

    const-string v1, ""

    invoke-direct {v0, v1}, Lw3/a2;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    return-void
.end method

.method private static L1(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_2

    aget-object v5, p1, v4

    invoke-static {v5}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eq v1, v0, :cond_3

    aget-object p0, v3, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static M1(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 11

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lw3/u2;->V1([Ljava/lang/Object;I)D

    move-result-wide v3

    const/16 v5, 0x2a

    const/16 v6, 0x29

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v0, p0

    cmpl-double p0, v3, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    double-to-int p0, v3

    :goto_0
    return p0

    :cond_1
    const/4 v7, -0x1

    if-eq p0, v6, :cond_2

    if-eq p0, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_2

    return v7

    :cond_2
    const-wide/16 v8, 0x0

    cmpg-double v10, v3, v8

    if-gez v10, :cond_3

    move-wide v3, v8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    goto :goto_2

    :cond_5
    if-ne p0, v5, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v5, p0, :cond_a

    array-length p0, p2

    if-eqz p0, :cond_7

    array-length p0, p2

    if-eq p0, v2, :cond_7

    array-length p0, p2

    const/4 v5, 0x2

    if-ne p0, v5, :cond_8

    aget-object p0, p2, v2

    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_8

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v3, p0

    :cond_8
    double-to-int p0, v3

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_a
    if-ne p0, v6, :cond_c

    double-to-int p0, v3

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, -0x1

    goto :goto_4

    :cond_c
    double-to-int p0, v3

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_4
    return v0
.end method

.method private static N1(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lw3/u2;->a2([Ljava/lang/Object;I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v3, p1

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2

    move-wide v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v1, p1

    :cond_2
    :goto_1
    double-to-int p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static O1(Lw3/m;Lw3/z2;Lw3/l0;[Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1, p2}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lw3/u2;->X1([Ljava/lang/Object;I)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    return-object p0

    :cond_0
    array-length p2, p3

    const/4 v2, 0x2

    if-lt p2, v2, :cond_1

    const/4 p2, 0x1

    aget-object v2, p3, p2

    invoke-static {v2}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object p3, p3, p2

    invoke-static {p3}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_2

    return-object p0

    :cond_1
    const-string p3, " "

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    long-to-int p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, p2, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p4, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static P1(Lw3/m;Lw3/z2;Lw3/l0;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    invoke-static {p0, p1, p2}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lw3/u2;->V1([Ljava/lang/Object;I)D

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_5

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, p2, v2

    if-eqz v4, :cond_5

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    double-to-long v2, p2

    mul-long v0, v0, v2

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, p2, v2

    if-gtz v4, :cond_3

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    long-to-int v1, v0

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p2, p2

    const/4 p3, 0x1

    :goto_0
    div-int/lit8 v0, p2, 0x2

    if-gt p3, v0, :cond_1

    invoke-virtual {v2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    mul-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    if-ge p3, p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, p3

    mul-int p0, p0, p2

    invoke-virtual {v2, p1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Invalid size or count value"

    invoke-static {p0}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0

    :cond_5
    const-string p0, "Invalid count value"

    invoke-static {p0}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method private static Q1(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 10

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v4

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    cmpg-double v6, v4, v1

    if-gez v6, :cond_1

    int-to-double v6, v0

    add-double/2addr v4, v6

    cmpg-double v6, v4, v1

    if-gez v6, :cond_2

    move-wide v4, v1

    goto :goto_1

    :cond_1
    int-to-double v6, v0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    move-wide v4, v6

    :cond_2
    :goto_1
    array-length v6, p1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    aget-object p1, p1, v3

    sget-object v3, Lw3/w3;->a:Ljava/lang/Object;

    if-ne p1, v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v6

    cmpg-double p1, v6, v1

    if-gez p1, :cond_4

    int-to-double v8, v0

    add-double/2addr v6, v8

    cmpg-double p1, v6, v1

    if-gez p1, :cond_5

    goto :goto_2

    :cond_4
    int-to-double v1, v0

    cmpl-double p1, v6, v1

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    move-wide v1, v6

    :goto_2
    cmpg-double p1, v1, v4

    if-gez p1, :cond_7

    move-wide v1, v4

    goto :goto_4

    :cond_6
    :goto_3
    int-to-double v1, v0

    :cond_7
    :goto_4
    double-to-int p1, v4

    double-to-int v0, v1

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static R1(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    int-to-double v6, v0

    add-double/2addr v2, v6

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    move-wide v2, v4

    goto :goto_0

    :cond_1
    int-to-double v6, v0

    cmpl-double v8, v2, v6

    if-lez v8, :cond_2

    move-wide v2, v6

    :cond_2
    :goto_0
    int-to-double v6, v0

    array-length v0, p1

    if-le v0, v1, :cond_5

    aget-object p1, p1, v1

    invoke-static {p1}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v0

    cmpg-double p1, v0, v4

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v4, v0

    :goto_1
    add-double/2addr v4, v2

    cmpl-double p1, v4, v6

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v6, v4

    :cond_5
    :goto_2
    double-to-int p1, v2

    double-to-int v0, v6

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static S1(Lw3/m;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lw3/u2;->V1([Ljava/lang/Object;I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    int-to-double v5, v0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_1

    move-wide v1, v5

    :cond_1
    :goto_0
    array-length v5, p2

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    aget-object p2, p2, v6

    sget-object v5, Lw3/w3;->a:Ljava/lang/Object;

    if-ne p2, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v5

    cmpg-double p2, v5, v3

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    int-to-double v3, v0

    cmpl-double p2, v5, v3

    if-lez p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v3, v5

    :goto_1
    cmpg-double p2, v3, v1

    if-gez p2, :cond_7

    invoke-virtual {p0}, Lw3/m;->v()I

    move-result p0

    const/16 p2, 0x78

    if-eq p0, p2, :cond_5

    move-wide v8, v1

    move-wide v1, v3

    move-wide v3, v8

    goto :goto_3

    :cond_5
    move-wide v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    int-to-double v3, v0

    :cond_7
    :goto_3
    double-to-int p0, v1

    double-to-int p2, v3

    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static T1(Lw3/z2;Lw3/l0;)Lw3/a2;
    .locals 1

    const-class v0, Lw3/a2;

    invoke-static {p0, v0, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/a2;

    return-object p0
.end method

.method private static U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p5, p2}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    const-string p5, "\""

    const-string v0, "&quot;"

    invoke-virtual {p2, p5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const/16 p5, 0x20

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "=\""

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;
    .locals 3

    instance-of v0, p2, Lw3/i3;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw3/m;->v()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Lw3/u2;->j2(Lw3/m;Ljava/lang/Object;)Lw3/u2$f;

    move-result-object v0

    iget-object v1, v0, Lw3/u2$f;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, v0, Lw3/u2$f;->b:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object p1, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    iget p2, v0, Lw3/u2$f;->b:I

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lw3/a2;->I1(Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/n0;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/a3;->C(ILw3/z2;)Z

    move-result p1

    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/a3;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method J1()I
    .locals 1

    iget-object v0, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public V1()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw3/a3;->d(ILw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "String"

    return-object v0
.end method

.method public m0(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p1

    invoke-virtual {p1}, Lw3/m;->v()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Lw3/a3;->m0(I)I

    move-result p1

    return p1
.end method

.method protected o1(Lw3/l0;)V
    .locals 7

    sget-object v6, Lw3/a2;->k:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "fromCharCode"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x2

    const-string v4, "fromCodePoint"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x5

    const-string v4, "charAt"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x6

    const-string v4, "charCodeAt"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x7

    const-string v4, "indexOf"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x8

    const-string v4, "lastIndexOf"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x9

    const-string v4, "split"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xa

    const-string v4, "substring"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xb

    const-string v4, "toLowerCase"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xc

    const-string v4, "toUpperCase"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xd

    const-string v4, "substr"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xe

    const-string v4, "concat"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xf

    const-string v4, "slice"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1e

    const-string v4, "equalsIgnoreCase"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1f

    const-string v4, "match"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x20

    const-string v4, "search"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x21

    const-string v4, "replace"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x22

    const-string v4, "localeCompare"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x23

    const-string v4, "toLocaleLowerCase"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lw3/n0;->o1(Lw3/l0;)V

    return-void
.end method

.method protected p1(Ljava/lang/String;)I
    .locals 1

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x7

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lw3/n0;->E1(II)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "italics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v24, 0x30

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "indexOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v24, 0x2f

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "endsWith"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x2e

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "trimLeft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v24, 0x2d

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "replace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x2c

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "localeCompare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v24, 0x2b

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "padStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x2a

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "substring"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x29

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "charCodeAt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v24, 0x28

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "fontsize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v24, 0x27

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "equalsIgnoreCase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x26

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "normalize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x25

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "valueOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0x24

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "split"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0x23

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0x22

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0x21

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "match"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v24, 0x20

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v24, 0x1f

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "blink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x1e

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "includes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v24, 0x1d

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "trim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v24, 0x1c

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v24, 0x1b

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v24, 0x1a

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "sup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v24, 0x19

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "sub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v24, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "big"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v24, 0x17

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "toUpperCase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v24, 0x16

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "lastIndexOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v24, 0x15

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "trimStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v24, 0x14

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "trimRight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v24, 0x13

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "toLocaleUpperCase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v24, 0x12

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "substr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v24, 0x11

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "strike"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v24, 0x10

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v24, 0xf

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v24, 0xe

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "padEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v24, 0xd

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "trimEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v24, 0xc

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "toLowerCase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v24, 0xb

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v24, 0xa

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "codePointAt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v24, 0x9

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "concat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v24, 0x8

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "charAt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_0

    :cond_29
    const/16 v24, 0x7

    goto :goto_0

    :sswitch_2a
    const-string v1, "anchor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_0

    :cond_2a
    const/16 v24, 0x6

    goto :goto_0

    :sswitch_2b
    const-string v1, "toLocaleLowerCase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_0

    :cond_2b
    const/16 v24, 0x5

    goto :goto_0

    :sswitch_2c
    const-string v1, "fontcolor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_0

    :cond_2c
    const/16 v24, 0x4

    goto :goto_0

    :sswitch_2d
    const-string v1, "startsWith"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_0

    :cond_2d
    const/16 v24, 0x3

    goto :goto_0

    :sswitch_2e
    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_0

    :cond_2e
    const/16 v24, 0x2

    goto :goto_0

    :sswitch_2f
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_0

    :cond_2f
    const/16 v24, 0x1

    goto :goto_0

    :sswitch_30
    const-string v1, "toSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_0

    :cond_30
    const/16 v24, 0x0

    :goto_0
    packed-switch v24, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :pswitch_0
    const/16 v2, 0x11

    goto/16 :goto_1

    :pswitch_1
    const/4 v2, 0x7

    goto/16 :goto_1

    :pswitch_2
    const/16 v2, 0x2a

    goto/16 :goto_1

    :pswitch_3
    const/16 v2, 0x26

    goto/16 :goto_1

    :pswitch_4
    const/16 v2, 0x21

    goto/16 :goto_1

    :pswitch_5
    const/16 v2, 0x22

    goto/16 :goto_1

    :pswitch_6
    const/16 v2, 0x2e

    goto/16 :goto_1

    :pswitch_7
    const/16 v2, 0xa

    goto/16 :goto_1

    :pswitch_8
    const/4 v2, 0x6

    goto/16 :goto_1

    :pswitch_9
    const/16 v2, 0x19

    goto/16 :goto_1

    :pswitch_a
    const/16 v2, 0x1e

    goto/16 :goto_1

    :pswitch_b
    const/16 v2, 0x2b

    goto/16 :goto_1

    :pswitch_c
    const/4 v2, 0x4

    goto/16 :goto_1

    :pswitch_d
    const/16 v2, 0x9

    goto/16 :goto_1

    :pswitch_e
    const/16 v2, 0x14

    goto/16 :goto_1

    :pswitch_f
    const/16 v2, 0xf

    goto/16 :goto_1

    :pswitch_10
    const/16 v2, 0x1f

    goto/16 :goto_1

    :pswitch_11
    const/16 v2, 0x12

    goto/16 :goto_1

    :pswitch_12
    const/16 v2, 0x16

    goto/16 :goto_1

    :pswitch_13
    const/16 v2, 0x28

    goto/16 :goto_1

    :pswitch_14
    const/16 v2, 0x25

    goto/16 :goto_1

    :pswitch_15
    const/16 v2, 0x1b

    goto :goto_1

    :pswitch_16
    const/16 v2, 0x10

    goto :goto_1

    :pswitch_17
    const/16 v2, 0x17

    goto :goto_1

    :pswitch_18
    const/16 v2, 0x18

    goto :goto_1

    :pswitch_19
    const/16 v2, 0xc

    goto :goto_1

    :pswitch_1a
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_1b
    const/16 v2, 0x31

    goto :goto_1

    :pswitch_1c
    const/16 v2, 0x27

    goto :goto_1

    :pswitch_1d
    const/16 v2, 0x24

    goto :goto_1

    :pswitch_1e
    const/16 v2, 0xd

    goto :goto_1

    :pswitch_1f
    const/16 v2, 0x13

    goto :goto_1

    :pswitch_20
    const/16 v2, 0x20

    goto :goto_1

    :pswitch_21
    const/16 v2, 0x2c

    goto :goto_1

    :pswitch_22
    const/16 v2, 0x2f

    goto :goto_1

    :pswitch_23
    const/16 v2, 0x32

    goto :goto_1

    :pswitch_24
    const/16 v2, 0xb

    goto :goto_1

    :pswitch_25
    const/16 v2, 0x1d

    goto :goto_1

    :pswitch_26
    const/16 v2, 0x2d

    goto :goto_1

    :pswitch_27
    const/16 v2, 0xe

    goto :goto_1

    :pswitch_28
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_29
    const/16 v2, 0x1c

    goto :goto_1

    :pswitch_2a
    const/16 v2, 0x23

    goto :goto_1

    :pswitch_2b
    const/16 v2, 0x1a

    goto :goto_1

    :pswitch_2c
    const/16 v2, 0x29

    goto :goto_1

    :pswitch_2d
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2e
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_2f
    const/4 v2, 0x3

    :goto_1
    :pswitch_30
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a2ea58a -> :sswitch_30
        -0x69e9ad94 -> :sswitch_2f
        -0x5ead2806 -> :sswitch_2e
        -0x5cb7a349 -> :sswitch_2d
        -0x5b92838c -> :sswitch_2c
        -0x57513364 -> :sswitch_2b
        -0x543d3d4b -> :sswitch_2a
        -0x5128e1d7 -> :sswitch_29
        -0x50c088ec -> :sswitch_28
        -0x4dccf0ca -> :sswitch_27
        -0x4d378041 -> :sswitch_26
        -0x43ce226a -> :sswitch_25
        -0x3f2a6ea7 -> :sswitch_24
        -0x3b5bccb8 -> :sswitch_23
        -0x37b3d265 -> :sswitch_22
        -0x36059a58 -> :sswitch_21
        -0x352aa04e -> :sswitch_20
        -0x3523a80f -> :sswitch_1f
        -0x2b53be43 -> :sswitch_1e
        -0x1d945ce6 -> :sswitch_1d
        -0x1d815aa0 -> :sswitch_1c
        -0x1bdda92d -> :sswitch_1b
        -0x17d0ad49 -> :sswitch_1a
        0x17d00 -> :sswitch_19
        0x1be40 -> :sswitch_18
        0x1be4e -> :sswitch_17
        0x2e3a85 -> :sswitch_16
        0x32affa -> :sswitch_15
        0x367422 -> :sswitch_14
        0x56140cb -> :sswitch_13
        0x597af5c -> :sswitch_12
        0x5cee774 -> :sswitch_11
        0x62dd9c5 -> :sswitch_10
        0x6873d92 -> :sswitch_f
        0x6879507 -> :sswitch_e
        0x6891b1a -> :sswitch_d
        0xdce0328 -> :sswitch_c
        0xe1a5f0d -> :sswitch_b
        0xf5dad41 -> :sswitch_a
        0x15d92cd0 -> :sswitch_9
        0x17ac15f6 -> :sswitch_8
        0x1f9f6e51 -> :sswitch_7
        0x2d2c878f -> :sswitch_6
        0x3e27cd2b -> :sswitch_5
        0x413cb2b4 -> :sswitch_4
        0x59dfa749 -> :sswitch_3
        0x67e67bde -> :sswitch_2
        0x73d44649 -> :sswitch_1
        0x7dea0c43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_30
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method protected s1(Lw3/i3;)I
    .locals 1

    sget-object v0, Lw3/j3;->b:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x30

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lw3/a2;->k:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v0

    move-object v6, p5

    :goto_0
    const/4 p5, -0x2

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, p5, :cond_26

    const/4 p5, -0x1

    if-eq v0, p5, :cond_23

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v4, 0x3

    const-wide/16 v7, 0x0

    packed-switch v0, :pswitch_data_2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "String.prototype has no method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    new-instance p5, Lw3/b2;

    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p5, p3, p1}, Lw3/b2;-><init>(Lw3/z2;Ljava/lang/Object;)V

    return-object p5

    :pswitch_1
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, v3}, Lw3/u2;->V1([Ljava/lang/Object;I)D

    move-result-wide p2

    cmpg-double p4, p2, v7

    if-ltz p4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    int-to-double p4, p4

    cmpl-double v0, p2, p4

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    double-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    :goto_2
    return-object p1

    :pswitch_2
    invoke-static {p2, p4, p1, v6}, Lw3/a2;->P1(Lw3/m;Lw3/z2;Lw3/l0;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    array-length p3, v6

    if-eqz p3, :cond_8

    aget-object p3, v6, v3

    invoke-static {p3}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v6, v3}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p3

    sget-object p5, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    sget-object p3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    goto :goto_3

    :cond_4
    sget-object p5, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    sget-object p3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    goto :goto_3

    :cond_5
    sget-object p5, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    sget-object p3, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    goto :goto_3

    :cond_6
    sget-object p5, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    sget-object p3, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    :goto_3
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "The normalization form should be one of \'NFC\', \'NFD\', \'NFKC\', \'NFKD\'."

    invoke-static {p1}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_8
    :goto_4
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, p2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    array-length v1, v6

    if-lez v1, :cond_9

    aget-object v1, v6, v3

    :cond_9
    invoke-static {v0, p3, v6}, Lw3/a2;->M1(ILjava/lang/String;[Ljava/lang/Object;)I

    move-result p3

    const/16 v1, 0x28

    if-ne v0, v1, :cond_b

    if-eq p3, p5, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 v1, 0x29

    if-ne v0, v1, :cond_d

    if-nez p3, :cond_c

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_d
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_f

    if-eq p3, p5, :cond_e

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_f
    :pswitch_5
    const/16 p3, 0x2e

    if-ne v0, p3, :cond_10

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    :goto_8
    invoke-static {p2, p4, p1, v6, v2}, Lw3/a2;->O1(Lw3/m;Lw3/z2;Lw3/l0;[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    array-length p3, p2

    :goto_9
    if-lez p3, :cond_11

    add-int/lit8 p4, p3, -0x1

    aget-char p4, p2, p4

    invoke-static {p4}, Lw3/u2;->B0(I)Z

    move-result p4

    if-eqz p4, :cond_11

    add-int/lit8 p3, p3, -0x1

    goto :goto_9

    :cond_11
    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :goto_a
    array-length p3, p2

    if-ge v3, p3, :cond_12

    aget-char p3, p2, v3

    invoke-static {p3}, Lw3/u2;->B0(I)Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    array-length p2, p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :goto_b
    array-length p3, p2

    if-ge v3, p3, :cond_13

    aget-char p3, p2, v3

    invoke-static {p3}, Lw3/u2;->B0(I)Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_13
    array-length p3, p2

    :goto_c
    if-le p3, v3, :cond_14

    add-int/lit8 p4, p3, -0x1

    aget-char p4, p2, p4

    invoke-static {p4}, Lw3/u2;->B0(I)Z

    move-result p4

    if-eqz p4, :cond_14

    add-int/lit8 p3, p3, -0x1

    goto :goto_c

    :cond_14
    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lw3/m;->w()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lw3/m;->w()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lw3/m;->w()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/text/Collator;->setStrength(I)V

    invoke-virtual {p2, v2}, Ljava/text/Collator;->setDecomposition(I)V

    invoke-static {v6, v3}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_c
    const/16 p5, 0x1f

    if-ne v0, p5, :cond_15

    const/4 p5, 0x1

    goto :goto_d

    :cond_15
    const/16 p5, 0x20

    if-ne v0, p5, :cond_16

    const/4 p5, 0x3

    goto :goto_d

    :cond_16
    const/4 p5, 0x2

    :goto_d
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    invoke-static {p2}, Lw3/u2;->i(Lw3/m;)Lw3/q2;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lw3/q2;->b(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p4}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, v3}, Lw3/u2;->i2([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x1d

    if-ne v0, p3, :cond_17

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_e

    :cond_17
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_e
    invoke-static {p1}, Lw3/u2;->A2(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_e
    const-string v4, "a"

    const-string v5, "name"

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_f
    const-string v4, "a"

    const-string v5, "href"

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_10
    const-string v4, "font"

    const-string v5, "color"

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_11
    const-string v4, "font"

    const-string v5, "size"

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_12
    const-string v4, "sub"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_13
    const-string v4, "sup"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14
    const-string v4, "blink"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_15
    const-string v4, "big"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_16
    const-string v4, "small"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_17
    const-string v4, "strike"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_18
    const-string v4, "tt"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_19
    const-string v4, "i"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1a
    const-string v4, "b"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lw3/a2;->U1(Lw3/m;Lw3/z2;Lw3/l0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1b
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->P1(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v6}, Lw3/a2;->Q1(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :pswitch_1c
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lw3/a2;->L1(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1d
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->P1(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v6}, Lw3/a2;->R1(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :pswitch_1e
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1f
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_20
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->P1(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2, p1, v6}, Lw3/a2;->S1(Lw3/m;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :pswitch_21
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lw3/u2;->i(Lw3/m;)Lw3/q2;

    move-result-object p4

    invoke-interface {p4, p2, p3, p1, v6}, Lw3/q2;->d(Lw3/m;Lw3/z2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_22
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lw3/a2;->N1(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lw3/u2;->C2(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_23
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p2, p1, v6}, Lw3/a2;->M1(ILjava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lw3/u2;->C2(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_24
    invoke-static {p2, p4, p1}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->P1(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v6, v3}, Lw3/u2;->V1([Ljava/lang/Object;I)D

    move-result-wide p2

    const/4 p4, 0x5

    cmpg-double p5, p2, v7

    if-ltz p5, :cond_1a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    int-to-double v2, p5

    cmpl-double p5, p2, v2

    if-ltz p5, :cond_18

    goto :goto_f

    :cond_18
    double-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne v0, p4, :cond_19

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-static {p1}, Lw3/u2;->C2(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_f
    if-ne v0, p4, :cond_1b

    return-object v1

    :cond_1b
    sget-object p1, Lw3/u2;->t:Ljava/lang/Double;

    return-object p1

    :pswitch_25
    invoke-static {p4, p1}, Lw3/a2;->T1(Lw3/z2;Lw3/l0;)Lw3/a2;

    move-result-object p1

    iget-object p1, p1, Lw3/a2;->j:Ljava/lang/CharSequence;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "(new String(\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"))"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_26
    invoke-static {p4, p1}, Lw3/a2;->T1(Lw3/z2;Lw3/l0;)Lw3/a2;

    move-result-object p1

    iget-object p1, p1, Lw3/a2;->j:Ljava/lang/CharSequence;

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1c

    goto :goto_10

    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_10
    return-object p1

    :pswitch_27
    array-length p1, v6

    if-nez p1, :cond_1d

    goto :goto_11

    :cond_1d
    aget-object p1, v6, v3

    invoke-static {p1}, Lw3/u2;->H0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    if-eqz p4, :cond_1e

    aget-object p1, v6, v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_1e
    aget-object p1, v6, v3

    invoke-static {p1}, Lw3/u2;->P1(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_11
    if-nez p4, :cond_1f

    new-instance p1, Lw3/a2;

    invoke-direct {p1, v1}, Lw3/a2;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_1f
    instance-of p1, v1, Ljava/lang/String;

    if-eqz p1, :cond_20

    goto :goto_12

    :cond_20
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    return-object v1

    :pswitch_28
    array-length p5, v6

    if-lez p5, :cond_22

    aget-object p4, v6, v3

    invoke-static {p4}, Lw3/u2;->P1(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p4

    array-length p5, v6

    sub-int/2addr p5, v2

    new-array v1, p5, [Ljava/lang/Object;

    :goto_13
    if-ge v3, p5, :cond_21

    add-int/lit8 v2, v3, 0x1

    aget-object v4, v6, v2

    aput-object v4, v1, v3

    move v3, v2

    goto :goto_13

    :cond_21
    move-object v6, v1

    goto :goto_14

    :cond_22
    invoke-static {p4}, Lw3/u2;->P1(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p4

    :goto_14
    neg-int v0, v0

    goto/16 :goto_0

    :cond_23
    array-length p1, v6

    if-ge p1, v2, :cond_24

    return-object v1

    :cond_24
    new-array p2, p1, [C

    :goto_15
    if-eq v3, p1, :cond_25

    aget-object p3, v6, v3

    invoke-static {p3}, Lw3/u2;->k2(Ljava/lang/Object;)C

    move-result p3

    aput-char p3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_25
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_26
    array-length p1, v6

    if-ge p1, v2, :cond_27

    return-object v1

    :cond_27
    new-array p2, p1, [I

    const/4 p3, 0x0

    :goto_16
    if-eq p3, p1, :cond_29

    aget-object p4, v6, p3

    invoke-static {p4}, Lw3/u2;->R1(Ljava/lang/Object;)I

    move-result p5

    invoke-static {p4}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lw3/u2;->I(DLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p5}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_28

    aput p5, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_16

    :cond_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid code point "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_29
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2, v3, p1}, Ljava/lang/String;-><init>([III)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch -0x23
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xf
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected v1(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "length"

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lw3/n0;->v1(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected w1(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Lw3/u2;->C2(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected x1()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected y0(ZZ)[Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw3/m;->v()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Lw3/n0;->y0(ZZ)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    iget-object v0, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p2, v0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lw3/a2;->j:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p1

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    invoke-super {p0, p1, p2}, Lw3/n0;->y0(ZZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected y1(I)V
    .locals 13

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    sget-object v2, Lw3/a2;->k:Ljava/lang/Object;

    sget-object v4, Lw3/j3;->b:Lw3/j3;

    const-string v5, "[Symbol.iterator]"

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lw3/n0;->B1(Ljava/lang/Object;ILw3/i3;Ljava/lang/String;I)Lw3/l0;

    return-void

    :cond_0
    const/4 v11, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "trimEnd"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "trimStart"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "padEnd"

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "padStart"

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "codePointAt"

    goto/16 :goto_2

    :pswitch_6
    const-string v0, "repeat"

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "normalize"

    goto/16 :goto_1

    :pswitch_8
    const-string v0, "endsWith"

    goto/16 :goto_2

    :pswitch_9
    const-string v0, "startsWith"

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "includes"

    goto/16 :goto_2

    :pswitch_b
    const-string v0, "trimRight"

    goto/16 :goto_1

    :pswitch_c
    const-string v0, "trimLeft"

    goto/16 :goto_1

    :pswitch_d
    const-string v0, "trim"

    goto/16 :goto_1

    :pswitch_e
    const-string v0, "toLocaleUpperCase"

    goto/16 :goto_1

    :pswitch_f
    const-string v0, "toLocaleLowerCase"

    goto/16 :goto_1

    :pswitch_10
    const-string v0, "localeCompare"

    goto/16 :goto_2

    :pswitch_11
    const-string v1, "replace"

    goto :goto_0

    :pswitch_12
    const-string v0, "search"

    goto/16 :goto_2

    :pswitch_13
    const-string v0, "match"

    goto/16 :goto_2

    :pswitch_14
    const-string v0, "equalsIgnoreCase"

    goto/16 :goto_2

    :pswitch_15
    const-string v0, "equals"

    goto/16 :goto_2

    :pswitch_16
    const-string v0, "anchor"

    goto/16 :goto_1

    :pswitch_17
    const-string v0, "link"

    goto/16 :goto_1

    :pswitch_18
    const-string v0, "fontcolor"

    goto :goto_1

    :pswitch_19
    const-string v0, "fontsize"

    goto :goto_1

    :pswitch_1a
    const-string v0, "sub"

    goto :goto_1

    :pswitch_1b
    const-string v0, "sup"

    goto :goto_1

    :pswitch_1c
    const-string v0, "blink"

    goto :goto_1

    :pswitch_1d
    const-string v0, "big"

    goto :goto_1

    :pswitch_1e
    const-string v0, "small"

    goto :goto_1

    :pswitch_1f
    const-string v0, "strike"

    goto :goto_1

    :pswitch_20
    const-string v0, "fixed"

    goto :goto_1

    :pswitch_21
    const-string v0, "italics"

    goto :goto_1

    :pswitch_22
    const-string v0, "bold"

    goto :goto_1

    :pswitch_23
    const-string v1, "slice"

    goto :goto_0

    :pswitch_24
    const-string v0, "concat"

    goto :goto_2

    :pswitch_25
    const-string v1, "substr"

    goto :goto_0

    :pswitch_26
    const-string v0, "toUpperCase"

    goto :goto_1

    :pswitch_27
    const-string v0, "toLowerCase"

    goto :goto_1

    :pswitch_28
    const-string v1, "substring"

    goto :goto_0

    :pswitch_29
    const-string v1, "split"

    :goto_0
    move-object v10, v1

    const/4 v12, 0x2

    goto :goto_3

    :pswitch_2a
    const-string v0, "lastIndexOf"

    goto :goto_2

    :pswitch_2b
    const-string v0, "indexOf"

    goto :goto_2

    :pswitch_2c
    const-string v0, "charCodeAt"

    goto :goto_2

    :pswitch_2d
    const-string v0, "charAt"

    goto :goto_2

    :pswitch_2e
    const-string v0, "valueOf"

    goto :goto_1

    :pswitch_2f
    const-string v0, "toSource"

    goto :goto_1

    :pswitch_30
    const-string v0, "toString"

    :goto_1
    move-object v10, v0

    const/4 v12, 0x0

    goto :goto_3

    :pswitch_31
    const-string v0, "constructor"

    :goto_2
    move-object v10, v0

    const/4 v12, 0x1

    :goto_3
    sget-object v8, Lw3/a2;->k:Ljava/lang/Object;

    move-object v7, p0

    move v9, p1

    invoke-virtual/range {v7 .. v12}, Lw3/n0;->A1(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lw3/l0;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
