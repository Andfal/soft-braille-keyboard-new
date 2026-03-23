.class final Lw3/h1;
.super Lw3/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/h1$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/lang/reflect/Method;

.field private static final m:Ljava/lang/reflect/Method;


# instance fields
.field private j:Lw3/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lw3/z2;

    const-class v1, Lw3/h1;

    const-string v2, "Error"

    sput-object v2, Lw3/h1;->k:Ljava/lang/Object;

    :try_start_0
    const-string v2, "J1"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lw3/h1;->l:Ljava/lang/reflect/Method;

    const-string v2, "P1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v5

    const-class v0, Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lw3/h1;->m:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    return-void
.end method

.method private I1(Lw3/d0;[Lw3/y2;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object v0

    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    const-string v4, "CallSite"

    invoke-virtual {v0, p0, v4}, Lw3/m;->T(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object v4

    check-cast v4, Lw3/c1;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lw3/c1;->O1(Lw3/y2;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, v1}, Lw3/m;->R(Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {p1, v0, p1, p0, v1}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static K1(Lw3/z2;Z)V
    .locals 5

    new-instance v0, Lw3/h1;

    invoke-direct {v0}, Lw3/h1;-><init>()V

    const-string v1, "Error"

    const-string v2, "name"

    invoke-static {v0, v2, v1}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "fileName"

    invoke-static {v0, v4, v3}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lineNumber"

    invoke-static {v0, v4, v3}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lw3/n0;->d1(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v3}, Lw3/n0;->d1(Ljava/lang/String;I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lw3/n0;->n1(ILw3/z2;Z)Lw3/l0;

    invoke-static {v0, p1}, Lw3/c1;->L1(Lw3/z2;Z)V

    return-void
.end method

.method private static L1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {p0, v0, p1}, Lw3/u2;->d2(Lw3/m;Ljava/lang/Object;Lw3/z2;)Lw3/z2;

    move-result-object v0

    check-cast v0, Lw3/a3;

    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object p2, p2, v2

    invoke-static {p0, p2, p1}, Lw3/u2;->d2(Lw3/m;Ljava/lang/Object;Lw3/z2;)Lw3/z2;

    move-result-object p2

    check-cast p2, Lw3/d0;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v1, "Error"

    invoke-virtual {p0, p1, v1}, Lw3/m;->T(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object p0

    check-cast p0, Lw3/h1;

    new-instance p1, Lw3/b0;

    const-string v1, "[object Object]"

    invoke-direct {p1, v1}, Lw3/b0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lw3/h1;->Q1(Lw3/s2;)V

    if-eqz p2, :cond_1

    const-string p1, "name"

    invoke-interface {p2, p1, p2}, Lw3/z2;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lw3/w3;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "_stackHide"

    invoke-static {p1}, Lw3/m;->l0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lw3/a3;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "stack"

    invoke-virtual {p0, p1}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {v0, p1, p0, p2}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static M1(Lw3/m;Lw3/z2;Lw3/z2;)Ljava/lang/String;
    .locals 5

    const-string v0, "name"

    invoke-static {p2, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "message"

    invoke-static {p2, v1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fileName"

    invoke-static {p2, v2}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "lineNumber"

    invoke-static {p2, v3}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne v0, v4, :cond_0

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v4, :cond_1

    if-ne v2, v4, :cond_1

    if-eq p2, v4, :cond_5

    :cond_1
    const-string v0, ""

    if-ne v1, v4, :cond_2

    move-object v1, v0

    :cond_2
    invoke-static {p0, p1, v1}, Lw3/u2;->x2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_3

    if-eq p2, v4, :cond_5

    :cond_3
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_4

    move-object v2, v0

    :cond_4
    invoke-static {p0, p1, v2}, Lw3/u2;->x2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p2, v4, :cond_5

    invoke-static {p2}, Lw3/u2;->R1(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double p0, p0

    invoke-static {p0, p1}, Lw3/u2;->g2(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p0, "))"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static N1(Lw3/z2;)Ljava/lang/Object;
    .locals 3

    const-string v0, "name"

    invoke-static {p0, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Error"

    :goto_1
    const-string v2, "message"

    invoke-static {p0, v2}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v1, :cond_3

    sget-object v1, Lw3/w3;->a:Ljava/lang/Object;

    if-ne p0, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_2
    const-string p0, ""

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static O1(Lw3/m;Lw3/z2;Lw3/l0;[Ljava/lang/Object;)Lw3/h1;
    .locals 2

    const-string p0, "prototype"

    invoke-virtual {p2, p0, p2}, Lw3/n0;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/z2;

    new-instance p2, Lw3/h1;

    invoke-direct {p2}, Lw3/h1;-><init>()V

    invoke-virtual {p2, p0}, Lw3/a3;->A(Lw3/z2;)V

    invoke-virtual {p2, p1}, Lw3/a3;->h(Lw3/z2;)V

    array-length p0, p3

    const/4 p1, 0x1

    if-lt p0, p1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    sget-object v1, Lw3/w3;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const-string v1, "message"

    invoke-static {v0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    const-string v1, "fileName"

    aget-object p1, p3, p1

    invoke-static {p2, v1, p1}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x3

    if-lt p0, p1, :cond_1

    aget-object p0, p3, v0

    invoke-static {p0}, Lw3/u2;->R1(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "lineNumber"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object p2
.end method


# virtual methods
.method public J1(Lw3/z2;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lw3/h1;->j:Lw3/s2;

    if-nez v0, :cond_0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lw3/a3;->l()Lw3/z2;

    move-result-object v0

    check-cast v0, Lw3/h1;

    const-string v1, "_ErrorPrototypeProps"

    invoke-virtual {v0, v1}, Lw3/a3;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/h1$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw3/h1$a;->c()I

    move-result v1

    invoke-virtual {v0}, Lw3/h1$a;->b()Lw3/d0;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    const-string v2, "_stackHide"

    invoke-virtual {p0, v2}, Lw3/a3;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lw3/h1;->j:Lw3/s2;

    invoke-virtual {v3, v1, v2}, Lw3/s2;->d(ILjava/lang/String;)[Lw3/y2;

    move-result-object v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lw3/h1;->j:Lw3/s2;

    invoke-virtual {v0}, Lw3/s2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lw3/s2;->b([Lw3/y2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v1}, Lw3/h1;->I1(Lw3/d0;[Lw3/y2;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lw3/h1;->P1(Lw3/z2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public P1(Lw3/z2;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "stack"

    invoke-interface {p1, v0}, Lw3/z2;->o(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lw3/h1;->j:Lw3/s2;

    invoke-interface {p1, v0, p1, p2}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public Q1(Lw3/s2;)V
    .locals 7

    iget-object v0, p0, Lw3/h1;->j:Lw3/s2;

    if-nez v0, :cond_0

    iput-object p1, p0, Lw3/h1;->j:Lw3/s2;

    const-string v2, "stack"

    sget-object v4, Lw3/h1;->l:Ljava/lang/reflect/Method;

    sget-object v5, Lw3/h1;->m:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lw3/a3;->Y(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    :cond_0
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Error"

    return-object v0
.end method

.method protected o1(Lw3/l0;)V
    .locals 12

    sget-object v2, Lw3/h1;->k:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "captureStackTrace"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V

    new-instance v0, Lw3/h1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw3/h1$a;-><init>(Lw3/g1;)V

    const-string v1, "_ErrorPrototypeProps"

    invoke-virtual {p0, v1, v0}, Lw3/a3;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "stackTraceLimit"

    sget-object v9, Lw3/h1$a;->c:Ljava/lang/reflect/Method;

    sget-object v10, Lw3/h1$a;->d:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    move-object v6, p1

    move-object v8, v0

    invoke-virtual/range {v6 .. v11}, Lw3/a3;->Y(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    const-string v7, "prepareStackTrace"

    sget-object v9, Lw3/h1$a;->e:Ljava/lang/reflect/Method;

    sget-object v10, Lw3/h1$a;->f:Ljava/lang/reflect/Method;

    invoke-virtual/range {v6 .. v11}, Lw3/a3;->Y(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    invoke-super {p0, p1}, Lw3/n0;->o1(Lw3/l0;)V

    return-void
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "toSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x3

    :goto_1
    :pswitch_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x6a2ea58a -> :sswitch_2
        -0x69e9ad94 -> :sswitch_1
        -0x5ead2806 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lw3/h1;->k:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    invoke-static {p2, p3, p4}, Lw3/h1;->M1(Lw3/m;Lw3/z2;Lw3/z2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lw3/h1;->N1(Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p2, p3, p1, p5}, Lw3/h1;->O1(Lw3/m;Lw3/z2;Lw3/l0;[Ljava/lang/Object;)Lw3/h1;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2, p4, p5}, Lw3/h1;->L1(Lw3/m;Lw3/z2;[Ljava/lang/Object;)V

    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lw3/h1;->N1(Lw3/z2;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected y1(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string v0, "toSource"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "toString"

    goto :goto_0

    :cond_2
    const-string v1, "constructor"

    move-object v0, v1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lw3/h1;->k:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void
.end method
