.class public Lw3/c;
.super Lw3/n0;
.source "SourceFile"

# interfaces
.implements Lw3/d0;


# static fields
.field private static final o:Ljava/lang/Object;


# instance fields
.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Z

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Function"

    sput-object v0, Lw3/c;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    iput-object v0, p0, Lw3/c;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/c;->l:Z

    const/4 v0, 0x6

    iput v0, p0, Lw3/c;->m:I

    iput v0, p0, Lw3/c;->n:I

    return-void
.end method

.method public constructor <init>(Lw3/z2;Lw3/z2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw3/n0;-><init>(Lw3/z2;Lw3/z2;)V

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    iput-object p1, p0, Lw3/c;->k:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw3/c;->l:Z

    const/4 p1, 0x6

    iput p1, p0, Lw3/c;->m:I

    iput p1, p0, Lw3/c;->n:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    iput-object v0, p0, Lw3/c;->k:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, p0, Lw3/c;->m:I

    iput v0, p0, Lw3/c;->n:I

    iput-boolean p1, p0, Lw3/c;->l:Z

    return-void
.end method

.method private K1()Ljava/lang/Object;
    .locals 3

    const-string v0, "arguments"

    invoke-virtual {p0, v0}, Lw3/n0;->k1(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lw3/n0;->j1(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw3/c;->k:Ljava/lang/Object;

    :goto_0
    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v1

    invoke-static {v1, p0}, Lw3/u2;->R(Lw3/m;Lw3/d0;)Lw3/b1;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0, v1}, Lw3/n0;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method static R1(Lw3/z2;Z)V
    .locals 2

    new-instance v0, Lw3/c;

    invoke-direct {v0}, Lw3/c;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Lw3/c;->m:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    return-void
.end method

.method static S1(Lw3/z2;Z)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lw3/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw3/c;-><init>(Z)V

    const/4 v1, 0x5

    iput v1, v0, Lw3/c;->m:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    const-string p1, "__GeneratorFunction"

    invoke-static {p0, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static T1(Lw3/l0;)Z
    .locals 1

    sget-object v0, Lw3/c;->o:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw3/l0;->h2()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static U1(Lw3/l0;)Z
    .locals 1

    sget-object v0, Lw3/c;->o:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lw3/l0;->h2()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private W1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    array-length v0, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/c;->V1()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lw3/m;->v()I

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_1

    const-string v2, "anonymous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_3

    if-lez v3, :cond_2

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v4, p3, v3

    invoke-static {v4}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v3, ") {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    aget-object p3, p3, v4

    invoke-static {p3}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p3, "\n}"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 p3, 0x1

    new-array v0, p3, [I

    invoke-static {v0}, Lw3/m;->B([I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    aput p3, v0, v2

    const-string v1, "<eval\'ed string>"

    :cond_5
    aget p3, v0, v2

    invoke-static {v2, v1, p3}, Lw3/u2;->O0(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v4

    invoke-virtual {p1}, Lw3/m;->t()Lw3/z;

    move-result-object p2

    invoke-static {p2}, Lw3/s;->f(Lw3/z;)Lw3/z;

    move-result-object v7

    invoke-static {}, Lw3/m;->i()Lw3/a0;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lw3/m;->d(Lw3/z2;Ljava/lang/String;Lw3/a0;Lw3/z;Ljava/lang/String;ILjava/lang/Object;)Lw3/d0;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Lw3/u0;

    const-string p2, "Interpreter not present"

    aget p3, v0, v2

    invoke-direct {p1, p2, v1, p3}, Lw3/u0;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p1
.end method

.method private static X1(Lw3/z2;Lw3/l0;)Lw3/c;
    .locals 1

    sget-object v0, Lw3/u2;->p:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lw3/z2;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lw3/t;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/t;

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object p0

    :cond_0
    const-class v0, Lw3/c;

    invoke-static {p0, v0, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/c;

    return-object p0
.end method

.method private declared-synchronized Z1()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw3/c;->j:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lw3/x1;

    invoke-direct {v0}, Lw3/x1;-><init>()V

    const-string v1, "constructor"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    iput-object v0, p0, Lw3/c;->j:Ljava/lang/Object;

    invoke-static {p0}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v1

    if-eq v1, v0, :cond_1

    invoke-virtual {v0, v1}, Lw3/a3;->A(Lw3/z2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected G1(II)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lw3/n0;->G1(II)V

    return-void

    :cond_0
    iput p2, p0, Lw3/c;->n:I

    return-void

    :cond_1
    iput p2, p0, Lw3/c;->m:I

    return-void
.end method

.method protected H1(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Lw3/n0;->H1(ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p2, p1, :cond_1

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_1
    const-string p1, "arguments"

    invoke-virtual {p0, p1}, Lw3/n0;->k1(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lw3/n0;->l1(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lw3/c;->n:I

    and-int/2addr p1, v0

    if-nez p1, :cond_3

    iput-object p2, p0, Lw3/c;->k:Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget p1, p0, Lw3/c;->m:I

    and-int/2addr p1, v0

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    sget-object p2, Lw3/x3;->c:Lw3/x3;

    :goto_1
    iput-object p2, p0, Lw3/c;->j:Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public I0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw3/a3;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "undefined"

    goto :goto_0

    :cond_0
    const-string v0, "function"

    :goto_0
    return-object v0
.end method

.method public I1(Lw3/m;Lw3/z2;)Lw3/z2;
    .locals 0

    new-instance p1, Lw3/x1;

    invoke-direct {p1}, Lw3/x1;-><init>()V

    invoke-virtual {p0}, Lw3/c;->M1()Lw3/z2;

    move-result-object p2

    invoke-interface {p1, p2}, Lw3/z2;->A(Lw3/z2;)V

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object p2

    invoke-interface {p1, p2}, Lw3/z2;->h(Lw3/z2;)V

    return-object p1
.end method

.method J1(II)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p2, "function "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/c;->N1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() {\n\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "[native code, arity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/c;->L1()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public L1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected M1()Lw3/z2;
    .locals 2

    invoke-virtual {p0}, Lw3/c;->P1()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lw3/z2;

    if-eqz v1, :cond_0

    check-cast v0, Lw3/z2;

    return-object v0

    :cond_0
    invoke-static {p0}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v0

    return-object v0
.end method

.method public N1()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public O1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected P1()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/c;->j:Ljava/lang/Object;

    if-nez v0, :cond_1

    instance-of v0, p0, Lw3/i1;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lw3/c;->Z1()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v1, Lw3/x3;->c:Lw3/x3;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected Q1()Z
    .locals 1

    iget-object v0, p0, Lw3/c;->j:Ljava/lang/Object;

    if-nez v0, :cond_1

    instance-of v0, p0, Lw3/i1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected V1()Z
    .locals 1

    iget-boolean v0, p0, Lw3/c;->l:Z

    return v0
.end method

.method public Y1(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lw3/c;->m:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lw3/x3;->c:Lw3/x3;

    :goto_0
    iput-object p1, p0, Lw3/c;->j:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lw3/c;->m:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public b(Lw3/z2;)Z
    .locals 2

    const-string v0, "prototype"

    invoke-static {p0, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lw3/z2;

    if-eqz v1, :cond_0

    check-cast v0, Lw3/z2;

    invoke-static {p1, v0}, Lw3/u2;->K0(Lw3/z2;Lw3/z2;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lw3/c;->N1()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "msg.instanceof.bad.prototype"

    invoke-static {v0, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw3/c;->V1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "__GeneratorFunction"

    goto :goto_0

    :cond_0
    const-string v0, "Function"

    :goto_0
    return-object v0
.end method

.method protected o1(Lw3/l0;)V
    .locals 0

    invoke-virtual {p1, p0}, Lw3/a3;->A(Lw3/z2;)V

    invoke-super {p0, p1}, Lw3/n0;->o1(Lw3/l0;)V

    return-void
.end method

.method public p(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lw3/c;->I1(Lw3/m;Lw3/z2;)Lw3/z2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v0, p3}, Lw3/c;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lw3/z2;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Lw3/z2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lw3/c;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lw3/z2;

    if-eqz p2, :cond_3

    move-object v0, p1

    check-cast v0, Lw3/z2;

    invoke-interface {v0}, Lw3/z2;->l()Lw3/z2;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lw3/c;->M1()Lw3/z2;

    move-result-object p1

    if-eq v0, p1, :cond_1

    invoke-interface {v0, p1}, Lw3/z2;->A(Lw3/z2;)V

    :cond_1
    invoke-interface {v0}, Lw3/z2;->i()Lw3/z2;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object p1

    if-eq v0, p1, :cond_2

    invoke-interface {v0, p1}, Lw3/z2;->h(Lw3/z2;)V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad implementaion of call as constructor, name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/c;->N1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected p1(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "arity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "prototype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "arguments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    const/4 v0, 0x5

    packed-switch v6, :pswitch_data_0

    const/4 v6, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v6, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v6, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v6, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_4
    const/4 v6, 0x5

    :goto_1
    if-nez v6, :cond_5

    invoke-super {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5
    if-eq v6, v4, :cond_9

    if-eq v6, v3, :cond_9

    if-eq v6, v2, :cond_9

    if-eq v6, v1, :cond_7

    if-ne v6, v0, :cond_6

    iget p1, p0, Lw3/c;->n:I

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_7
    invoke-virtual {p0}, Lw3/c;->Q1()Z

    move-result p1

    if-nez p1, :cond_8

    return v5

    :cond_8
    iget p1, p0, Lw3/c;->m:I

    goto :goto_2

    :cond_9
    const/4 p1, 0x7

    :goto_2
    invoke-static {p1, v6}, Lw3/n0;->E1(II)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x795386aa -> :sswitch_4
        -0x41f1c51a -> :sswitch_3
        -0x23b0dade -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x58c52dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "apply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "bind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "toSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x3

    :goto_1
    :pswitch_5
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x6a2ea58a -> :sswitch_5
        -0x69e9ad94 -> :sswitch_4
        -0x5ead2806 -> :sswitch_3
        0x2e243d -> :sswitch_2
        0x2e7a5e -> :sswitch_1
        0x58b836e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lw3/c;->o:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    instance-of p1, p4, Lw3/f;

    if-eqz p1, :cond_2

    move-object v6, p4

    check-cast v6, Lw3/f;

    array-length p1, p5

    if-lez p1, :cond_1

    aget-object p4, p5, v2

    invoke-static {p2, p4, p3}, Lw3/u2;->d2(Lw3/m;Ljava/lang/Object;Lw3/z2;)Lw3/z2;

    move-result-object p4

    sub-int/2addr p1, v1

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p5, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, p4

    move-object v8, v0

    goto :goto_0

    :cond_1
    sget-object p1, Lw3/u2;->y:[Ljava/lang/Object;

    const/4 p4, 0x0

    move-object v8, p1

    move-object v7, p4

    :goto_0
    new-instance p1, Lw3/e;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lw3/e;-><init>(Lw3/m;Lw3/z2;Lw3/f;Lw3/z2;[Ljava/lang/Object;)V

    return-object p1

    :cond_2
    invoke-static {p4}, Lw3/u2;->f1(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_1
    const/4 p1, 0x4

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1, p2, p3, p4, p5}, Lw3/u2;->b(ZLw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p4, p1}, Lw3/c;->X1(Lw3/z2;Lw3/l0;)Lw3/c;

    move-result-object p1

    array-length p2, p5

    const/4 p3, 0x2

    if-eqz p2, :cond_4

    aget-object p2, p5, v2

    invoke-static {p2}, Lw3/u2;->R1(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_4

    move v2, p2

    const/4 p3, 0x0

    :cond_4
    invoke-virtual {p1, v2, p3}, Lw3/c;->J1(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p4, p1}, Lw3/c;->X1(Lw3/z2;Lw3/l0;)Lw3/c;

    move-result-object p1

    invoke-static {p5, v2}, Lw3/u2;->S1([Ljava/lang/Object;I)I

    move-result p2

    invoke-virtual {p1, p2, v2}, Lw3/c;->J1(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-direct {p0, p2, p3, p5}, Lw3/c;->W1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected v1(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lw3/n0;->v1(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "arguments"

    return-object p1

    :cond_1
    const-string p1, "prototype"

    return-object p1

    :cond_2
    const-string p1, "name"

    return-object p1

    :cond_3
    const-string p1, "arity"

    return-object p1

    :cond_4
    const-string p1, "length"

    return-object p1
.end method

.method protected w1(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lw3/c;->K1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lw3/c;->P1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lw3/c;->N1()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lw3/c;->L1()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lw3/u2;->C2(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lw3/c;->O1()I

    move-result p1

    goto :goto_0
.end method

.method protected x1()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected y1(I)V
    .locals 3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "bind"

    goto :goto_0

    :pswitch_1
    const-string v1, "call"

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    const-string v1, "apply"

    goto :goto_0

    :pswitch_3
    const-string v1, "toSource"

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    const-string v1, "toString"

    goto :goto_0

    :pswitch_5
    const-string v1, "constructor"

    :goto_0
    sget-object v2, Lw3/c;->o:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
