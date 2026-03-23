.class public final Lw1/e;
.super La2/a;
.source "SourceFile"


# static fields
.field private static final u:Ljava/io/Reader;

.field private static final v:Ljava/lang/Object;


# instance fields
.field private q:[Ljava/lang/Object;

.field private r:I

.field private s:[Ljava/lang/String;

.field private t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw1/e$a;

    invoke-direct {v0}, Lw1/e$a;-><init>()V

    sput-object v0, Lw1/e;->u:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw1/e;->v:Ljava/lang/Object;

    return-void
.end method

.method private b0(La2/b;)V
    .locals 3

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lw1/e;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw1/e;->q:[Ljava/lang/Object;

    iget v1, p0, Lw1/e;->r:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private f0()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lw1/e;->q:[Ljava/lang/Object;

    iget v1, p0, Lw1/e;->r:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lw1/e;->r:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    return-object v2
.end method

.method private j0(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lw1/e;->r:I

    iget-object v1, p0, Lw1/e;->q:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lw1/e;->q:[Ljava/lang/Object;

    iget-object v1, p0, Lw1/e;->t:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lw1/e;->t:[I

    iget-object v1, p0, Lw1/e;->s:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lw1/e;->s:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lw1/e;->q:[Ljava/lang/Object;

    iget v1, p0, Lw1/e;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lw1/e;->r:I

    aput-object p1, v0, v1

    return-void
.end method

.method private x()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw1/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()D
    .locals 5

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->g:La2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, La2/b;->f:La2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lw1/e;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lw1/e;->e0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/o;

    invoke-virtual {v0}, Lt1/o;->k()D

    move-result-wide v0

    invoke-virtual {p0}, La2/a;->m()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    iget v2, p0, Lw1/e;->r:I

    if-lez v2, :cond_4

    iget-object v3, p0, Lw1/e;->t:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_4
    return-wide v0
.end method

.method public B()I
    .locals 5

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->g:La2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, La2/b;->f:La2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lw1/e;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lw1/e;->e0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/o;

    invoke-virtual {v0}, Lt1/o;->l()I

    move-result v0

    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    iget v1, p0, Lw1/e;->r:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lw1/e;->t:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return v0
.end method

.method public C()J
    .locals 5

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->g:La2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, La2/b;->f:La2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lw1/e;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lw1/e;->e0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/o;

    invoke-virtual {v0}, Lt1/o;->m()J

    move-result-wide v0

    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    iget v2, p0, Lw1/e;->r:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lw1/e;->t:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 4

    sget-object v0, La2/b;->e:La2/b;

    invoke-direct {p0, v0}, Lw1/e;->b0(La2/b;)V

    invoke-direct {p0}, Lw1/e;->e0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lw1/e;->s:[Ljava/lang/String;

    iget v3, p0, Lw1/e;->r:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lw1/e;->j0(Ljava/lang/Object;)V

    return-object v1
.end method

.method public H()V
    .locals 3

    sget-object v0, La2/b;->i:La2/b;

    invoke-direct {p0, v0}, Lw1/e;->b0(La2/b;)V

    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    iget v0, p0, Lw1/e;->r:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lw1/e;->t:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public K()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->f:La2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, La2/b;->g:La2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lw1/e;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/o;

    invoke-virtual {v0}, Lt1/o;->o()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lw1/e;->r:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lw1/e;->t:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public M()La2/b;
    .locals 3

    iget v0, p0, Lw1/e;->r:I

    if-nez v0, :cond_0

    sget-object v0, La2/b;->j:La2/b;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lw1/e;->e0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lw1/e;->q:[Ljava/lang/Object;

    iget v2, p0, Lw1/e;->r:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lt1/m;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, La2/b;->e:La2/b;

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lw1/e;->j0(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, La2/b;->d:La2/b;

    goto :goto_0

    :cond_3
    sget-object v0, La2/b;->b:La2/b;

    :goto_0
    return-object v0

    :cond_4
    instance-of v1, v0, Lt1/m;

    if-eqz v1, :cond_5

    sget-object v0, La2/b;->c:La2/b;

    return-object v0

    :cond_5
    instance-of v1, v0, Lt1/g;

    if-eqz v1, :cond_6

    sget-object v0, La2/b;->a:La2/b;

    return-object v0

    :cond_6
    instance-of v1, v0, Lt1/o;

    if-eqz v1, :cond_a

    check-cast v0, Lt1/o;

    invoke-virtual {v0}, Lt1/o;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, La2/b;->f:La2/b;

    return-object v0

    :cond_7
    invoke-virtual {v0}, Lt1/o;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, La2/b;->h:La2/b;

    return-object v0

    :cond_8
    invoke-virtual {v0}, Lt1/o;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, La2/b;->g:La2/b;

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, Lt1/l;

    if-eqz v1, :cond_b

    sget-object v0, La2/b;->i:La2/b;

    return-object v0

    :cond_b
    sget-object v1, Lw1/e;->v:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public Z()V
    .locals 3

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->e:La2/b;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lw1/e;->D()Ljava/lang/String;

    iget-object v0, p0, Lw1/e;->s:[Ljava/lang/String;

    iget v1, p0, Lw1/e;->r:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    iget v0, p0, Lw1/e;->r:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lw1/e;->s:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    :cond_1
    :goto_0
    iget v0, p0, Lw1/e;->r:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lw1/e;->t:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, La2/b;->a:La2/b;

    invoke-direct {p0, v0}, Lw1/e;->b0(La2/b;)V

    invoke-direct {p0}, Lw1/e;->e0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/g;

    invoke-virtual {v0}, Lt1/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lw1/e;->j0(Ljava/lang/Object;)V

    iget-object v0, p0, Lw1/e;->t:[I

    iget v1, p0, Lw1/e;->r:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, La2/b;->c:La2/b;

    invoke-direct {p0, v0}, Lw1/e;->b0(La2/b;)V

    invoke-direct {p0}, Lw1/e;->e0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/m;

    invoke-virtual {v0}, Lt1/m;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lw1/e;->j0(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lw1/e;->v:Ljava/lang/Object;

    aput-object v3, v1, v2

    iput-object v1, p0, Lw1/e;->q:[Ljava/lang/Object;

    iput v0, p0, Lw1/e;->r:I

    return-void
.end method

.method public h()V
    .locals 3

    sget-object v0, La2/b;->b:La2/b;

    invoke-direct {p0, v0}, Lw1/e;->b0(La2/b;)V

    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    iget v0, p0, Lw1/e;->r:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lw1/e;->t:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public h0()V
    .locals 2

    sget-object v0, La2/b;->e:La2/b;

    invoke-direct {p0, v0}, Lw1/e;->b0(La2/b;)V

    invoke-direct {p0}, Lw1/e;->e0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lw1/e;->j0(Ljava/lang/Object;)V

    new-instance v1, Lt1/o;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lt1/o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lw1/e;->j0(Ljava/lang/Object;)V

    return-void
.end method

.method public i()V
    .locals 3

    sget-object v0, La2/b;->d:La2/b;

    invoke-direct {p0, v0}, Lw1/e;->b0(La2/b;)V

    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    iget v0, p0, Lw1/e;->r:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lw1/e;->t:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lw1/e;->r:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lw1/e;->q:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v4, v3, Lt1/g;

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw1/e;->t:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v3, v3, Lt1/m;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw1/e;->s:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 2

    invoke-virtual {p0}, Lw1/e;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->d:La2/b;

    if-eq v0, v1, :cond_0

    sget-object v1, La2/b;->b:La2/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lw1/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 4

    sget-object v0, La2/b;->h:La2/b;

    invoke-direct {p0, v0}, Lw1/e;->b0(La2/b;)V

    invoke-direct {p0}, Lw1/e;->f0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/o;

    invoke-virtual {v0}, Lt1/o;->j()Z

    move-result v0

    iget v1, p0, Lw1/e;->r:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lw1/e;->t:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method
