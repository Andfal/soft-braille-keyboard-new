.class public Lw3/e0;
.super Lw3/c;
.source "SourceFile"


# static fields
.field private static w:Z


# instance fields
.field p:Lw3/x0;

.field private q:Ljava/lang/String;

.field private transient r:[B

.field private s:I

.field private transient t:Z

.field private transient u:I

.field private v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lw3/z2;)V
    .locals 7

    invoke-direct {p0}, Lw3/c;-><init>()V

    instance-of v0, p2, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lw3/x0;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, p2}, Lw3/x0;-><init>(Ljava/lang/reflect/Constructor;)V

    iput-object v0, p0, Lw3/e0;->p:Lw3/x0;

    iput-boolean v1, p0, Lw3/e0;->v:Z

    goto :goto_0

    :cond_0
    new-instance v0, Lw3/x0;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-direct {v0, p2}, Lw3/x0;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {v0}, Lw3/x0;->l()Z

    move-result p2

    iput-boolean p2, p0, Lw3/e0;->v:Z

    :goto_0
    iget-object p2, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p2}, Lw3/x0;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p1, p0, Lw3/e0;->q:Ljava/lang/String;

    iget-object p1, p0, Lw3/e0;->p:Lw3/x0;

    iget-object p1, p1, Lw3/x0;->b:[Ljava/lang/Class;

    array-length v0, p1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v2, :cond_5

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lw3/e0;->v:Z

    if-eqz v0, :cond_2

    aget-object v0, p1, v4

    sget-object v5, Lw3/u2;->n:Ljava/lang/Class;

    if-ne v0, v5, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v5, Lw3/u2;->j:Ljava/lang/Class;

    if-ne v0, v5, :cond_2

    aget-object v0, p1, v3

    sget-object v3, Lw3/u2;->p:Ljava/lang/Class;

    if-ne v0, v3, :cond_2

    aget-object p1, p1, v2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const/4 p1, -0x2

    goto :goto_1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, "msg.varargs.ctor"

    invoke-static {p2, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_3
    iget-boolean v0, p0, Lw3/e0;->v:Z

    if-eqz v0, :cond_4

    aget-object v0, p1, v4

    sget-object v5, Lw3/u2;->n:Ljava/lang/Class;

    if-ne v0, v5, :cond_4

    aget-object v0, p1, v1

    sget-object v5, Lw3/u2;->r:Ljava/lang/Class;

    if-ne v0, v5, :cond_4

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lw3/u2;->j:Ljava/lang/Class;

    if-ne v0, v3, :cond_4

    aget-object p1, p1, v2

    sget-object v0, Lw3/u2;->p:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lw3/e0;->s:I

    goto :goto_3

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, "msg.varargs.fun"

    invoke-static {p2, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_5
    iput v0, p0, Lw3/e0;->s:I

    if-lez v0, :cond_7

    new-array v2, v0, [B

    iput-object v2, p0, Lw3/e0;->r:[B

    const/4 v2, 0x0

    :goto_2
    if-eq v2, v0, :cond_7

    aget-object v5, p1, v2

    invoke-static {v5}, Lw3/e0;->d2(Ljava/lang/Class;)I

    move-result v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lw3/e0;->r:[B

    int-to-byte v5, v5

    aput-byte v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    new-array p3, v3, [Ljava/lang/Object;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v4

    aput-object p2, p3, v1

    const-string p1, "msg.bad.parms"

    invoke-static {p1, p3}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_7
    :goto_3
    iget-object p1, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p1}, Lw3/x0;->j()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p1}, Lw3/x0;->m()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_8

    iput-boolean v1, p0, Lw3/e0;->t:Z

    goto :goto_4

    :cond_8
    invoke-static {p1}, Lw3/e0;->d2(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lw3/e0;->u:I

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p1}, Lw3/x0;->d()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lw3/u2;->r:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_a

    :goto_4
    invoke-static {p0, p3}, Lw3/u2;->w1(Lw3/c;Lw3/z2;)V

    return-void

    :cond_a
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "msg.bad.ctor.return"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1
.end method

.method public static a2(Lw3/m;Lw3/z2;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p0, p2, p1}, Lw3/u2;->d2(Lw3/m;Ljava/lang/Object;Lw3/z2;)Lw3/z2;

    move-result-object p0

    return-object p0

    :pswitch_2
    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    invoke-static {p2}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_3
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    return-object p2

    :cond_1
    invoke-static {p2}, Lw3/u2;->O1(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :pswitch_4
    instance-of p0, p2, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    return-object p2

    :cond_3
    invoke-static {p2}, Lw3/u2;->R1(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_4

    return-object p2

    :cond_4
    invoke-static {p2}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

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

.method static b2([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v0, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const-string p1, "msg.no.overload"

    invoke-static {p1, p0}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static c2(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lw3/e0;->w:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    sput-boolean v1, Lw3/e0;->w:Z

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_4

    sget-boolean v5, Lw3/e0;->w:Z

    if-eqz v5, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, p0, :cond_3

    goto :goto_2

    :cond_2
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    aput-object v0, v1, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-array p0, v4, [Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_6

    aget-object v3, v1, v2

    if-eqz v3, :cond_5

    add-int/lit8 v4, v0, 0x1

    aput-object v3, p0, v0

    move v0, v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-object p0
.end method

.method public static d2(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lw3/u2;->g:Ljava/lang/Class;

    if-eq p0, v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lw3/u2;->a:Ljava/lang/Class;

    if-eq p0, v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lw3/u2;->e:Ljava/lang/Class;

    if-eq p0, v0, :cond_6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lw3/u2;->r:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    sget-object v0, Lw3/u2;->j:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_8
    :goto_2
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public I1(Lw3/m;Lw3/z2;)Lw3/z2;
    .locals 0

    iget-object p1, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p1}, Lw3/x0;->i()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lw3/e0;->s:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p1}, Lw3/x0;->d()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/z2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lw3/c;->M1()Lw3/z2;

    move-result-object p2

    invoke-interface {p1, p2}, Lw3/z2;->A(Lw3/z2;)V

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object p2

    invoke-interface {p1, p2}, Lw3/z2;->h(Lw3/z2;)V

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public L1()I
    .locals 1

    iget v0, p0, Lw3/e0;->s:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public N1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/e0;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public O1()I
    .locals 1

    invoke-virtual {p0}, Lw3/e0;->L1()I

    move-result v0

    return v0
.end method

.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p4, v2

    instance-of v4, v3, Lw3/k;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lw3/e0;->s:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_6

    const/4 v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-ne v2, v0, :cond_2

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p3, v0, v4

    aput-object p4, v0, v6

    aput-object p0, v0, v5

    iget-object p3, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p3, v3, v0}, Lw3/x0;->h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_2
    if-nez p3, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_4

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_4
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p4, v0, v4

    aput-object p0, v0, v6

    aput-object p3, v0, v5

    iget-object p3, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p3}, Lw3/x0;->i()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p3, v0}, Lw3/x0;->n([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_a

    :cond_5
    iget-object p3, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p3, v3, v0}, Lw3/x0;->h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_a

    :cond_6
    iget-boolean v2, p0, Lw3/e0;->v:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {v2}, Lw3/x0;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    if-ne p3, p2, :cond_7

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object v5

    if-eq p2, v5, :cond_7

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object p3, v5

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    new-array p1, v4, [Ljava/lang/Object;

    iget-object p2, p0, Lw3/e0;->q:Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "msg.incompat.call"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_a
    :goto_5
    iget v2, p0, Lw3/e0;->s:I

    if-ne v2, v0, :cond_d

    move-object v2, p4

    const/4 v0, 0x0

    :goto_6
    iget v5, p0, Lw3/e0;->s:I

    if-eq v0, v5, :cond_10

    aget-object v5, p4, v0

    iget-object v6, p0, Lw3/e0;->r:[B

    aget-byte v6, v6, v0

    invoke-static {p1, p2, v5, v6}, Lw3/e0;->a2(Lw3/m;Lw3/z2;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_c

    if-ne v2, p4, :cond_b

    invoke-virtual {p4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    :cond_b
    aput-object v6, v2, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    if-nez v2, :cond_e

    sget-object v2, Lw3/u2;->y:[Ljava/lang/Object;

    goto :goto_9

    :cond_e
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_7
    iget v6, p0, Lw3/e0;->s:I

    if-eq v5, v6, :cond_10

    if-ge v5, v0, :cond_f

    aget-object v6, p4, v5

    goto :goto_8

    :cond_f
    sget-object v6, Lw3/w3;->a:Ljava/lang/Object;

    :goto_8
    iget-object v7, p0, Lw3/e0;->r:[B

    aget-byte v7, v7, v5

    invoke-static {p1, p2, v6, v7}, Lw3/e0;->a2(Lw3/m;Lw3/z2;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    :goto_9
    iget-object p4, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p4}, Lw3/x0;->j()Z

    move-result p4

    if-eqz p4, :cond_11

    iget-object p4, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p4, p3, v2}, Lw3/x0;->h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_1

    :cond_11
    iget-object p3, p0, Lw3/e0;->p:Lw3/x0;

    invoke-virtual {p3, v2}, Lw3/x0;->n([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_a
    if-eqz v1, :cond_13

    iget-boolean p4, p0, Lw3/e0;->t:Z

    if-eqz p4, :cond_12

    sget-object p3, Lw3/w3;->a:Ljava/lang/Object;

    goto :goto_b

    :cond_12
    iget p4, p0, Lw3/e0;->u:I

    if-nez p4, :cond_13

    invoke-virtual {p1}, Lw3/m;->D()Lw3/z3;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, v3}, Lw3/z3;->b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    :cond_13
    :goto_b
    return-object p3
.end method

.method e2(Lw3/z2;Lw3/z2;)V
    .locals 2

    invoke-static {p0, p1}, Lw3/u2;->w1(Lw3/c;Lw3/z2;)V

    invoke-virtual {p0, p2}, Lw3/c;->Y1(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lw3/z2;->h(Lw3/z2;)V

    const-string v0, "constructor"

    const/4 v1, 0x7

    invoke-static {p2, v0, p0, v1}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lw3/a3;->h(Lw3/z2;)V

    return-void
.end method

.method f2()Z
    .locals 2

    iget v0, p0, Lw3/e0;->s:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method g2()Z
    .locals 2

    iget v0, p0, Lw3/e0;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
