.class public Lw3/y0;
.super Lw3/n0;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/y0$c;,
        Lw3/y0$d;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/Object;

.field private static final o:Ljava/lang/Long;

.field private static final p:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static r:I


# instance fields
.field private j:J

.field private k:I

.field private l:[Ljava/lang/Object;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Array"

    sput-object v0, Lw3/y0;->n:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lw3/y0;->o:Ljava/lang/Long;

    new-instance v0, Lw3/y0$d;

    invoke-direct {v0}, Lw3/y0$d;-><init>()V

    sput-object v0, Lw3/y0;->p:Ljava/util/Comparator;

    new-instance v0, Lw3/y0$c;

    invoke-direct {v0}, Lw3/y0$c;-><init>()V

    sput-object v0, Lw3/y0;->q:Ljava/util/Comparator;

    const/16 v0, 0x2710

    sput v0, Lw3/y0;->r:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Lw3/n0;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lw3/y0;->k:I

    sget v0, Lw3/y0;->r:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lw3/y0;->m:Z

    if-eqz v0, :cond_2

    long-to-int v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iput-wide p1, p0, Lw3/y0;->j:J

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lw3/n0;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lw3/y0;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/y0;->m:Z

    iput-object p1, p0, Lw3/y0;->l:[Ljava/lang/Object;

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lw3/y0;->j:J

    return-void
.end method

.method private static A2(Ljava/lang/Object;)J
    .locals 2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lw3/y0;->B2(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lw3/y0;->z2(D)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static B2(Ljava/lang/String;)J
    .locals 3

    invoke-static {p0}, Lw3/u2;->Z1(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lw3/y0;->z2(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static C2(Ljava/lang/Object;)I
    .locals 4

    invoke-static {p0}, Lw3/y0;->A2(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static D2(DJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    long-to-double p2, p2

    add-double/2addr p0, p2

    cmpg-double p2, p0, v0

    if-gez p2, :cond_1

    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_0
    long-to-double v0, p2

    cmpl-double v2, p0, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    double-to-long p2, p0

    :goto_0
    return-wide p2
.end method

.method private static E2(Lw3/m;Lw3/z2;Lw3/z2;ZZ)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-static/range {p0 .. p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v2

    invoke-static {v1, v2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p3, :cond_0

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ", "

    goto :goto_0

    :cond_0
    const-string v6, ","

    :goto_0
    iget-object v7, v1, Lw3/m;->i:Lw3/k2;

    const/4 v9, 0x0

    if-nez v7, :cond_1

    new-instance v7, Lw3/k2;

    const/16 v10, 0x1f

    invoke-direct {v7, v10}, Lw3/k2;-><init>(I)V

    iput-object v7, v1, Lw3/m;->i:Lw3/k2;

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v2}, Lw3/k2;->e(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v7, :cond_c

    :try_start_0
    iget-object v7, v1, Lw3/m;->i:Lw3/k2;

    invoke-virtual {v7, v2, v9}, Lw3/k2;->j(Ljava/lang/Object;I)V

    if-eqz p3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lw3/m;->v()I

    move-result v7

    const/16 v14, 0x96

    if-ge v7, v14, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    move-wide v14, v12

    const/16 v16, 0x0

    :goto_4
    cmp-long v17, v14, v3

    if-gez v17, :cond_a

    cmp-long v16, v14, v12

    if-lez v16, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {v2, v14, v15}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v8, v9, :cond_9

    if-eqz v7, :cond_5

    if-eqz v8, :cond_9

    sget-object v9, Lw3/w3;->a:Ljava/lang/Object;

    if-ne v8, v9, :cond_5

    goto :goto_7

    :cond_5
    if-eqz p3, :cond_6

    invoke-static {v1, v0, v8}, Lw3/u2;->x2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_6
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_7

    check-cast v8, Ljava/lang/String;

    goto :goto_5

    :cond_7
    if-eqz p4, :cond_8

    const-string v9, "toLocaleString"

    invoke-static {v8, v9, v1, v0}, Lw3/u2;->j0(Ljava/lang/Object;Ljava/lang/String;Lw3/m;Lw3/z2;)Lw3/f;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lw3/u2;->L0(Lw3/m;)Lw3/z2;

    move-result-object v9

    sget-object v12, Lw3/u2;->y:[Ljava/lang/Object;

    invoke-interface {v8, v1, v0, v9, v12}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :cond_8
    invoke-static {v8}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :goto_6
    const/16 v16, 0x1

    goto :goto_8

    :cond_9
    :goto_7
    const/16 v16, 0x0

    :goto_8
    const-wide/16 v8, 0x1

    add-long/2addr v14, v8

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    goto :goto_4

    :cond_a
    iget-object v0, v1, Lw3/m;->i:Lw3/k2;

    invoke-virtual {v0, v2}, Lw3/k2;->l(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v9, v16

    goto :goto_9

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_b

    iput-object v11, v1, Lw3/m;->i:Lw3/k2;

    :cond_b
    throw v0

    :cond_c
    const/4 v9, 0x0

    const-wide/16 v14, 0x0

    :goto_9
    if-eqz v10, :cond_d

    iput-object v11, v1, Lw3/m;->i:Lw3/k2;

    :cond_d
    if-eqz p3, :cond_f

    if-nez v9, :cond_e

    const-wide/16 v0, 0x0

    cmp-long v2, v14, v0

    if-lez v2, :cond_e

    const-string v0, ", ]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_e
    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    :goto_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic I1()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lw3/y0;->p:Ljava/util/Comparator;

    return-object v0
.end method

.method private static J1(Lw3/m;Lw3/z2;Lw3/z2;JZ)Lw3/z2;
    .locals 4

    instance-of v0, p2, Lw3/d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p5, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p5, p3, v2

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p5, Lw3/u2;->y:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p5, v1

    :goto_1
    check-cast p2, Lw3/d0;

    invoke-interface {p2, p0, p1, p5}, Lw3/d0;->p(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p2
    :try_end_0
    .catch Lw3/w; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string p5, "TypeError"

    invoke-virtual {p2}, Lw3/w;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    throw p2

    :cond_3
    :goto_2
    const/4 p2, 0x0

    :goto_3
    if-nez p2, :cond_5

    const-wide/32 v2, 0x7fffffff

    cmp-long p2, p3, v2

    if-lez p2, :cond_4

    goto :goto_4

    :cond_4
    long-to-int v1, p3

    :goto_4
    invoke-virtual {p0, p1, v1}, Lw3/m;->Q(Lw3/z2;I)Lw3/z2;

    move-result-object p2

    :cond_5
    return-object p2
.end method

.method private static K1(Lw3/m;Lw3/z2;Lw3/z2;J)J
    .locals 8

    invoke-static {p0, p2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v0

    add-long v2, v0, p3

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    instance-of v4, p1, Lw3/y0;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lw3/y0;

    iget-boolean v5, v4, Lw3/y0;->m:Z

    if-eqz v5, :cond_0

    instance-of v5, p2, Lw3/y0;

    if-eqz v5, :cond_0

    move-object v5, p2

    check-cast v5, Lw3/y0;

    iget-boolean v6, v5, Lw3/y0;->m:Z

    if-eqz v6, :cond_0

    long-to-int p0, v2

    invoke-direct {v4, p0}, Lw3/y0;->P1(I)Z

    iget-object p0, v5, Lw3/y0;->l:[Ljava/lang/Object;

    iget-object p1, v4, Lw3/y0;->l:[Ljava/lang/Object;

    long-to-int p2, p3

    long-to-int p3, v0

    const/4 p4, 0x0

    invoke-static {p0, p4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-wide v2

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    invoke-static {p2, v4, v5}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    invoke-static {p0, p1, p3, p4, v6}, Lw3/y0;->M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    :cond_1
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-long/2addr p3, v6

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method private L1(Ljava/lang/Object;)Lw3/a3;
    .locals 3

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

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "writable"

    invoke-virtual {v1, v0, p1, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "enumerable"

    invoke-virtual {v1, v0, p1, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "configurable"

    invoke-virtual {v1, v0, p1, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method private static M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p1, p4}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    long-to-int p0, p2

    invoke-interface {p1, p0, p1, p4}, Lw3/z2;->d(ILw3/z2;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static N1(Lw3/z2;J)V
    .locals 4

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    invoke-interface {p0, v0}, Lw3/z2;->f(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lw3/z2;->o(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static O1(Lw3/m;Lw3/z2;Lw3/z2;Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p3}, Lw3/y0;->X1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p3, Lw3/z2;

    invoke-static {p0, p2, p3, p4, p5}, Lw3/y0;->K1(Lw3/m;Lw3/z2;Lw3/z2;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p2, p4, p5, p3}, Lw3/y0;->M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    const-wide/16 p0, 0x1

    add-long/2addr p4, p0

    return-wide p4
.end method

.method private P1(I)Z
    .locals 5

    iget-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_1

    const v1, 0x55555554

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    iput-boolean v2, p0, Lw3/y0;->m:Z

    return v2

    :cond_0
    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v3

    double-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lw3/y0;->l:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lw3/y0;->l:[Ljava/lang/Object;

    array-length v1, v1

    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static R1(Lw3/m;Lw3/z2;J)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method static U1(Lw3/m;Lw3/z2;)J
    .locals 5

    instance-of p0, p1, Lw3/a2;

    if-eqz p0, :cond_0

    check-cast p1, Lw3/a2;

    invoke-virtual {p1}, Lw3/a2;->J1()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    instance-of p0, p1, Lw3/y0;

    if-eqz p0, :cond_1

    check-cast p1, Lw3/y0;

    invoke-virtual {p1}, Lw3/y0;->T1()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-string p0, "length"

    invoke-static {p1, p0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    if-ne p0, p1, :cond_2

    return-wide v0

    :cond_2
    invoke-static {p0}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide p0

    const-wide v2, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v4, p0, v2

    if-lez v4, :cond_3

    const-wide p0, 0x1fffffffffffffL

    return-wide p0

    :cond_3
    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_4

    return-wide v0

    :cond_4
    double-to-long p0, p0

    return-wide p0
.end method

.method private static V1(Lw3/z2;J)Ljava/lang/Object;
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-int p2, p1

    invoke-static {p0, p2}, Lw3/a3;->B0(Lw3/z2;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static W1(Lw3/z2;Z)V
    .locals 3

    new-instance v0, Lw3/y0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lw3/y0;-><init>(J)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    return-void
.end method

.method private static X1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p2, Lw3/z2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lw3/z2;

    sget-object v1, Lw3/j3;->f:Lw3/j3;

    invoke-static {v0, v1}, Lw3/a3;->D0(Lw3/z2;Lw3/i3;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lw3/m;->v()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    const-string v0, "Array"

    invoke-static {p0, p1, v0}, Lw3/u2;->W(Lw3/m;Lw3/z2;Ljava/lang/String;)Lw3/d0;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lw3/u2;->x0(Ljava/lang/Object;Ljava/lang/Object;Lw3/m;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p2}, Lw3/y0;->g2(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static Y1(Lw3/m;Lw3/l0;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lw3/l0;->h2()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x17

    const/16 v6, 0x16

    if-eq v6, v4, :cond_0

    if-ne v5, v4, :cond_1

    :cond_0
    move-object/from16 v7, p1

    invoke-static {v0, v2, v7}, Lw3/x2;->a(Lw3/m;Ljava/lang/Object;Lw3/l0;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0, v2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v7

    const/16 v9, 0x14

    const/4 v10, 0x0

    if-ne v4, v9, :cond_3

    const-wide/32 v11, 0x7fffffff

    cmp-long v13, v7, v11

    if-gtz v13, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "msg.arraylength.bad"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    array-length v11, v3

    if-lez v11, :cond_4

    aget-object v11, v3, v10

    goto :goto_1

    :cond_4
    sget-object v11, Lw3/w3;->a:Ljava/lang/Object;

    :goto_1
    if-eqz v11, :cond_10

    instance-of v12, v11, Lw3/d0;

    if-eqz v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Lw3/m;->v()I

    move-result v12

    const/16 v13, 0xc8

    check-cast v11, Lw3/d0;

    invoke-static {v11}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v12

    array-length v13, v3

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-lt v13, v15, :cond_6

    aget-object v3, v3, v14

    if-eqz v3, :cond_6

    sget-object v13, Lw3/w3;->a:Ljava/lang/Object;

    if-ne v3, v13, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v0, v1, v3}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v3

    goto :goto_3

    :cond_6
    :goto_2
    move-object v3, v12

    :goto_3
    const/16 v13, 0x12

    if-eq v4, v13, :cond_8

    if-ne v4, v9, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_4
    if-ne v4, v9, :cond_9

    long-to-int v9, v7

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v0, v1, v9}, Lw3/m;->Q(Lw3/z2;I)Lw3/z2;

    move-result-object v1

    :goto_6
    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    move-wide/from16 v18, v14

    :goto_7
    cmp-long v9, v14, v7

    if-gez v9, :cond_f

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v14, v15}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v13

    sget-object v10, Lw3/z2;->a0:Ljava/lang/Object;

    const-wide/16 v20, 0x1

    if-ne v13, v10, :cond_c

    if-eq v4, v6, :cond_b

    if-ne v4, v5, :cond_a

    goto :goto_8

    :cond_a
    move-wide/from16 v22, v7

    move-wide/from16 v6, v18

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/16 v17, 0x1

    goto :goto_b

    :cond_b
    :goto_8
    sget-object v13, Lw3/w3;->a:Ljava/lang/Object;

    :cond_c
    const/4 v10, 0x0

    aput-object v13, v9, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v17, 0x1

    aput-object v10, v9, v17

    const/4 v10, 0x2

    aput-object v2, v9, v10

    invoke-interface {v11, v0, v12, v3, v9}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    packed-switch v4, :pswitch_data_0

    :cond_d
    :goto_9
    :pswitch_0
    move-wide/from16 v22, v7

    move-wide/from16 v6, v18

    const/4 v8, 0x0

    goto :goto_b

    :pswitch_1
    invoke-static {v5}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    long-to-double v0, v14

    :goto_a
    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {v5}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    return-object v13

    :pswitch_3
    invoke-static {v5}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_4
    invoke-static {v0, v1, v14, v15, v5}, Lw3/y0;->M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_5
    invoke-static {v5}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-wide/from16 v22, v7

    move-wide/from16 v6, v18

    add-long v18, v6, v20

    const/4 v8, 0x0

    aget-object v5, v9, v8

    invoke-static {v0, v1, v6, v7, v5}, Lw3/y0;->M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_6
    move-wide/from16 v22, v7

    move-wide/from16 v6, v18

    const/4 v8, 0x0

    invoke-static {v5}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_e
    :goto_b
    move-wide/from16 v18, v6

    :goto_c
    add-long v14, v14, v20

    move-wide/from16 v7, v22

    const/16 v5, 0x17

    const/16 v6, 0x16

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_f
    packed-switch v4, :pswitch_data_1

    :pswitch_7
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_8
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_a

    :pswitch_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_a
    return-object v1

    :pswitch_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_10
    invoke-static {v11}, Lw3/u2;->f1(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static Z1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    array-length p1, p2

    if-nez p1, :cond_0

    new-instance p0, Lw3/y0;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lw3/y0;-><init>(J)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lw3/m;->v()I

    move-result p0

    const/16 p1, 0x78

    if-ne p0, p1, :cond_1

    new-instance p0, Lw3/y0;

    invoke-direct {p0, p2}, Lw3/y0;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    aget-object p1, p2, p0

    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lw3/u2;->m2(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-double v2, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    cmpl-double v4, v2, p1

    if-nez v4, :cond_3

    new-instance p0, Lw3/y0;

    invoke-direct {p0, v0, v1}, Lw3/y0;-><init>(J)V

    return-object p0

    :cond_3
    const-string p1, "msg.arraylength.bad"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    new-instance p0, Lw3/y0;

    invoke-direct {p0, p2}, Lw3/y0;-><init>([Ljava/lang/Object;)V

    return-object p0
.end method

.method private static a2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;
    .locals 11

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v3

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lw3/m;->Q(Lw3/z2;I)Lw3/z2;

    move-result-object v10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-static/range {v0 .. v5}, Lw3/y0;->O1(Lw3/m;Lw3/z2;Lw3/z2;Ljava/lang/Object;J)J

    move-result-wide v0

    array-length v2, p3

    move-wide v8, v0

    :goto_0
    if-ge p2, v2, :cond_0

    aget-object v7, p3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v10

    invoke-static/range {v4 .. v9}, Lw3/y0;->O1(Lw3/m;Lw3/z2;Lw3/z2;Ljava/lang/Object;J)J

    move-result-wide v8

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v10, v8, v9}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    return-object v10
.end method

.method private static b2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v2

    invoke-static {v0, v2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v3

    array-length v5, v1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    goto :goto_0

    :cond_0
    sget-object v5, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-static {v5}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v7

    double-to-long v7, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_1

    add-long/2addr v7, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_1
    array-length v5, v1

    const/4 v11, 0x2

    if-lt v5, v11, :cond_2

    aget-object v5, v1, v6

    goto :goto_2

    :cond_2
    sget-object v5, Lw3/w3;->a:Ljava/lang/Object;

    :goto_2
    invoke-static {v5}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v12

    double-to-long v12, v12

    cmp-long v5, v12, v9

    if-gez v5, :cond_3

    add-long/2addr v12, v3

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_3

    :cond_3
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :goto_3
    array-length v5, v1

    const/4 v14, 0x3

    if-lt v5, v14, :cond_4

    aget-object v5, v1, v11

    invoke-static {v5}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v1, v1, v11

    invoke-static {v1}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v14

    double-to-long v14, v14

    goto :goto_4

    :cond_4
    move-wide v14, v3

    :goto_4
    cmp-long v1, v14, v9

    if-gez v1, :cond_5

    add-long/2addr v14, v3

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    goto :goto_5

    :cond_5
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_5
    sub-long/2addr v14, v12

    sub-long/2addr v3, v7

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v14, 0x1

    cmp-long v1, v12, v7

    if-gez v1, :cond_6

    add-long v16, v12, v3

    cmp-long v1, v7, v16

    if-gez v1, :cond_6

    sub-long v12, v16, v14

    add-long/2addr v7, v3

    sub-long/2addr v7, v14

    const/4 v6, -0x1

    :cond_6
    instance-of v1, v2, Lw3/y0;

    if-eqz v1, :cond_8

    const-wide/32 v16, 0x7fffffff

    cmp-long v1, v3, v16

    if-gtz v1, :cond_8

    move-object v1, v2

    check-cast v1, Lw3/y0;

    iget-boolean v5, v1, Lw3/y0;->m:Z

    if-eqz v5, :cond_8

    :goto_6
    cmp-long v0, v3, v9

    if-lez v0, :cond_7

    iget-object v0, v1, Lw3/y0;->l:[Ljava/lang/Object;

    long-to-int v2, v7

    long-to-int v5, v12

    aget-object v5, v0, v5

    aput-object v5, v0, v2

    int-to-long v9, v6

    add-long/2addr v12, v9

    add-long/2addr v7, v9

    sub-long/2addr v3, v14

    const-wide/16 v9, 0x0

    goto :goto_6

    :cond_7
    return-object p2

    :cond_8
    :goto_7
    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-lez v1, :cond_b

    invoke-static {v2, v12, v13}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v1, v5, :cond_a

    invoke-static {v1}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {v0, v2, v7, v8, v1}, Lw3/y0;->u2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    goto :goto_9

    :cond_a
    :goto_8
    invoke-static {v2, v7, v8}, Lw3/y0;->N1(Lw3/z2;J)V

    :goto_9
    int-to-long v9, v6

    add-long/2addr v12, v9

    add-long/2addr v7, v9

    sub-long/2addr v3, v14

    goto :goto_7

    :cond_b
    return-object p2
.end method

.method private static c2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    invoke-static {p0, p1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v0

    array-length p1, p3

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    if-lt p1, v4, :cond_0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    invoke-static {p1}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v5

    double-to-long v5, v5

    goto :goto_0

    :cond_0
    move-wide v5, v2

    :goto_0
    cmp-long p1, v5, v2

    if-gez p1, :cond_1

    add-long/2addr v5, v0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_1
    array-length p1, p3

    const/4 v7, 0x3

    if-lt p1, v7, :cond_2

    aget-object p1, p3, v4

    invoke-static {p1}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    aget-object p1, p3, v4

    invoke-static {p1}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v7

    double-to-long v7, v7

    goto :goto_2

    :cond_2
    move-wide v7, v0

    :goto_2
    cmp-long p1, v7, v2

    if-gez p1, :cond_3

    add-long/2addr v0, v7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_3
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_3
    array-length p1, p3

    if-lez p1, :cond_4

    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_4

    :cond_4
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    :goto_4
    cmp-long p3, v5, v0

    if-gez p3, :cond_5

    invoke-static {p0, p2, v5, v6, p1}, Lw3/y0;->y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v5, v2

    goto :goto_4

    :cond_5
    return-object p2
.end method

.method private static d2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p3

    array-length v2, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v2, v9, :cond_0

    aget-object v2, v1, v8

    goto :goto_0

    :cond_0
    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-static {v7, v2}, Lw3/u2;->c2(Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v10

    array-length v2, v1

    const/4 v11, 0x2

    if-lt v2, v11, :cond_1

    aget-object v2, v1, v9

    goto :goto_1

    :cond_1
    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_1
    sget-object v3, Lw3/w3;->b:Lw3/z2;

    invoke-static {v2}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v12, v4, 0x1

    if-eqz v12, :cond_3

    instance-of v4, v2, Lw3/d0;

    if-eqz v4, :cond_2

    check-cast v2, Lw3/d0;

    array-length v4, v1

    const/4 v5, 0x3

    if-lt v4, v5, :cond_4

    aget-object v1, v1, v11

    invoke-static {v1}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v0, "msg.map.function.not"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    move-object v13, v2

    move-object v14, v3

    sget-object v1, Lw3/j3;->b:Lw3/j3;

    invoke-static {v10, v1}, Lw3/a3;->D0(Lw3/z2;Lw3/i3;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v10, Lw3/y0;

    const-wide/16 v17, 0x0

    if-nez v2, :cond_7

    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v1, v2, :cond_7

    invoke-static {v1}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v10, v0, v7}, Lw3/u2;->d(Ljava/lang/Object;Lw3/m;Lw3/z2;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lw3/w3;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v6

    move v6, v10

    invoke-static/range {v1 .. v6}, Lw3/y0;->J1(Lw3/m;Lw3/z2;Lw3/z2;JZ)Lw3/z2;

    move-result-object v1

    new-instance v2, Lw3/s0;

    invoke-direct {v2, v0, v7, v15}, Lw3/s0;-><init>(Lw3/m;Lw3/z2;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v2}, Lw3/s0;->i()Lw3/s0$a;

    move-result-object v3

    move-wide/from16 v4, v17

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v12, :cond_5

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v6, v10, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v9

    invoke-interface {v13, v0, v7, v14, v10}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_5
    invoke-static {v0, v1, v4, v5, v6}, Lw3/y0;->M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v15, 0x1

    add-long/2addr v4, v15

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lw3/s0;->close()V

    invoke-static {v0, v1, v4, v5}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v2}, Lw3/s0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    :cond_7
    invoke-static {v0, v10}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 p2, v4

    invoke-static/range {v1 .. v6}, Lw3/y0;->J1(Lw3/m;Lw3/z2;Lw3/z2;JZ)Lw3/z2;

    move-result-object v1

    move-wide/from16 v2, v17

    :goto_5
    cmp-long v6, v2, v4

    if-gez v6, :cond_a

    invoke-static {v10, v2, v3}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v6

    sget-object v15, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v6, v15, :cond_9

    if-eqz v12, :cond_8

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v6, v15, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v15, v9

    invoke-interface {v13, v0, v7, v14, v15}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_8
    invoke-static {v0, v1, v2, v3, v6}, Lw3/y0;->M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    :cond_9
    const-wide/16 v15, 0x1

    add-long/2addr v2, v15

    goto :goto_5

    :cond_a
    invoke-static {v0, v1, v4, v5}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    return-object v1
.end method

.method private static e2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 8

    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p3, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p0

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "length"

    invoke-static {p2, v3}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v2, v1}, Lw3/u2;->X1([Ljava/lang/Object;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    array-length p2, p3

    const/4 v5, 0x2

    const-wide/16 v6, 0x1

    if-ge p2, v5, :cond_2

    goto :goto_2

    :cond_2
    aget-object p1, p3, p1

    invoke-static {p1}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide p1

    double-to-long p1, p1

    cmp-long p3, p1, v3

    if-gez p3, :cond_3

    add-long/2addr p1, v1

    cmp-long p3, p1, v3

    if-gez p3, :cond_3

    goto :goto_1

    :cond_3
    move-wide v3, p1

    :goto_1
    sub-long p1, v1, v6

    cmp-long p3, v3, p1

    if-lez p3, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    :goto_2
    instance-of p1, p0, Lw3/y0;

    if-eqz p1, :cond_9

    move-object p1, p0

    check-cast p1, Lw3/y0;

    iget-boolean p2, p1, Lw3/y0;->m:Z

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lw3/a3;->l()Lw3/z2;

    move-result-object p0

    long-to-int p2, v3

    :goto_3
    int-to-long v3, p2

    cmp-long p3, v3, v1

    if-gez p3, :cond_8

    iget-object p3, p1, Lw3/y0;->l:[Ljava/lang/Object;

    aget-object p3, p3, p2

    sget-object v3, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p3, v3, :cond_5

    if-eqz p0, :cond_5

    invoke-static {p0, p2}, Lw3/a3;->B0(Lw3/z2;I)Ljava/lang/Object;

    move-result-object p3

    :cond_5
    if-ne p3, v3, :cond_6

    sget-object p3, Lw3/w3;->a:Ljava/lang/Object;

    :cond_6
    invoke-static {p3, v0}, Lw3/u2;->r1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    :goto_4
    cmp-long p1, v3, v1

    if-gez p1, :cond_c

    invoke-static {p0, v3, v4}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p1, p2, :cond_a

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    :cond_a
    invoke-static {p1, v0}, Lw3/u2;->r1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    add-long/2addr v3, v6

    goto :goto_4

    :cond_c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static f2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    invoke-static {p0, p1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v1

    array-length p0, p3

    const/4 p2, 0x2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-ge p0, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p0, 0x1

    aget-object p0, p3, p0

    invoke-static {p0}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide p2

    double-to-long p2, p2

    cmp-long p0, p2, v5

    if-gez p0, :cond_2

    add-long/2addr p2, v1

    cmp-long p0, p2, v5

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v5, p2

    :goto_1
    sub-long p2, v1, v3

    cmp-long p0, v5, p2

    if-lez p0, :cond_3

    sget-object p0, Lw3/y0;->o:Ljava/lang/Long;

    return-object p0

    :cond_3
    :goto_2
    instance-of p0, p1, Lw3/y0;

    if-eqz p0, :cond_7

    move-object p0, p1

    check-cast p0, Lw3/y0;

    iget-boolean p2, p0, Lw3/y0;->m:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lw3/a3;->l()Lw3/z2;

    move-result-object p1

    long-to-int p2, v5

    :goto_3
    int-to-long v3, p2

    cmp-long p3, v3, v1

    if-gez p3, :cond_6

    iget-object p3, p0, Lw3/y0;->l:[Ljava/lang/Object;

    aget-object p3, p3, p2

    sget-object v5, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p3, v5, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p1, p2}, Lw3/a3;->B0(Lw3/z2;I)Ljava/lang/Object;

    move-result-object p3

    :cond_4
    if-eq p3, v5, :cond_5

    invoke-static {p3, v0}, Lw3/u2;->G1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    sget-object p0, Lw3/y0;->o:Ljava/lang/Long;

    return-object p0

    :cond_7
    :goto_4
    cmp-long p0, v5, v1

    if-gez p0, :cond_9

    invoke-static {p1, v5, v6}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p0, p2, :cond_8

    invoke-static {p0, v0}, Lw3/u2;->G1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_8
    add-long/2addr v5, v3

    goto :goto_4

    :cond_9
    sget-object p0, Lw3/y0;->o:Ljava/lang/Long;

    return-object p0
.end method

.method private static g2(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lw3/z2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lw3/z2;

    invoke-interface {p0}, Lw3/z2;->m()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Array"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static h2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    invoke-static {p0, p1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v0

    long-to-int p2, v0

    int-to-long v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_c

    array-length v0, p3

    if-lt v0, v5, :cond_1

    aget-object p3, p3, v4

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, ","

    :goto_1
    instance-of v0, p1, Lw3/y0;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lw3/y0;

    iget-boolean v1, v0, Lw3/y0;->m:Z

    if-eqz v1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v4, p2, :cond_4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, v0, Lw3/y0;->l:[Ljava/lang/Object;

    array-length v1, p1

    if-ge v4, v1, :cond_3

    aget-object p1, p1, v4

    if-eqz p1, :cond_3

    sget-object v1, Lw3/w3;->a:Ljava/lang/Object;

    if-eq p1, v1, :cond_3

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p1, v1, :cond_3

    invoke-static {p1}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p2, :cond_6

    const-string p0, ""

    return-object p0

    :cond_6
    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-eq v1, p2, :cond_8

    int-to-long v5, v1

    invoke-static {p0, p1, v5, v6}, Lw3/y0;->R1(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-object v5, Lw3/w3;->a:Ljava/lang/Object;

    if-eq v3, v5, :cond_7

    invoke-static {v3}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    aput-object v3, v0, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 p0, p2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    mul-int p0, p0, p1

    add-int/2addr v2, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_4
    if-eq v4, p2, :cond_b

    if-eqz v4, :cond_9

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    aget-object p1, v0, v4

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    new-array p0, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "msg.arraylength.too.big"

    invoke-static {p1, p0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p0

    throw p0
.end method

.method private static i2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    invoke-static {p0, p1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v1

    array-length p0, p3

    const/4 p2, 0x2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    if-ge p0, p2, :cond_1

    sub-long/2addr v1, v5

    goto :goto_2

    :cond_1
    const/4 p0, 0x1

    aget-object p0, p3, p0

    invoke-static {p0}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide p2

    double-to-long p2, p2

    cmp-long p0, p2, v1

    if-ltz p0, :cond_2

    sub-long/2addr v1, v5

    goto :goto_1

    :cond_2
    cmp-long p0, p2, v3

    if-gez p0, :cond_3

    add-long/2addr p2, v1

    :cond_3
    move-wide v1, p2

    :goto_1
    cmp-long p0, v1, v3

    if-gez p0, :cond_4

    sget-object p0, Lw3/y0;->o:Ljava/lang/Long;

    return-object p0

    :cond_4
    :goto_2
    instance-of p0, p1, Lw3/y0;

    if-eqz p0, :cond_8

    move-object p0, p1

    check-cast p0, Lw3/y0;

    iget-boolean p2, p0, Lw3/y0;->m:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lw3/a3;->l()Lw3/z2;

    move-result-object p1

    long-to-int p2, v1

    :goto_3
    if-ltz p2, :cond_7

    iget-object p3, p0, Lw3/y0;->l:[Ljava/lang/Object;

    aget-object p3, p3, p2

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p3, v1, :cond_5

    if-eqz p1, :cond_5

    invoke-static {p1, p2}, Lw3/a3;->B0(Lw3/z2;I)Ljava/lang/Object;

    move-result-object p3

    :cond_5
    if-eq p3, v1, :cond_6

    invoke-static {p3, v0}, Lw3/u2;->G1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    int-to-long p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_7
    sget-object p0, Lw3/y0;->o:Ljava/lang/Long;

    return-object p0

    :cond_8
    :goto_4
    cmp-long p0, v1, v3

    if-ltz p0, :cond_a

    invoke-static {p1, v1, v2}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p0, p2, :cond_9

    invoke-static {p0, v0}, Lw3/u2;->G1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_9
    sub-long/2addr v1, v5

    goto :goto_4

    :cond_a
    sget-object p0, Lw3/y0;->o:Ljava/lang/Long;

    return-object p0
.end method

.method private static j2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    array-length v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lw3/y0;->J1(Lw3/m;Lw3/z2;Lw3/z2;JZ)Lw3/z2;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_0

    int-to-long v0, p2

    aget-object v2, p3, p2

    invoke-static {p0, p1, v0, v1, v2}, Lw3/y0;->M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p3

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    return-object p1
.end method

.method private static k2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    instance-of p2, p1, Lw3/y0;

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lw3/y0;

    iget-boolean p3, p2, Lw3/y0;->m:Z

    if-eqz p3, :cond_0

    iget-wide v4, p2, Lw3/y0;->j:J

    cmp-long p3, v4, v2

    if-lez p3, :cond_0

    sub-long/2addr v4, v0

    iput-wide v4, p2, Lw3/y0;->j:J

    iget-object p0, p2, Lw3/y0;->l:[Ljava/lang/Object;

    long-to-int p1, v4

    aget-object p1, p0, p1

    long-to-int p2, v4

    sget-object p3, Lw3/z2;->a0:Ljava/lang/Object;

    aput-object p3, p0, p2

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide p2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    sub-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Lw3/y0;->R1(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lw3/y0;->N1(Lw3/z2;J)V

    goto :goto_0

    :cond_1
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    return-object v0
.end method

.method private static l2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    instance-of p2, p1, Lw3/y0;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lw3/y0;

    iget-boolean v1, p2, Lw3/y0;->m:Z

    if-eqz v1, :cond_1

    iget-wide v1, p2, Lw3/y0;->j:J

    long-to-int v2, v1

    array-length v1, p3

    add-int/2addr v2, v1

    invoke-direct {p2, v2}, Lw3/y0;->P1(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    array-length p0, p3

    if-ge v0, p0, :cond_0

    iget-object p0, p2, Lw3/y0;->l:[Ljava/lang/Object;

    iget-wide v1, p2, Lw3/y0;->j:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p2, Lw3/y0;->j:J

    long-to-int p1, v1

    aget-object v1, p3, v0

    aput-object v1, p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide p0, p2, Lw3/y0;->j:J

    long-to-double p0, p0

    invoke-static {p0, p1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v1

    :goto_1
    array-length p2, p3

    if-ge v0, p2, :cond_2

    int-to-long v3, v0

    add-long/2addr v3, v1

    aget-object p2, p3, v0

    invoke-static {p0, p1, v3, v4, p2}, Lw3/y0;->u2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length p2, p3

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-static {p0, p1, v1, v2}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lw3/m;->v()I

    move-result p0

    const/16 p2, 0x78

    if-ne p0, p2, :cond_4

    array-length p0, p3

    if-nez p0, :cond_3

    sget-object p0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    array-length p0, p3

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p3, p0

    :goto_2
    return-object p0

    :cond_4
    return-object p1
.end method

.method private static m2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;
    .locals 10

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    instance-of p2, p1, Lw3/y0;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lw3/y0;

    iget-boolean p3, p2, Lw3/y0;->m:Z

    if-eqz p3, :cond_1

    iget-wide v0, p2, Lw3/y0;->j:J

    long-to-int p0, v0

    add-int/lit8 p0, p0, -0x1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_0

    iget-object v0, p2, Lw3/y0;->l:[Ljava/lang/Object;

    aget-object v1, v0, p3

    aget-object v2, v0, p0

    aput-object v2, v0, p3

    aput-object v1, v0, p0

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide p2

    const-wide/16 v0, 0x2

    div-long v0, p2, v0

    const-wide/16 v2, 0x0

    :goto_1
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    sub-long v4, p2, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {p1, v2, v3}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p1, v4, v5}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {p0, p1, v2, v3, v9}, Lw3/y0;->y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    invoke-static {p0, p1, v4, v5, v8}, Lw3/y0;->y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    add-long/2addr v2, v6

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private static n2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    instance-of p2, p1, Lw3/y0;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lw3/y0;

    iget-boolean p3, p2, Lw3/y0;->m:Z

    if-eqz p3, :cond_1

    iget-wide v4, p2, Lw3/y0;->j:J

    cmp-long p3, v4, v0

    if-lez p3, :cond_1

    sub-long/2addr v4, v2

    iput-wide v4, p2, Lw3/y0;->j:J

    iget-object p0, p2, Lw3/y0;->l:[Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p3, p0, p1

    const/4 v0, 0x1

    long-to-int v1, v4

    invoke-static {p0, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p2, Lw3/y0;->l:[Ljava/lang/Object;

    iget-wide p1, p2, Lw3/y0;->j:J

    long-to-int p2, p1

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    aput-object p1, p0, p2

    if-ne p3, p1, :cond_0

    sget-object p3, Lw3/w3;->a:Ljava/lang/Object;

    :cond_0
    return-object p3

    :cond_1
    invoke-static {p0, p1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide p2

    cmp-long v4, p2, v0

    if-lez v4, :cond_3

    sub-long/2addr p2, v2

    invoke-static {p0, p1, v0, v1}, Lw3/y0;->R1(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    move-result-object v4

    cmp-long v5, p2, v0

    if-lez v5, :cond_2

    move-wide v0, v2

    :goto_0
    cmp-long v5, v0, p2

    if-gtz v5, :cond_2

    invoke-static {p1, v0, v1}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-static {p0, p1, v6, v7, v5}, Lw3/y0;->y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lw3/y0;->N1(Lw3/z2;J)V

    goto :goto_1

    :cond_3
    sget-object v4, Lw3/w3;->a:Ljava/lang/Object;

    :goto_1
    invoke-static {p0, p1, p2, p3}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    return-object v4
.end method

.method private static o2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v2

    invoke-static {p0, v2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v3

    array-length v5, v1

    const/4 v8, 0x0

    if-nez v5, :cond_0

    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_0
    aget-object v5, v1, v8

    invoke-static {v5}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10, v3, v4}, Lw3/y0;->D2(DJ)J

    move-result-wide v9

    array-length v5, v1

    const/4 v11, 0x1

    if-eq v5, v11, :cond_2

    aget-object v1, v1, v11

    sget-object v5, Lw3/w3;->a:Ljava/lang/Object;

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v11

    invoke-static {v11, v12, v3, v4}, Lw3/y0;->D2(DJ)J

    move-result-wide v3

    :cond_2
    :goto_0
    sub-long v11, v3, v9

    const-wide/32 v13, 0x7fffffff

    cmp-long v1, v11, v13

    if-gtz v1, :cond_5

    move-object/from16 v1, p1

    invoke-virtual {p0, v1, v8}, Lw3/m;->Q(Lw3/z2;I)Lw3/z2;

    move-result-object v1

    move-wide v13, v9

    :goto_1
    cmp-long v5, v13, v3

    if-gez v5, :cond_4

    invoke-static {v2, v13, v14}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v5, v8, :cond_3

    sub-long v6, v13, v9

    invoke-static {p0, v1, v6, v7, v5}, Lw3/y0;->M1(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    :cond_3
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    return-object v1

    :cond_5
    const-string v0, "msg.arraylength.bad"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object v0

    throw v0
.end method

.method private static p2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;
    .locals 8

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p2

    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    aget-object p3, p3, v1

    if-eq v0, p3, :cond_0

    invoke-static {p3, p0}, Lw3/u2;->o0(Ljava/lang/Object;Lw3/m;)Lw3/f;

    move-result-object v4

    invoke-static {p0}, Lw3/u2;->L0(Lw3/m;)Lw3/z2;

    move-result-object v7

    const/4 p3, 0x2

    new-array v3, p3, [Ljava/lang/Object;

    new-instance p3, Lw3/y0$c;

    new-instance v0, Lw3/y0$a;

    move-object v2, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lw3/y0$a;-><init>([Ljava/lang/Object;Lw3/f;Lw3/m;Lw3/z2;Lw3/z2;)V

    invoke-direct {p3, v0}, Lw3/y0$c;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    sget-object p3, Lw3/y0;->q:Ljava/util/Comparator;

    :goto_0
    invoke-static {p0, p2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v2

    long-to-int p1, v2

    int-to-long v4, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_1
    if-eq v2, p1, :cond_1

    int-to-long v3, v2

    invoke-static {p2, v3, v4}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lw3/f3;->a()Lw3/f3;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Lw3/f3;->c([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_2
    if-ge v1, p1, :cond_2

    int-to-long v2, v1

    aget-object p3, v0, v1

    invoke-static {p0, p2, v2, v3, p3}, Lw3/y0;->y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object p2

    :cond_3
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "msg.arraylength.too.big"

    invoke-static {p1, p0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p0

    throw p0
.end method

.method private static q2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v2

    instance-of v3, v2, Lw3/y0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lw3/y0;

    iget-boolean v5, v3, Lw3/y0;->m:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-static/range {p1 .. p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v6

    array-length v7, v1

    if-nez v7, :cond_1

    invoke-virtual {v0, v6, v4}, Lw3/m;->Q(Lw3/z2;I)Lw3/z2;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0, v2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v8

    aget-object v10, v1, v4

    invoke-static {v10}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Lw3/y0;->D2(DJ)J

    move-result-wide v10

    add-int/lit8 v7, v7, -0x1

    array-length v12, v1

    const/4 v15, 0x1

    if-ne v12, v15, :cond_2

    sub-long v16, v8, v10

    move-wide/from16 v13, v16

    move/from16 v16, v5

    goto :goto_2

    :cond_2
    aget-object v12, v1, v15

    move/from16 v16, v5

    invoke-static {v12}, Lw3/u2;->U1(Ljava/lang/Object;)D

    move-result-wide v4

    const-wide/16 v17, 0x0

    cmpg-double v12, v4, v17

    if-gez v12, :cond_3

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_3
    sub-long v13, v8, v10

    long-to-double v0, v13

    cmpl-double v12, v4, v0

    if-lez v12, :cond_4

    goto :goto_1

    :cond_4
    double-to-long v0, v4

    move-wide v13, v0

    :goto_1
    add-int/lit8 v7, v7, -0x1

    :goto_2
    add-long v0, v10, v13

    int-to-long v4, v7

    sub-long v19, v4, v13

    move-wide/from16 v21, v4

    add-long v4, v8, v19

    move-wide/from16 v23, v8

    move v9, v7

    long-to-double v7, v4

    const-wide v25, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v12, v7, v25

    if-gtz v12, :cond_14

    const-wide/32 v7, 0x7fffffff

    cmp-long v12, v13, v7

    if-gtz v12, :cond_13

    const/16 v12, 0x78

    const-wide/16 v25, 0x1

    const-wide/16 v17, 0x0

    cmp-long v15, v13, v17

    if-eqz v15, :cond_9

    cmp-long v15, v13, v25

    if-nez v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lw3/m;->v()I

    move-result v13

    if-ne v13, v12, :cond_5

    move-object/from16 v13, p0

    invoke-static {v13, v2, v10, v11}, Lw3/y0;->R1(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object/from16 v13, p0

    if-eqz v16, :cond_6

    sub-long v14, v0, v10

    long-to-int v12, v14

    new-array v14, v12, [Ljava/lang/Object;

    iget-object v15, v3, Lw3/y0;->l:[Ljava/lang/Object;

    long-to-int v7, v10

    const/4 v8, 0x0

    invoke-static {v15, v7, v14, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13, v6, v14}, Lw3/m;->R(Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object v6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v13, v6, v8}, Lw3/m;->Q(Lw3/z2;I)Lw3/z2;

    move-result-object v6

    move-wide v7, v10

    :goto_3
    cmp-long v12, v7, v0

    if-eqz v12, :cond_8

    invoke-static {v2, v7, v8}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v12

    sget-object v14, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v12, v14, :cond_7

    sub-long v14, v7, v10

    invoke-static {v13, v6, v14, v15, v12}, Lw3/y0;->u2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    :cond_7
    add-long v7, v7, v25

    goto :goto_3

    :cond_8
    sub-long v7, v0, v10

    invoke-static {v13, v6, v7, v8}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lw3/m;->v()I

    move-result v7

    if-ne v7, v12, :cond_a

    sget-object v6, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    invoke-virtual {v13, v6, v7}, Lw3/m;->Q(Lw3/z2;I)Lw3/z2;

    move-result-object v6

    :goto_4
    if-eqz v16, :cond_d

    const-wide/32 v7, 0x7fffffff

    cmp-long v12, v4, v7

    if-gez v12, :cond_d

    long-to-int v7, v4

    invoke-direct {v3, v7}, Lw3/y0;->P1(I)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v2, v3, Lw3/y0;->l:[Ljava/lang/Object;

    long-to-int v8, v0

    add-long v12, v10, v21

    long-to-int v13, v12

    sub-long v0, v23, v0

    long-to-int v1, v0

    invoke-static {v2, v8, v2, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v9, :cond_b

    iget-object v0, v3, Lw3/y0;->l:[Ljava/lang/Object;

    long-to-int v1, v10

    const/4 v2, 0x2

    move-object/from16 v8, p3

    invoke-static {v8, v2, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v2, v19, v0

    if-gez v2, :cond_c

    iget-object v0, v3, Lw3/y0;->l:[Ljava/lang/Object;

    move-wide/from16 v14, v23

    long-to-int v1, v14

    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-static {v0, v7, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_c
    iput-wide v4, v3, Lw3/y0;->j:J

    return-object v6

    :cond_d
    move-object/from16 v8, p3

    move-wide/from16 v14, v23

    const-wide/16 v16, 0x0

    cmp-long v3, v19, v16

    if-lez v3, :cond_e

    sub-long v14, v14, v25

    :goto_5
    cmp-long v3, v14, v0

    if-ltz v3, :cond_10

    invoke-static {v2, v14, v15}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v3

    move-wide/from16 v16, v0

    add-long v0, v14, v19

    invoke-static {v13, v2, v0, v1, v3}, Lw3/y0;->y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    sub-long v14, v14, v25

    move-wide/from16 v0, v16

    goto :goto_5

    :cond_e
    move-wide/from16 v16, v0

    if-gez v3, :cond_10

    move-wide/from16 v0, v16

    :goto_6
    cmp-long v3, v0, v14

    if-gez v3, :cond_f

    invoke-static {v2, v0, v1}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 p1, v6

    add-long v6, v0, v19

    invoke-static {v13, v2, v6, v7, v3}, Lw3/y0;->y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    add-long v0, v0, v25

    move-object/from16 v6, p1

    goto :goto_6

    :cond_f
    move-object/from16 p1, v6

    sub-long v0, v14, v25

    :goto_7
    cmp-long v3, v0, v4

    if-ltz v3, :cond_11

    invoke-static {v2, v0, v1}, Lw3/y0;->N1(Lw3/z2;J)V

    sub-long v0, v0, v25

    goto :goto_7

    :cond_10
    move-object/from16 p1, v6

    :cond_11
    array-length v0, v8

    sub-int/2addr v0, v9

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v9, :cond_12

    int-to-long v6, v1

    add-long/2addr v6, v10

    add-int v3, v1, v0

    aget-object v3, v8, v3

    invoke-static {v13, v2, v6, v7, v3}, Lw3/y0;->u2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    invoke-static {v13, v2, v4, v5}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    return-object p1

    :cond_13
    const-string v0, "msg.arraylength.bad"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v1, 0x0

    new-array v0, v15, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "msg.arraylength.too.big"

    invoke-static {v1, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0
.end method

.method private static r2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v2

    instance-of v3, v2, Lw3/y0;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lw3/y0;

    iget-boolean v5, v3, Lw3/y0;->m:Z

    if-eqz v5, :cond_1

    iget-wide v5, v3, Lw3/y0;->j:J

    long-to-int v6, v5

    array-length v5, v1

    add-int/2addr v6, v5

    invoke-direct {v3, v6}, Lw3/y0;->P1(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, v3, Lw3/y0;->l:[Ljava/lang/Object;

    array-length v2, v1

    iget-wide v5, v3, Lw3/y0;->j:J

    long-to-int v6, v5

    invoke-static {v0, v4, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v0, v1

    if-ge v4, v0, :cond_0

    iget-object v0, v3, Lw3/y0;->l:[Ljava/lang/Object;

    aget-object v2, v1, v4

    aput-object v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-wide v4, v3, Lw3/y0;->j:J

    array-length v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    iput-wide v4, v3, Lw3/y0;->j:J

    long-to-double v0, v4

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0, v2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v5

    array-length v3, v1

    if-lez v3, :cond_4

    int-to-long v7, v3

    add-long v9, v5, v7

    long-to-double v11, v9

    const-wide v13, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v15, v11, v13

    if-gtz v15, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-lez v11, :cond_2

    const-wide/16 v11, 0x1

    sub-long v13, v5, v11

    :goto_1
    cmp-long v15, v13, v9

    if-ltz v15, :cond_2

    invoke-static {v2, v13, v14}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v15

    add-long v9, v13, v7

    invoke-static {v0, v2, v9, v10, v15}, Lw3/y0;->y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    sub-long/2addr v13, v11

    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_2
    :goto_2
    array-length v7, v1

    if-ge v4, v7, :cond_4

    int-to-long v7, v4

    aget-object v9, v1, v4

    invoke-static {v0, v2, v7, v8, v9}, Lw3/y0;->u2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "msg.arraylength.too.big"

    invoke-static {v1, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_4
    int-to-long v3, v3

    add-long/2addr v5, v3

    invoke-static {v0, v2, v5, v6}, Lw3/y0;->w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static s2(Lw3/m;ILw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide v4

    array-length v2, v3

    const/4 v6, 0x0

    if-lez v2, :cond_0

    aget-object v2, v3, v6

    goto :goto_0

    :cond_0
    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    if-eqz v2, :cond_8

    instance-of v7, v2, Lw3/d0;

    if-eqz v7, :cond_8

    check-cast v2, Lw3/d0;

    invoke-static {v2}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v7

    const/16 v8, 0x18

    const/4 v9, 0x1

    move/from16 v10, p1

    if-ne v10, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    array-length v10, v3

    if-le v10, v9, :cond_2

    aget-object v3, v3, v9

    goto :goto_2

    :cond_2
    sget-object v3, Lw3/z2;->a0:Ljava/lang/Object;

    :goto_2
    const-wide/16 v10, 0x0

    :goto_3
    cmp-long v12, v10, v4

    if-gez v12, :cond_6

    const-wide/16 v12, 0x1

    if-eqz v8, :cond_3

    move-wide v14, v10

    goto :goto_4

    :cond_3
    sub-long v14, v4, v12

    sub-long/2addr v14, v10

    :goto_4
    invoke-static {v1, v14, v15}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne v12, v13, :cond_4

    :goto_5
    const-wide/16 v12, 0x1

    goto :goto_6

    :cond_4
    if-ne v3, v13, :cond_5

    move-object v3, v12

    goto :goto_5

    :cond_5
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v6

    aput-object v12, v13, v9

    const/4 v3, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v13, v3

    const/4 v3, 0x3

    aput-object v1, v13, v3

    invoke-interface {v2, v0, v7, v7, v13}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    :goto_6
    add-long/2addr v10, v12

    goto :goto_3

    :cond_6
    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v3, v0, :cond_7

    return-object v3

    :cond_7
    const-string v0, "msg.empty.array.reduce"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v2}, Lw3/u2;->f1(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static u2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p4}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    long-to-int p0, p2

    invoke-static {p1, p0, p4}, Lw3/a3;->X0(Lw3/z2;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private v2(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lw3/y0;->k:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lw3/u2;->l2(D)J

    move-result-wide v2

    long-to-double v4, v2

    const/4 p1, 0x0

    cmpl-double v6, v4, v0

    if-nez v6, :cond_8

    iget-boolean v0, p0, Lw3/y0;->m:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lw3/y0;->j:J

    cmp-long v6, v2, v0

    if-gez v6, :cond_1

    iget-object p1, p0, Lw3/y0;->l:[Ljava/lang/Object;

    long-to-int v0, v2

    array-length v1, p1

    sget-object v4, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-wide v2, p0, Lw3/y0;->j:J

    return-void

    :cond_1
    const-wide/32 v6, 0x55555554

    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    long-to-double v0, v0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v6

    cmpg-double v6, v4, v0

    if-gez v6, :cond_2

    long-to-int v0, v2

    invoke-direct {p0, v0}, Lw3/y0;->P1(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-wide v2, p0, Lw3/y0;->j:J

    return-void

    :cond_2
    iput-boolean p1, p0, Lw3/y0;->m:Z

    :cond_3
    iget-wide v0, p0, Lw3/y0;->j:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_7

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1000

    cmp-long v6, v0, v4

    if-lez v6, :cond_6

    invoke-virtual {p0}, Lw3/a3;->getIds()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_7

    aget-object v1, v0, p1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_4

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lw3/y0;->B2(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_5

    invoke-virtual {p0, v1}, Lw3/n0;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    cmp-long v6, v4, v2

    if-ltz v6, :cond_5

    invoke-virtual {p0, v1}, Lw3/y0;->f(I)V

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    move-wide v0, v2

    :goto_2
    iget-wide v4, p0, Lw3/y0;->j:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_7

    invoke-static {p0, v0, v1}, Lw3/y0;->N1(Lw3/z2;J)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_2

    :cond_7
    iput-wide v2, p0, Lw3/y0;->j:J

    return-void

    :cond_8
    const-string v0, "msg.arraylength.bad"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/u2;->l1(Ljava/lang/String;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method private static w2(Lw3/m;Lw3/z2;J)Ljava/lang/Object;
    .locals 0

    long-to-double p2, p2

    invoke-static {p2, p3}, Lw3/u2;->D2(D)Ljava/lang/Number;

    move-result-object p0

    const-string p2, "length"

    invoke-static {p1, p2, p0}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method static x2(I)V
    .locals 0

    sput p0, Lw3/y0;->r:I

    return-void
.end method

.method private static y2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p4, v0, :cond_0

    invoke-static {p1, p2, p3}, Lw3/y0;->N1(Lw3/z2;J)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lw3/y0;->u2(Lw3/m;Lw3/z2;JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static z2(D)J
    .locals 5

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lw3/u2;->l2(D)J

    move-result-wide v0

    long-to-double v2, v0

    cmpl-double v4, v2, p0

    if-nez v4, :cond_0

    const-wide p0, 0xffffffffL

    cmp-long v2, v0, p0

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method


# virtual methods
.method protected A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;
    .locals 3

    iget-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lw3/y0;->C2(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lw3/y0;->l:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lw3/y0;->L1(Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/n0;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 3

    iget-boolean v0, p0, Lw3/y0;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lw3/a3;->Q0(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lw3/a3;->C(ILw3/z2;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    array-length v2, v0

    if-ge p1, v2, :cond_2

    aget-object p1, v0, p1

    sget-object p2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Lw3/a3;->C(ILw3/z2;)Z

    move-result p1

    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lw3/y0;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lw3/a3;->Q0(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lw3/a3;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lw3/a3;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected G1(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lw3/y0;->k:I

    :cond_0
    return-void
.end method

.method protected H1(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lw3/y0;->v2(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/n0;->H1(ILjava/lang/Object;)V

    return-void
.end method

.method public Q1(J)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    iget-wide v0, p0, Lw3/y0;->j:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    invoke-static {p0, p1, p2}, Lw3/y0;->V1(Lw3/z2;J)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p1, p2, :cond_2

    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lw3/b4;

    if-eqz p2, :cond_1

    check-cast p1, Lw3/b4;

    invoke-interface {p1}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public S1()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lw3/a3;->getIds()[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lw3/u2;->R1(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    int-to-double v6, v5

    invoke-static {v6, v7}, Lw3/u2;->g2(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public T1()J
    .locals 2

    iget-wide v0, p0, Lw3/y0;->j:J

    return-wide v0
.end method

.method protected W(Lw3/m;Ljava/lang/Object;Lw3/a3;Z)V
    .locals 5

    iget-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lw3/y0;->l:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lw3/y0;->m:Z

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    sget-object v3, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1, p0, v2}, Lw3/y0;->d(ILw3/z2;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lw3/y0;->A2(Ljava/lang/Object;)J

    move-result-wide v0

    iget-wide v2, p0, Lw3/y0;->j:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lw3/y0;->j:J

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lw3/a3;->W(Lw3/m;Ljava/lang/Object;Lw3/a3;Z)V

    return-void
.end method

.method public add(ILjava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lw3/y0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/y0;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 10

    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    if-ne p2, p0, :cond_5

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lw3/y0;->l:[Ljava/lang/Object;

    if-eqz v3, :cond_5

    if-ltz p1, :cond_5

    iget-boolean v3, p0, Lw3/y0;->m:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, v2}, Lw3/a3;->Q0(Ljava/lang/String;IZ)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    invoke-virtual {p0}, Lw3/a3;->O0()Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, p0, Lw3/y0;->j:J

    int-to-long v5, p1

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lw3/y0;->l:[Ljava/lang/Object;

    array-length v4, v3

    if-ge p1, v4, :cond_3

    aput-object p3, v3, p1

    iget-wide p2, p0, Lw3/y0;->j:J

    int-to-long v2, p1

    cmp-long p1, p2, v2

    if-gtz p1, :cond_2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lw3/y0;->j:J

    :cond_2
    return-void

    :cond_3
    iget-boolean v4, p0, Lw3/y0;->m:Z

    if-eqz v4, :cond_4

    int-to-double v4, p1

    array-length v3, v3

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double v6, v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4

    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3}, Lw3/y0;->P1(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p2, p0, Lw3/y0;->l:[Ljava/lang/Object;

    aput-object p3, p2, p1

    int-to-long p1, p1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lw3/y0;->j:J

    return-void

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lw3/y0;->m:Z

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lw3/a3;->d(ILw3/z2;Ljava/lang/Object;)V

    if-ne p2, p0, :cond_6

    iget p2, p0, Lw3/y0;->k:I

    and-int/2addr p2, v2

    if-nez p2, :cond_6

    iget-wide p2, p0, Lw3/y0;->j:J

    int-to-long v2, p1

    cmp-long p1, p2, v2

    if-gtz p1, :cond_6

    add-long/2addr v2, v0

    iput-wide v2, p0, Lw3/y0;->j:J

    :cond_6
    return-void
.end method

.method public e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lw3/u2;->i:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    invoke-virtual {v0}, Lw3/m;->v()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lw3/y0;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lw3/a3;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lw3/y0;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lw3/a3;->Q0(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lw3/a3;->f(I)V

    :goto_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lw3/y0;->Q1(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    iget-wide v0, p0, Lw3/y0;->j:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    long-to-int v1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lw3/y0;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lw3/y0;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 5

    iget-wide v0, p0, Lw3/y0;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw3/y0;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    iget-wide v0, p0, Lw3/y0;->j:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    long-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    if-nez p1, :cond_1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lw3/y0;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lw3/y0;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw3/y0;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5

    iget-wide v0, p0, Lw3/y0;->j:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    long-to-int v1, v0

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    new-instance v0, Lw3/y0$b;

    invoke-direct {v0, p0, p1, v1}, Lw3/y0$b;-><init>(Lw3/y0;II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Array"

    return-object v0
.end method

.method public m0(I)I
    .locals 2

    iget-object v0, p0, Lw3/y0;->l:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lw3/a3;->m0(I)I

    move-result p1

    return p1
.end method

.method protected o1(Lw3/l0;)V
    .locals 7

    sget-object v6, Lw3/y0;->n:Ljava/lang/Object;

    const/4 v3, -0x5

    const-string v4, "join"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x6

    const-string v4, "reverse"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x7

    const-string v4, "sort"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x8

    const-string v4, "push"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x9

    const-string v4, "pop"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xa

    const-string v4, "shift"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xb

    const-string v4, "unshift"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xc

    const-string v4, "splice"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xd

    const-string v4, "concat"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xe

    const-string v4, "slice"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xf

    const-string v4, "indexOf"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x10

    const-string v4, "lastIndexOf"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x11

    const-string v4, "every"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x12

    const-string v4, "filter"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x13

    const-string v4, "forEach"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x14

    const-string v4, "map"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x15

    const-string v4, "some"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x16

    const-string v4, "find"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x17

    const-string v4, "findIndex"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x18

    const-string v4, "reduce"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x19

    const-string v4, "reduceRight"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1a

    const-string v4, "isArray"

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1b

    const-string v4, "of"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1c

    const-string v4, "from"

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

    iget p1, p0, Lw3/y0;->k:I

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
    const-string v1, "indexOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v24, 0x1e

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v24, 0x1d

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "reduceRight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "findIndex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v24, 0x1b

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x1a

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "shift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v24, 0x19

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "every"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x18

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "includes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x17

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "sort"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v24, 0x16

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "some"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v24, 0x15

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x13

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "join"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "find"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0x11

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "fill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0x10

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v24, 0xe

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "unshift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v24, 0xd

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "lastIndexOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0xc

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "forEach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v24, 0xb

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "copyWithin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v24, 0xa

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v24, 0x9

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "splice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v24, 0x8

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "reduce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/16 v24, 0x7

    goto :goto_0

    :sswitch_18
    const-string v1, "filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/16 v24, 0x6

    goto :goto_0

    :sswitch_19
    const-string v1, "concat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/16 v24, 0x5

    goto :goto_0

    :sswitch_1a
    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/16 v24, 0x4

    goto :goto_0

    :sswitch_1b
    const-string v1, "entries"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/16 v24, 0x3

    goto :goto_0

    :sswitch_1c
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/16 v24, 0x2

    goto :goto_0

    :sswitch_1d
    const-string v1, "toSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/16 v24, 0x1

    goto :goto_0

    :sswitch_1e
    const-string v1, "toLocaleString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/16 v24, 0x0

    :goto_0
    packed-switch v24, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :pswitch_0
    const/16 v2, 0xf

    goto/16 :goto_1

    :pswitch_1
    const/4 v2, 0x6

    goto/16 :goto_1

    :pswitch_2
    const/16 v2, 0x19

    goto/16 :goto_1

    :pswitch_3
    const/16 v2, 0x17

    goto :goto_1

    :pswitch_4
    const/16 v2, 0xe

    goto :goto_1

    :pswitch_5
    const/16 v2, 0xa

    goto :goto_1

    :pswitch_6
    const/16 v2, 0x11

    goto :goto_1

    :pswitch_7
    const/16 v2, 0x1e

    goto :goto_1

    :pswitch_8
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_9
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_a
    const/16 v2, 0x1b

    goto :goto_1

    :pswitch_b
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_c
    const/16 v2, 0x16

    goto :goto_1

    :pswitch_d
    const/16 v2, 0x1a

    goto :goto_1

    :pswitch_e
    const/16 v2, 0x9

    goto :goto_1

    :pswitch_f
    const/16 v2, 0x14

    goto :goto_1

    :pswitch_10
    const/16 v2, 0xb

    goto :goto_1

    :pswitch_11
    const/16 v2, 0x10

    goto :goto_1

    :pswitch_12
    const/16 v2, 0x13

    goto :goto_1

    :pswitch_13
    const/16 v2, 0x1f

    goto :goto_1

    :pswitch_14
    const/16 v2, 0x1c

    goto :goto_1

    :pswitch_15
    const/16 v2, 0xc

    goto :goto_1

    :pswitch_16
    const/16 v2, 0x18

    goto :goto_1

    :pswitch_17
    const/16 v2, 0x12

    goto :goto_1

    :pswitch_18
    const/16 v2, 0xd

    goto :goto_1

    :pswitch_19
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1a
    const/16 v2, 0x1d

    goto :goto_1

    :pswitch_1b
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_1c
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_1d
    const/4 v2, 0x3

    :goto_1
    :pswitch_1e
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7866ceda -> :sswitch_1e
        -0x6a2ea58a -> :sswitch_1d
        -0x69e9ad94 -> :sswitch_1c
        -0x5edd7b70 -> :sswitch_1b
        -0x5ead2806 -> :sswitch_1a
        -0x50c088ec -> :sswitch_19
        -0x4bf73488 -> :sswitch_18
        -0x37b90a9a -> :sswitch_17
        -0x3565b984 -> :sswitch_16
        -0x311a62de -> :sswitch_15
        -0x3023ebc0 -> :sswitch_14
        -0x28732996 -> :sswitch_13
        -0x1bdda92d -> :sswitch_12
        -0x108c6a77 -> :sswitch_11
        0x1a55c -> :sswitch_10
        0x1b251 -> :sswitch_f
        0x2ff583 -> :sswitch_e
        0x2ff5b9 -> :sswitch_d
        0x31dd2a -> :sswitch_c
        0x322df4 -> :sswitch_b
        0x34af1a -> :sswitch_a
        0x35f4f4 -> :sswitch_9
        0x35f59e -> :sswitch_8
        0x56140cb -> :sswitch_7
        0x5c6731b -> :sswitch_6
        0x6856c82 -> :sswitch_5
        0x6873d92 -> :sswitch_4
        0x1869ee99 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1e
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

.method public remove(I)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected s1(Lw3/i3;)I
    .locals 1

    sget-object v0, Lw3/j3;->b:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 5

    iget-wide v0, p0, Lw3/y0;->j:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lw3/y0;->n:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Array.prototype has no method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->b2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->e2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p2, p3, p4}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    new-instance p2, Lw3/z0;

    sget-object p4, Lw3/z0$a;->a:Lw3/z0$a;

    invoke-direct {p2, p3, p1, p4}, Lw3/z0;-><init>(Lw3/z2;Lw3/z2;Lw3/z0$a;)V

    return-object p2

    :pswitch_3
    invoke-static {p2, p3, p4}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    new-instance p2, Lw3/z0;

    sget-object p4, Lw3/z0$a;->c:Lw3/z0$a;

    invoke-direct {p2, p3, p1, p4}, Lw3/z0;-><init>(Lw3/z2;Lw3/z2;Lw3/z0$a;)V

    return-object p2

    :pswitch_4
    invoke-static {p2, p3, p4}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    new-instance p2, Lw3/z0;

    sget-object p4, Lw3/z0$a;->b:Lw3/z0$a;

    invoke-direct {p2, p3, p1, p4}, Lw3/z0;-><init>(Lw3/z2;Lw3/z2;Lw3/z0$a;)V

    return-object p2

    :pswitch_5
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->c2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2, v0, p3, p4, p5}, Lw3/y0;->s2(Lw3/m;ILw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p2, p1, p3, p4, p5}, Lw3/y0;->Y1(Lw3/m;Lw3/l0;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->i2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->f2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->o2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->a2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->q2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->r2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->n2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->k2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->l2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->p2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->m2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->h2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14
    invoke-static {p2, p3, p4, v1, v2}, Lw3/y0;->E2(Lw3/m;Lw3/z2;Lw3/z2;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_15
    invoke-static {p2, p3, p4, v2, v1}, Lw3/y0;->E2(Lw3/m;Lw3/z2;Lw3/z2;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_16
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lw3/m;->E(I)Z

    move-result p1

    invoke-static {p2, p3, p4, p1, v2}, Lw3/y0;->E2(Lw3/m;Lw3/z2;Lw3/z2;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_17
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p1, p2, p3, p5}, Lw3/c;->p(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p2, p3, p5}, Lw3/y0;->Z1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_18
    array-length v3, p5

    if-lez v3, :cond_4

    aget-object p4, p5, v2

    invoke-static {p2, p3, p4}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p4

    array-length v3, p5

    sub-int/2addr v3, v1

    new-array v1, v3, [Ljava/lang/Object;

    :goto_2
    if-ge v2, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p5, v4

    aput-object v5, v1, v2

    move v2, v4

    goto :goto_2

    :cond_3
    move-object p5, v1

    :cond_4
    neg-int v0, v0

    goto/16 :goto_0

    :pswitch_19
    array-length p1, p5

    if-lez p1, :cond_5

    aget-object p1, p5, v2

    invoke-static {p1}, Lw3/y0;->g2(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1a
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->j2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1b
    invoke-static {p2, p3, p4, p5}, Lw3/y0;->d2(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch -0x1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method t2(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lw3/y0;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lw3/y0;->m:Z

    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lw3/u2;->y:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lw3/y0;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    iget-wide v0, p0, Lw3/y0;->j:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    long-to-int v1, v0

    array-length v0, p1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lw3/y0;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lw3/n0;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    if-ne p2, p0, :cond_0

    invoke-static {p1}, Lw3/y0;->B2(Ljava/lang/String;)J

    move-result-wide p1

    iget-wide v0, p0, Lw3/y0;->j:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lw3/y0;->j:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw3/y0;->m:Z

    :cond_0
    return-void
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
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lw3/y0;->j:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lw3/u2;->D2(D)Ljava/lang/Number;

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

.method public y0(ZZ)[Ljava/lang/Object;
    .locals 7

    invoke-super {p0, p1, p2}, Lw3/n0;->y0(ZZ)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lw3/y0;->l:[Ljava/lang/Object;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    array-length p2, p2

    iget-wide v0, p0, Lw3/y0;->j:J

    int-to-long v2, p2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    long-to-int p2, v0

    :cond_1
    if-nez p2, :cond_2

    return-object p1

    :cond_2
    array-length v0, p1

    add-int v1, p2, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eq v3, p2, :cond_4

    iget-object v5, p0, Lw3/y0;->l:[Ljava/lang/Object;

    aget-object v5, v5, v3

    sget-object v6, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v5, v6, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eq v4, p2, :cond_5

    add-int p2, v4, v0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v1, v2, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p2

    :cond_5
    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method protected y1(I)V
    .locals 13

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    sget-object v2, Lw3/y0;->n:Ljava/lang/Object;

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

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "copyWithin"

    goto :goto_0

    :pswitch_1
    const-string v0, "includes"

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "entries"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "values"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "keys"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "fill"

    goto/16 :goto_2

    :pswitch_6
    const-string v0, "reduceRight"

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "reduce"

    goto :goto_2

    :pswitch_8
    const-string v0, "findIndex"

    goto :goto_2

    :pswitch_9
    const-string v0, "find"

    goto :goto_2

    :pswitch_a
    const-string v0, "some"

    goto :goto_2

    :pswitch_b
    const-string v0, "map"

    goto :goto_2

    :pswitch_c
    const-string v0, "forEach"

    goto :goto_2

    :pswitch_d
    const-string v0, "filter"

    goto :goto_2

    :pswitch_e
    const-string v0, "every"

    goto :goto_2

    :pswitch_f
    const-string v0, "lastIndexOf"

    goto :goto_2

    :pswitch_10
    const-string v0, "indexOf"

    goto :goto_2

    :pswitch_11
    const-string v1, "slice"

    goto :goto_0

    :pswitch_12
    const-string v0, "concat"

    goto :goto_2

    :pswitch_13
    const-string v1, "splice"

    :goto_0
    move-object v10, v1

    const/4 v12, 0x2

    goto :goto_3

    :pswitch_14
    const-string v0, "unshift"

    goto :goto_2

    :pswitch_15
    const-string v0, "shift"

    goto :goto_1

    :pswitch_16
    const-string v0, "pop"

    goto :goto_1

    :pswitch_17
    const-string v0, "push"

    goto :goto_2

    :pswitch_18
    const-string v0, "sort"

    goto :goto_2

    :pswitch_19
    const-string v0, "reverse"

    goto :goto_1

    :pswitch_1a
    const-string v0, "join"

    goto :goto_2

    :pswitch_1b
    const-string v0, "toSource"

    goto :goto_1

    :pswitch_1c
    const-string v0, "toLocaleString"

    goto :goto_1

    :pswitch_1d
    const-string v0, "toString"

    :goto_1
    move-object v10, v0

    const/4 v12, 0x0

    goto :goto_3

    :pswitch_1e
    const-string v0, "constructor"

    :goto_2
    move-object v10, v0

    const/4 v12, 0x1

    :goto_3
    sget-object v8, Lw3/y0;->n:Ljava/lang/Object;

    move-object v7, p0

    move v9, p1

    invoke-virtual/range {v7 .. v12}, Lw3/n0;->A1(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lw3/l0;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
