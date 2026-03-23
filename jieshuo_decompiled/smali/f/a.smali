.class public Lf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a$a;
    }
.end annotation


# static fields
.field private static final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lf/j;

.field protected c:Lf/i;

.field private d:Ljava/lang/String;

.field private e:Ljava/text/DateFormat;

.field public final f:Lf/c;

.field protected g:Lf/h;

.field private h:[Lf/h;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/k;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/j;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Lg/m;

.field private o:I

.field private p:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lf/a;->q:Ljava/util/Set;

    const/16 v0, 0x11

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-class v4, Ljava/lang/Byte;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-class v4, Ljava/lang/Short;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-class v4, Ljava/lang/Long;

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-class v4, Ljava/lang/Float;

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-class v4, Ljava/lang/Double;

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-class v4, Ljava/math/BigInteger;

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-class v4, Ljava/math/BigDecimal;

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v2, v1, v3

    sget-object v4, Lf/a;->q:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lf/c;Lf/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lf/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lf/a;->i:I

    iput v0, p0, Lf/a;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lf/a;->l:Ljava/util/List;

    iput-object v1, p0, Lf/a;->m:Ljava/util/List;

    iput-object v1, p0, Lf/a;->n:Lg/m;

    iput v0, p0, Lf/a;->o:I

    iput-object v1, p0, Lf/a;->p:[Ljava/lang/String;

    iput-object p2, p0, Lf/a;->f:Lf/c;

    iput-object p1, p0, Lf/a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lf/a;->c:Lf/i;

    iget-object p1, p3, Lf/i;->e:Lf/j;

    iput-object p1, p0, Lf/a;->b:Lf/j;

    invoke-interface {p2}, Lf/c;->S()C

    move-result p1

    const/16 p3, 0x7b

    if-ne p1, p3, :cond_0

    invoke-interface {p2}, Lf/c;->next()C

    check-cast p2, Lf/d;

    const/16 p1, 0xc

    :goto_0
    iput p1, p2, Lf/d;->a:I

    goto :goto_1

    :cond_0
    const/16 p3, 0x5b

    if-ne p1, p3, :cond_1

    invoke-interface {p2}, Lf/c;->next()C

    check-cast p2, Lf/d;

    const/16 p1, 0xe

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lf/c;->nextToken()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lf/i;->r()Lf/i;

    move-result-object v0

    sget v1, Lc/a;->f:I

    invoke-direct {p0, p1, v0, v1}, Lf/a;-><init>(Ljava/lang/String;Lf/i;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lf/i;)V
    .locals 2

    new-instance v0, Lf/f;

    sget v1, Lc/a;->f:I

    invoke-direct {v0, p1, v1}, Lf/f;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lf/a;-><init>(Ljava/lang/Object;Lf/c;Lf/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lf/i;I)V
    .locals 1

    new-instance v0, Lf/f;

    invoke-direct {v0, p1, p3}, Lf/f;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lf/a;-><init>(Ljava/lang/Object;Lf/c;Lf/i;)V

    return-void
.end method

.method private e(Lf/h;)V
    .locals 5

    iget v0, p0, Lf/a;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lf/a;->i:I

    iget-object v1, p0, Lf/a;->h:[Lf/h;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    new-array v1, v1, [Lf/h;

    iput-object v1, p0, Lf/a;->h:[Lf/h;

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lf/h;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lf/a;->h:[Lf/h;

    :cond_1
    :goto_0
    iget-object v1, p0, Lf/a;->h:[Lf/h;

    aput-object p1, v1, v0

    return-void
.end method


# virtual methods
.method public A()Lf/c;
    .locals 1

    iget-object v0, p0, Lf/a;->f:Lf/c;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lf/a;->k:I

    return v0
.end method

.method public C()Lf/j;
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lf/j;

    return-object v0
.end method

.method public D(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lf/a;->j:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Lf/a;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a$a;

    iget-object v4, v3, Lf/a$a;->b:Ljava/lang/String;

    iget-object v5, v3, Lf/a$a;->d:Lf/h;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lf/h;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "$"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v4}, Lf/a;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    :try_start_0
    invoke-static {v4}, Lc/g;->b(Ljava/lang/String;)Lc/g;

    move-result-object v7

    invoke-virtual {v7}, Lc/g;->o()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, p1}, Lc/g;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Lc/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_2
    iget-object v6, v3, Lf/a$a;->a:Lf/h;

    iget-object v6, v6, Lf/h;->a:Ljava/lang/Object;

    :cond_3
    :goto_2
    iget-object v3, v3, Lf/a$a;->c:Lg/l;

    if-eqz v3, :cond_5

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lc/e;

    if-ne v7, v8, :cond_4

    iget-object v7, v3, Lg/l;->a:Ll/c;

    if-eqz v7, :cond_4

    const-class v8, Ljava/util/Map;

    iget-object v7, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lf/a;->h:[Lf/h;

    aget-object v7, v7, v1

    iget-object v7, v7, Lf/h;->a:Ljava/lang/Object;

    invoke-static {v4}, Lc/g;->b(Ljava/lang/String;)Lc/g;

    move-result-object v4

    invoke-virtual {v4}, Lc/g;->o()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v7}, Lc/g;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_4
    invoke-virtual {v3, v5, v6}, Lg/l;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public G(Lf/b;)Z
    .locals 1

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0, p1}, Lf/c;->D(Lf/b;)Z

    move-result p1

    return p1
.end method

.method public H()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/a;->K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public I(Lg/y1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syntax error, expect {, actual "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", fieldName "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lf/a;->f:Lf/c;

    invoke-interface {p1}, Lf/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lc/b;

    invoke-direct {v0}, Lc/b;-><init>()V

    invoke-virtual {p0, v0, p2}, Lf/a;->O(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lc/b;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {v0, v2}, Lc/b;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lc/e;

    if-eqz v0, :cond_1

    check-cast p2, Lc/e;

    return-object p2

    :cond_1
    new-instance p2, Lc/d;

    invoke-direct {p2, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object v0, p0, Lf/a;->g:Lf/h;

    :goto_0
    :try_start_0
    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->V()V

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->S()C

    move-result v1

    iget-object v3, p0, Lf/a;->f:Lf/c;

    sget-object v4, Lf/b;->h:Lf/b;

    invoke-interface {v3, v4}, Lf/c;->D(Lf/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->next()C

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->V()V

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->S()C

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    const-string v3, "expect \':\' at "

    const/16 v4, 0x3a

    const/16 v5, 0x22

    const/16 v6, 0x10

    if-ne v1, v5, :cond_5

    :try_start_1
    iget-object v1, p0, Lf/a;->f:Lf/c;

    iget-object v7, p0, Lf/a;->b:Lf/j;

    invoke-interface {v1, v7, v5}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7}, Lf/c;->V()V

    iget-object v7, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7}, Lf/c;->S()C

    move-result v7

    if-ne v7, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->b()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_6

    iget-object p2, p0, Lf/a;->f:Lf/c;

    invoke-interface {p2}, Lf/c;->next()C

    iget-object p2, p0, Lf/a;->f:Lf/c;

    invoke-interface {p2}, Lf/c;->W()V

    iget-object p2, p0, Lf/a;->f:Lf/c;

    invoke-interface {p2, v6}, Lf/c;->x(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_6
    const-string v7, "syntax error"

    const/16 v8, 0x27

    if-ne v1, v8, :cond_9

    :try_start_2
    iget-object v1, p0, Lf/a;->f:Lf/c;

    sget-object v9, Lf/b;->e:Lf/b;

    invoke-interface {v1, v9}, Lf/c;->D(Lf/b;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lf/a;->f:Lf/c;

    iget-object v7, p0, Lf/a;->b:Lf/j;

    invoke-interface {v1, v7, v8}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7}, Lf/c;->V()V

    iget-object v7, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7}, Lf/c;->S()C

    move-result v7

    if-ne v7, v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->b()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lc/d;

    invoke-direct {p1, v7}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    iget-object v1, p0, Lf/a;->f:Lf/c;

    sget-object v8, Lf/b;->d:Lf/b;

    invoke-interface {v1, v8}, Lf/c;->D(Lf/b;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lf/a;->f:Lf/c;

    iget-object v7, p0, Lf/a;->b:Lf/j;

    invoke-interface {v1, v7}, Lf/c;->u(Lf/j;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7}, Lf/c;->V()V

    iget-object v7, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7}, Lf/c;->S()C

    move-result v7

    if-ne v7, v4, :cond_12

    :goto_2
    iget-object v3, p0, Lf/a;->f:Lf/c;

    invoke-interface {v3}, Lf/c;->next()C

    iget-object v3, p0, Lf/a;->f:Lf/c;

    invoke-interface {v3}, Lf/c;->V()V

    iget-object v3, p0, Lf/a;->f:Lf/c;

    invoke-interface {v3}, Lf/c;->S()C

    iget-object v3, p0, Lf/a;->f:Lf/c;

    invoke-interface {v3}, Lf/c;->W()V

    sget-object v3, Lc/a;->c:Ljava/lang/String;

    const/16 v4, 0xd

    const/4 v7, 0x0

    if-ne v1, v3, :cond_c

    iget-object v3, p0, Lf/a;->f:Lf/c;

    sget-object v8, Lf/b;->q:Lf/b;

    invoke-interface {v3, v8}, Lf/c;->D(Lf/b;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v1, p0, Lf/a;->f:Lf/c;

    iget-object v3, p0, Lf/a;->b:Lf/j;

    invoke-interface {v1, v3, v5}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lf/a;->c:Lf/i;

    iget-object v5, p0, Lf/a;->f:Lf/c;

    invoke-interface {v5}, Lf/c;->P()I

    move-result v5

    invoke-virtual {v3, v1, v7, v5}, Lf/i;->h(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1, v6}, Lf/c;->x(I)V

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->M()I

    move-result v1

    if-ne v1, v4, :cond_10

    iget-object p2, p0, Lf/a;->f:Lf/c;

    invoke-interface {p2, v6}, Lf/c;->x(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v0}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_a
    :try_start_3
    iget-object p1, p0, Lf/a;->c:Lf/i;

    invoke-virtual {p1, v1}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p1

    iget-object v2, p0, Lf/a;->f:Lf/c;

    invoke-interface {v2, v6}, Lf/c;->x(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lf/a;->l0(I)V

    if-eqz v0, :cond_b

    instance-of v2, p2, Ljava/lang/Integer;

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lf/a;->a0()V

    :cond_b
    invoke-interface {p1, p0, v1, p2}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v0}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_c
    :try_start_4
    iget-object v3, p0, Lf/a;->f:Lf/c;

    invoke-interface {v3}, Lf/c;->nextToken()V

    if-eqz v2, :cond_d

    invoke-virtual {p0, v0}, Lf/a;->h0(Lf/h;)V

    :cond_d
    invoke-interface {p1, v1}, Lg/y1;->c(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v3

    iget-object v5, p0, Lf/a;->f:Lf/c;

    invoke-interface {v5}, Lf/c;->M()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    iget-object v3, p0, Lf/a;->f:Lf/c;

    invoke-interface {v3}, Lf/c;->nextToken()V

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v3, v1}, Lf/a;->V(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_3
    invoke-interface {p1, v1, v7}, Lg/y1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7, v1}, Lf/a;->e0(Lf/h;Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    invoke-virtual {p0, v0}, Lf/a;->h0(Lf/h;)V

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->M()I

    move-result v1

    const/16 v3, 0x14

    if-eq v1, v3, :cond_11

    const/16 v3, 0xf

    if-ne v1, v3, :cond_f

    goto :goto_4

    :cond_f
    if-ne v1, v4, :cond_10

    iget-object p2, p0, Lf/a;->f:Lf/c;

    invoke-interface {p2}, Lf/c;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v0}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_4
    invoke-virtual {p0, v0}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_12
    :try_start_5
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->b()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actual "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Lc/d;

    invoke-direct {p1, v7}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lf/a;->h0(Lf/h;)V

    throw p1
.end method

.method public K(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_b

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    const/16 v3, 0xc

    if-eq v1, v3, :cond_7

    const/16 v3, 0xe

    if-eq v1, v3, :cond_5

    const-string v3, "syntax error, "

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3

    const/16 v6, 0x1a

    if-eq v1, v6, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    new-instance p1, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-interface {v0}, Lf/c;->nextToken()V

    return-object v5

    :pswitch_1
    invoke-interface {v0}, Lf/c;->nextToken()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    :goto_0
    invoke-virtual {p0, v0, p1}, Lf/a;->O(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    invoke-interface {v0}, Lf/c;->nextToken()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :pswitch_3
    invoke-interface {v0}, Lf/c;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v5

    :cond_0
    new-instance p1, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unterminated json string, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    invoke-interface {v0, v4}, Lf/c;->x(I)V

    invoke-interface {v0}, Lf/c;->M()I

    move-result p1

    if-ne p1, v4, :cond_1

    const/16 p1, 0xa

    invoke-interface {v0, p1}, Lf/c;->x(I)V

    invoke-virtual {p0, p1}, Lf/a;->b(I)V

    invoke-interface {v0}, Lf/c;->K()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2}, Lf/a;->b(I)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lf/a;->b(I)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    :cond_1
    new-instance p1, Lc/d;

    const-string v0, "syntax error"

    invoke-direct {p1, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    invoke-interface {v0}, Lf/c;->nextToken()V

    return-object v5

    :pswitch_6
    invoke-interface {v0}, Lf/c;->nextToken()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_7
    invoke-interface {v0}, Lf/c;->nextToken()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    invoke-interface {v0}, Lf/c;->B()[B

    move-result-object p1

    invoke-interface {v0}, Lf/c;->nextToken()V

    return-object p1

    :cond_3
    invoke-interface {v0}, Lf/c;->H()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NaN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lf/c;->nextToken()V

    return-object v5

    :cond_4
    new-instance p1, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v1, Lc/b;

    invoke-direct {v1}, Lc/b;-><init>()V

    invoke-virtual {p0, v1, p1}, Lf/a;->O(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object p1, Lf/b;->r:Lf/b;

    invoke-interface {v0, p1}, Lf/c;->D(Lf/b;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lc/b;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1

    :cond_7
    new-instance v1, Lc/e;

    sget-object v2, Lf/b;->p:Lf/b;

    invoke-interface {v0, v2}, Lf/c;->D(Lf/b;)Z

    move-result v0

    invoke-direct {v1, v0}, Lc/e;-><init>(Z)V

    invoke-virtual {p0, v1, p1}, Lf/a;->X(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-interface {v0}, Lf/c;->H()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lf/c;->x(I)V

    sget-object v1, Lf/b;->g:Lf/b;

    invoke-interface {v0, v1}, Lf/c;->D(Lf/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lf/f;

    invoke-direct {v0, p1}, Lf/f;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lf/f;->c1()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lf/d;->close()V

    return-object p1

    :cond_9
    invoke-virtual {v0}, Lf/d;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lf/d;->close()V

    throw p1

    :cond_a
    :goto_1
    return-object p1

    :cond_b
    sget-object p1, Lf/b;->i:Lf/b;

    invoke-interface {v0, p1}, Lf/c;->D(Lf/b;)Z

    move-result p1

    invoke-interface {v0, p1}, Lf/c;->b0(Z)Ljava/lang/Number;

    move-result-object p1

    invoke-interface {v0}, Lf/c;->nextToken()V

    return-object p1

    :cond_c
    invoke-interface {v0}, Lf/c;->K()Ljava/lang/Number;

    move-result-object p1

    invoke-interface {v0}, Lf/c;->nextToken()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public L(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lf/a;->M(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public M(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->nextToken()V

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v0

    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    const-class v2, Ljava/lang/String;

    if-ne v0, p1, :cond_2

    sget-object v0, Lh/f0;->a:Lh/f0;

    iget-object v3, p0, Lf/a;->f:Lf/c;

    const/4 v4, 0x2

    :goto_0
    invoke-interface {v3, v4}, Lf/c;->x(I)V

    goto :goto_1

    :cond_2
    if-ne v2, p1, :cond_3

    sget-object v0, Lh/h1;->a:Lh/h1;

    iget-object v3, p0, Lf/a;->f:Lf/c;

    invoke-interface {v3, v1}, Lf/c;->x(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lf/a;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    iget-object v3, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lg/j1;->c()I

    move-result v4

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lf/a;->g:Lf/h;

    invoke-virtual {p0, p2, p3}, Lf/a;->f0(Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    const/4 p3, 0x0

    :goto_2
    :try_start_0
    iget-object v4, p0, Lf/a;->f:Lf/c;

    sget-object v5, Lf/b;->h:Lf/b;

    invoke-interface {v4, v5}, Lf/c;->D(Lf/b;)Z

    move-result v4

    const/16 v5, 0x10

    if-eqz v4, :cond_4

    :goto_3
    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4}, Lf/c;->M()I

    move-result v4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4}, Lf/c;->nextToken()V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4}, Lf/c;->M()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xf

    if-ne v4, v6, :cond_5

    invoke-virtual {p0, v3}, Lf/a;->h0(Lf/h;)V

    iget-object p1, p0, Lf/a;->f:Lf/c;

    invoke-interface {p1, v5}, Lf/c;->x(I)V

    return-void

    :cond_5
    :try_start_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    if-ne v4, p1, :cond_6

    sget-object v4, Lh/f0;->a:Lh/f0;

    invoke-virtual {v4, p0, v6, v6}, Lh/f0;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    if-ne v2, p1, :cond_9

    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4}, Lf/c;->M()I

    move-result v4

    if-ne v4, v1, :cond_7

    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4}, Lf/c;->H()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4, v5}, Lf/c;->x(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4}, Lf/c;->M()I

    move-result v4

    const/16 v7, 0x8

    if-ne v4, v7, :cond_a

    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4}, Lf/c;->nextToken()V

    goto :goto_5

    :cond_a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p0, p1, v4}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_5
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lf/a;->g(Ljava/util/Collection;)V

    :goto_6
    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v4}, Lf/c;->M()I

    move-result v4

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lg/j1;->c()I

    move-result v5

    invoke-interface {v4, v5}, Lf/c;->x(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v3}, Lf/a;->h0(Lf/h;)V

    throw p1

    :cond_c
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expect \'[\', but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lf/g;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lf/a;->f:Lf/c;

    invoke-interface {p3}, Lf/c;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final N(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf/a;->O(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final O(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-interface {v0}, Lf/c;->nextToken()V

    :cond_1
    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_13

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lf/c;->x(I)V

    iget-object v3, p0, Lf/a;->g:Lf/h;

    if-eqz v3, :cond_3

    iget v4, v3, Lf/h;->d:I

    const/16 v5, 0x200

    if-gt v4, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lc/d;

    const-string p2, "array level > 512"

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lf/a;->f0(Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_1
    :try_start_0
    sget-object v5, Lf/b;->h:Lf/b;

    invoke-interface {v0, v5}, Lf/c;->D(Lf/b;)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_4

    :goto_2
    invoke-interface {v0}, Lf/c;->M()I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-interface {v0}, Lf/c;->nextToken()V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lf/c;->M()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_10

    const/4 v7, 0x3

    if-eq v5, v7, :cond_e

    if-eq v5, v1, :cond_c

    const/4 v7, 0x6

    if-eq v5, v7, :cond_b

    const/4 v7, 0x7

    if-eq v5, v7, :cond_a

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eq v5, v7, :cond_7

    const/16 v7, 0xc

    if-eq v5, v7, :cond_9

    const/16 v7, 0x14

    if-eq v5, v7, :cond_8

    const/16 v7, 0x17

    if-eq v5, v7, :cond_7

    if-eq v5, v2, :cond_6

    const/16 v7, 0xf

    if-eq v5, v7, :cond_5

    invoke-virtual {p0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_5

    :cond_5
    invoke-interface {v0, v6}, Lf/c;->x(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Lf/a;->h0(Lf/h;)V

    return-void

    :cond_6
    :try_start_1
    new-instance v8, Lc/b;

    invoke-direct {v8}, Lc/b;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v8, v5}, Lf/a;->O(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object v5, Lf/b;->r:Lf/b;

    invoke-interface {v0, v5}, Lf/c;->D(Lf/b;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_5

    :cond_7
    invoke-interface {v0, v1}, Lf/c;->x(I)V

    goto :goto_5

    :cond_8
    new-instance p1, Lc/d;

    const-string p2, "unclosed jsonArray"

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance v5, Lc/e;

    sget-object v7, Lf/b;->p:Lf/b;

    invoke-interface {v0, v7}, Lf/c;->D(Lf/b;)Z

    move-result v7

    invoke-direct {v5, v7}, Lc/e;-><init>(Z)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lf/a;->X(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_5

    :cond_a
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    invoke-interface {v0, v6}, Lf/c;->x(I)V

    goto :goto_5

    :cond_b
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_c
    invoke-interface {v0}, Lf/c;->H()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6}, Lf/c;->x(I)V

    sget-object v5, Lf/b;->g:Lf/b;

    invoke-interface {v0, v5}, Lf/c;->D(Lf/b;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Lf/f;

    invoke-direct {v5, v8}, Lf/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lf/f;->c1()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v5}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    move-object v8, v7

    :cond_d
    invoke-virtual {v5}, Lf/d;->close()V

    goto :goto_5

    :cond_e
    sget-object v5, Lf/b;->i:Lf/b;

    invoke-interface {v0, v5}, Lf/c;->D(Lf/b;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lf/c;->b0(Z)Ljava/lang/Number;

    move-result-object v5

    goto :goto_4

    :cond_f
    invoke-interface {v0, p2}, Lf/c;->b0(Z)Ljava/lang/Number;

    move-result-object v5

    :goto_4
    move-object v8, v5

    goto :goto_3

    :cond_10
    invoke-interface {v0}, Lf/c;->K()Ljava/lang/Number;

    move-result-object v8

    goto :goto_3

    :cond_11
    :goto_5
    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lf/a;->g(Ljava/util/Collection;)V

    invoke-interface {v0}, Lf/c;->M()I

    move-result v5

    if-ne v5, v6, :cond_12

    invoke-interface {v0, v1}, Lf/c;->x(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v3}, Lf/a;->h0(Lf/h;)V

    throw p1

    :cond_13
    new-instance p1, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect [, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v2

    invoke-static {v2}, Lf/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fieldName "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->Z()V

    iget-object v0, p0, Lf/a;->l:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/k;

    invoke-interface {v1, p1, p2}, Lg/k;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lf/a;->U(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    instance-of v1, p1, Lg/i;

    if-eqz v1, :cond_2

    check-cast p1, Lg/i;

    invoke-interface {p1, p2, v0}, Lg/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v1, p0, Lf/a;->m:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/j;

    invoke-interface {v2, p1, p2, v0}, Lg/j;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p1, p0, Lf/a;->k:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    iput p1, p0, Lf/a;->k:I

    :cond_4
    return-void
.end method

.method public R()Lc/e;
    .locals 3

    new-instance v0, Lc/e;

    iget-object v1, p0, Lf/a;->f:Lf/c;

    sget-object v2, Lf/b;->p:Lf/b;

    invoke-interface {v1, v2}, Lf/c;->D(Lf/b;)Z

    move-result v1

    invoke-direct {v0, v1}, Lc/e;-><init>(Z)V

    invoke-virtual {p0, v0}, Lf/a;->W(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lc/e;

    if-eqz v1, :cond_0

    check-cast v0, Lc/e;

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Lc/e;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lc/e;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public S(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf/a;->V(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public U(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf/a;->V(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lf/a;->f:Lf/c;

    invoke-interface {p1}, Lf/c;->nextToken()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v0, [B

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lf/a;->f:Lf/c;

    invoke-interface {p1}, Lf/c;->B()[B

    move-result-object p1

    iget-object p2, p0, Lf/a;->f:Lf/c;

    invoke-interface {p2}, Lf/c;->nextToken()V

    return-object p1

    :cond_1
    const-class v0, [C

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lf/a;->f:Lf/c;

    invoke-interface {p1}, Lf/c;->H()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lf/a;->f:Lf/c;

    invoke-interface {p2}, Lf/c;->nextToken()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lf/a;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lg/o;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syntax error,except start with { or [,but actually start with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    check-cast v0, Lg/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lg/o;->h(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-interface {v0, p0, p1, p2}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lc/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-instance p2, Lc/d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_0
    move-exception p1

    throw p1
.end method

.method public W(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf/a;->X(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final X(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "parse number key error"

    const-class v4, Ljava/util/Map;

    iget-object v5, v1, Lf/a;->f:Lf/c;

    invoke-interface {v5}, Lf/c;->M()I

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    invoke-interface {v5}, Lf/c;->nextToken()V

    return-object v8

    :cond_0
    invoke-interface {v5}, Lf/c;->M()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_1

    invoke-interface {v5}, Lf/c;->nextToken()V

    return-object v0

    :cond_1
    invoke-interface {v5}, Lf/c;->M()I

    move-result v6

    const/4 v9, 0x4

    if-ne v6, v9, :cond_2

    invoke-interface {v5}, Lf/c;->H()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Lf/c;->nextToken()V

    return-object v0

    :cond_2
    invoke-interface {v5}, Lf/c;->M()I

    move-result v6

    const/16 v10, 0xc

    const/16 v11, 0x10

    if-eq v6, v10, :cond_4

    invoke-interface {v5}, Lf/c;->M()I

    move-result v6

    if-ne v6, v11, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect {, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->a0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    iget-object v6, v1, Lf/a;->g:Lf/h;

    :try_start_0
    instance-of v10, v0, Lc/e;

    if-eqz v10, :cond_5

    move-object v12, v0

    check-cast v12, Lc/e;

    invoke-virtual {v12}, Lc/e;->z()Ljava/util/Map;

    move-result-object v12

    goto :goto_1

    :cond_5
    move-object v12, v0

    :goto_1
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v5}, Lf/c;->V()V

    invoke-interface {v5}, Lf/c;->S()C

    move-result v15

    sget-object v9, Lf/b;->h:Lf/b;

    invoke-interface {v5, v9}, Lf/c;->D(Lf/b;)Z

    move-result v9

    const/16 v13, 0x2c

    if-eqz v9, :cond_6

    :goto_3
    if-ne v15, v13, :cond_6

    invoke-interface {v5}, Lf/c;->next()C

    invoke-interface {v5}, Lf/c;->V()V

    invoke-interface {v5}, Lf/c;->S()C

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    const-string v9, ", name "

    const-string v7, "expect \':\' at "

    const/16 v13, 0x22

    const-string v8, "syntax error"

    if-ne v15, v13, :cond_8

    :try_start_1
    iget-object v15, v1, Lf/a;->b:Lf/j;

    invoke-interface {v5, v15, v13}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lf/c;->V()V

    invoke-interface {v5}, Lf/c;->S()C

    move-result v13

    const/16 v11, 0x3a

    if-ne v13, v11, :cond_7

    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_b

    :cond_7
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v11, 0x7d

    if-ne v15, v11, :cond_b

    invoke-interface {v5}, Lf/c;->next()C

    invoke-interface {v5}, Lf/c;->W()V

    invoke-interface {v5}, Lf/c;->nextToken()V

    if-nez v14, :cond_a

    iget-object v3, v1, Lf/a;->g:Lf/h;

    if-eqz v3, :cond_9

    iget-object v4, v3, Lf/h;->c:Ljava/lang/Object;

    if-ne v2, v4, :cond_9

    iget-object v4, v3, Lf/h;->a:Ljava/lang/Object;

    if-ne v0, v4, :cond_9

    move-object v6, v3

    goto :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p2}, Lf/a;->f0(Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_a

    move-object v6, v2

    :cond_a
    :goto_5
    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v0

    :cond_b
    const/16 v11, 0x27

    if-ne v15, v11, :cond_e

    :try_start_2
    sget-object v13, Lf/b;->e:Lf/b;

    invoke-interface {v5, v13}, Lf/c;->D(Lf/b;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v13, v1, Lf/a;->b:Lf/j;

    invoke-interface {v5, v13, v11}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lf/c;->V()V

    invoke-interface {v5}, Lf/c;->S()C

    move-result v11

    const/16 v13, 0x3a

    if-ne v11, v13, :cond_c

    goto :goto_4

    :cond_c
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lc/d;

    invoke-direct {v0, v8}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/16 v11, 0x1a

    if-eq v15, v11, :cond_60

    const/16 v11, 0x2c

    if-eq v15, v11, :cond_5f

    const/16 v11, 0x30

    if-lt v15, v11, :cond_f

    const/16 v11, 0x39

    if-le v15, v11, :cond_10

    :cond_f
    const/16 v11, 0x2d

    if-ne v15, v11, :cond_15

    :cond_10
    invoke-interface {v5}, Lf/c;->W()V

    invoke-interface {v5}, Lf/c;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v5}, Lf/c;->M()I

    move-result v7

    const/4 v11, 0x2

    if-ne v7, v11, :cond_11

    invoke-interface {v5}, Lf/c;->K()Ljava/lang/Number;

    move-result-object v7

    goto :goto_6

    :cond_11
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Lf/c;->b0(Z)Ljava/lang/Number;

    move-result-object v11

    move-object v7, v11

    :goto_6
    sget-object v11, Lf/b;->w:Lf/b;

    invoke-interface {v5, v11}, Lf/c;->D(Lf/b;)Z

    move-result v11

    if-nez v11, :cond_13

    if-eqz v10, :cond_12

    goto :goto_8

    :cond_12
    :goto_7
    move-object v15, v7

    goto :goto_9

    :cond_13
    :goto_8
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :goto_9
    :try_start_4
    invoke-interface {v5}, Lf/c;->S()C

    move-result v7

    const/16 v11, 0x3a

    if-ne v7, v11, :cond_14

    goto/16 :goto_4

    :cond_14
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v11, 0x7b

    if-eq v15, v11, :cond_19

    const/16 v11, 0x5b

    if-ne v15, v11, :cond_16

    goto :goto_a

    :cond_16
    sget-object v11, Lf/b;->d:Lf/b;

    invoke-interface {v5, v11}, Lf/c;->D(Lf/b;)Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, v1, Lf/a;->b:Lf/j;

    invoke-interface {v5, v11}, Lf/c;->u(Lf/j;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lf/c;->V()V

    invoke-interface {v5}, Lf/c;->S()C

    move-result v11

    const/16 v13, 0x3a

    if-ne v11, v13, :cond_17

    goto/16 :goto_4

    :cond_17
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lc/d;

    invoke-direct {v0, v8}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_a
    iget v7, v1, Lf/a;->o:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v1, Lf/a;->o:I

    const/16 v11, 0x200

    if-gt v7, v11, :cond_5e

    invoke-interface {v5}, Lf/c;->nextToken()V

    invoke-virtual/range {p0 .. p0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object v15

    const/4 v7, 0x1

    :goto_b
    if-nez v7, :cond_1a

    invoke-interface {v5}, Lf/c;->next()C

    invoke-interface {v5}, Lf/c;->V()V

    :cond_1a
    invoke-interface {v5}, Lf/c;->S()C

    move-result v7

    invoke-interface {v5}, Lf/c;->W()V

    sget-object v11, Lc/a;->c:Ljava/lang/String;

    if-ne v15, v11, :cond_2c

    sget-object v11, Lf/b;->q:Lf/b;

    invoke-interface {v5, v11}, Lf/c;->D(Lf/b;)Z

    move-result v11

    if-nez v11, :cond_2c

    iget-object v7, v1, Lf/a;->b:Lf/j;

    const/16 v8, 0x22

    invoke-interface {v5, v7, v8}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lf/b;->t:Lf/b;

    invoke-interface {v5, v8}, Lf/c;->D(Lf/b;)Z

    move-result v8

    if-eqz v8, :cond_1b

    :goto_c
    const/4 v11, 0x4

    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_1b
    if-eqz v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v11, 0x0

    goto :goto_10

    :cond_1c
    const/4 v8, 0x0

    :goto_d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_1f

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x30

    if-lt v9, v11, :cond_1e

    const/16 v11, 0x39

    if-le v9, v11, :cond_1d

    goto :goto_e

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_1e
    :goto_e
    const/16 v17, 0x0

    goto :goto_f

    :cond_1f
    const/16 v17, 0x1

    :goto_f
    if-nez v17, :cond_20

    iget-object v8, v1, Lf/a;->c:Lf/i;

    invoke-interface {v5}, Lf/c;->P()I

    move-result v9

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v11, v9}, Lf/i;->h(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v8

    goto :goto_10

    :cond_20
    const/4 v11, 0x0

    move-object v8, v11

    :goto_10
    if-nez v8, :cond_21

    sget-object v8, Lc/a;->c:Ljava/lang/String;

    invoke-interface {v12, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_21
    const/16 v3, 0x10

    invoke-interface {v5, v3}, Lf/c;->x(I)V

    invoke-interface {v5}, Lf/c;->M()I

    move-result v4

    const/16 v9, 0xd

    if-ne v4, v9, :cond_27

    invoke-interface {v5, v3}, Lf/c;->x(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, v1, Lf/a;->c:Lf/i;

    invoke-virtual {v2, v8}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v2

    instance-of v2, v2, Lg/o;

    if-eqz v2, :cond_22

    iget-object v2, v1, Lf/a;->c:Lf/i;

    invoke-static {v0, v8, v2}, Ll/l;->f(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    :cond_22
    move-object v0, v11

    :goto_11
    if-nez v0, :cond_26

    const-class v0, Ljava/lang/Cloneable;

    if-ne v8, v0, :cond_23

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_12

    :cond_23
    const-string v0, "java.util.Collections$EmptyMap"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_12

    :cond_24
    const-string v0, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_12

    :cond_25
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_26
    :goto_12
    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v0

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v2, Lc/d;

    const-string v3, "create instance error"

    invoke-direct {v2, v3, v0}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_27
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lf/a;->l0(I)V

    iget-object v3, v1, Lf/a;->g:Lf/h;

    if-eqz v3, :cond_28

    if-eqz v2, :cond_28

    instance-of v4, v2, Ljava/lang/Integer;

    if-nez v4, :cond_28

    iget-object v3, v3, Lf/h;->c:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_28

    invoke-virtual/range {p0 .. p0}, Lf/a;->a0()V

    :cond_28
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_29

    iget-object v2, v1, Lf/a;->c:Lf/i;

    invoke-static {v0, v8, v2}, Ll/l;->f(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf/a;->l0(I)V

    invoke-virtual {v1, v0}, Lf/a;->Z(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v0

    :cond_29
    :try_start_7
    iget-object v0, v1, Lf/a;->c:Lf/i;

    invoke-virtual {v0, v8}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lg/o;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-class v4, Lg/o;

    if-eq v3, v4, :cond_2a

    const-class v4, Lg/d2;

    if-eq v3, v4, :cond_2a

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lf/a;->l0(I)V

    goto :goto_13

    :cond_2a
    instance-of v3, v0, Lg/h1;

    if-eqz v3, :cond_2b

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lf/a;->l0(I)V

    :cond_2b
    :goto_13
    invoke-interface {v0, v1, v8, v2}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v0

    :cond_2c
    const/4 v13, 0x0

    :try_start_8
    const-string v11, "$ref"

    if-ne v15, v11, :cond_3a

    if-eqz v6, :cond_3a

    if-eqz v0, :cond_2d

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_3a

    :cond_2d
    sget-object v11, Lf/b;->q:Lf/b;

    invoke-interface {v5, v11}, Lf/c;->D(Lf/b;)Z

    move-result v11

    if-nez v11, :cond_3a

    const/4 v11, 0x4

    invoke-interface {v5, v11}, Lf/c;->x(I)V

    invoke-interface {v5}, Lf/c;->M()I

    move-result v7

    if-ne v7, v11, :cond_39

    invoke-interface {v5}, Lf/c;->H()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    invoke-interface {v5, v8}, Lf/c;->x(I)V

    invoke-interface {v5}, Lf/c;->M()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_2e

    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/16 v11, 0x10

    goto/16 :goto_2

    :cond_2e
    const-string v0, "@"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v1, Lf/a;->g:Lf/h;

    if-eqz v0, :cond_37

    iget-object v2, v0, Lf/h;->a:Ljava/lang/Object;

    instance-of v3, v2, [Ljava/lang/Object;

    if-nez v3, :cond_30

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2f

    goto :goto_15

    :cond_2f
    iget-object v0, v0, Lf/h;->b:Lf/h;

    if-eqz v0, :cond_37

    iget-object v8, v0, Lf/h;->a:Ljava/lang/Object;

    goto :goto_19

    :cond_30
    :goto_15
    move-object v8, v2

    goto :goto_19

    :cond_31
    const-string v0, ".."

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, v6, Lf/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_32

    move-object v8, v0

    goto :goto_19

    :cond_32
    new-instance v0, Lf/a$a;

    invoke-direct {v0, v6, v7}, Lf/a$a;-><init>(Lf/h;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lf/a;->f(Lf/a$a;)V

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v1, v0}, Lf/a;->l0(I)V

    goto :goto_18

    :cond_33
    const-string v0, "$"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object v0, v6

    :goto_17
    iget-object v2, v0, Lf/h;->b:Lf/h;

    if-eqz v2, :cond_34

    move-object v0, v2

    goto :goto_17

    :cond_34
    iget-object v2, v0, Lf/h;->a:Ljava/lang/Object;

    if-eqz v2, :cond_35

    goto :goto_15

    :cond_35
    new-instance v2, Lf/a$a;

    invoke-direct {v2, v0, v7}, Lf/a$a;-><init>(Lf/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lf/a;->f(Lf/a$a;)V

    const/4 v0, 0x1

    goto :goto_16

    :cond_36
    new-instance v0, Lf/a$a;

    invoke-direct {v0, v6, v7}, Lf/a$a;-><init>(Lf/h;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lf/a;->f(Lf/a$a;)V

    const/4 v0, 0x1

    goto :goto_16

    :cond_37
    :goto_18
    const/4 v8, 0x0

    :goto_19
    invoke-interface {v5}, Lf/c;->M()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_38

    const/16 v0, 0x10

    invoke-interface {v5, v0}, Lf/c;->x(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v8

    :cond_38
    :try_start_9
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->M()I

    move-result v3

    invoke-static {v3}, Lf/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    const/4 v11, 0x4

    const/16 v16, 0x1

    if-nez v14, :cond_3d

    iget-object v11, v1, Lf/a;->g:Lf/h;

    if-eqz v11, :cond_3b

    iget-object v13, v11, Lf/h;->c:Ljava/lang/Object;

    if-ne v2, v13, :cond_3b

    iget-object v13, v11, Lf/h;->a:Ljava/lang/Object;

    if-ne v0, v13, :cond_3b

    move-object v6, v11

    goto :goto_1a

    :cond_3b
    invoke-virtual/range {p0 .. p2}, Lf/a;->f0(Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    move-result-object v11

    if-nez v6, :cond_3c

    move-object v6, v11

    :cond_3c
    const/4 v14, 0x1

    :cond_3d
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v13, Lc/e;

    if-ne v11, v13, :cond_3e

    if-nez v15, :cond_3e

    const-string v15, "null"

    :cond_3e
    const/16 v11, 0x22

    if-ne v7, v11, :cond_41

    invoke-interface {v5}, Lf/c;->k()V

    invoke-interface {v5}, Lf/c;->H()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lf/b;->g:Lf/b;

    invoke-interface {v5, v8}, Lf/c;->D(Lf/b;)Z

    move-result v8

    if-eqz v8, :cond_40

    new-instance v8, Lf/f;

    invoke-direct {v8, v7}, Lf/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lf/f;->c1()Z

    move-result v11

    if-eqz v11, :cond_3f

    invoke-virtual {v8}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    :cond_3f
    invoke-virtual {v8}, Lf/d;->close()V

    :cond_40
    :goto_1b
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_41
    const/16 v11, 0x30

    if-lt v7, v11, :cond_42

    const/16 v11, 0x39

    if-le v7, v11, :cond_43

    :cond_42
    const/16 v11, 0x2d

    if-ne v7, v11, :cond_47

    :cond_43
    invoke-interface {v5}, Lf/c;->m()V

    invoke-interface {v5}, Lf/c;->M()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_44

    invoke-interface {v5}, Lf/c;->K()Ljava/lang/Number;

    move-result-object v7

    goto :goto_1b

    :cond_44
    sget-object v7, Lf/b;->i:Lf/b;

    invoke-interface {v5, v7}, Lf/c;->D(Lf/b;)Z

    move-result v7

    invoke-interface {v5, v7}, Lf/c;->b0(Z)Ljava/lang/Number;

    move-result-object v7

    goto :goto_1b

    :goto_1c
    invoke-interface {v5}, Lf/c;->V()V

    invoke-interface {v5}, Lf/c;->S()C

    move-result v8

    const/16 v11, 0x2c

    if-ne v8, v11, :cond_45

    invoke-interface {v5}, Lf/c;->next()C

    :goto_1d
    const/16 v8, 0xd

    const/16 v11, 0x10

    goto/16 :goto_23

    :cond_45
    const/16 v2, 0x7d

    if-ne v8, v2, :cond_46

    invoke-interface {v5}, Lf/c;->next()C

    invoke-interface {v5}, Lf/c;->W()V

    invoke-interface {v5}, Lf/c;->nextToken()V

    invoke-virtual {v1, v7, v15}, Lf/a;->f0(Ljava/lang/Object;Ljava/lang/Object;)Lf/h;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v0

    :cond_46
    :try_start_a
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, position at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    const/16 v11, 0x5b

    if-ne v7, v11, :cond_4d

    invoke-interface {v5}, Lf/c;->nextToken()V

    new-instance v7, Lc/b;

    invoke-direct {v7}, Lc/b;-><init>()V

    if-eqz v2, :cond_48

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v11, Ljava/lang/Integer;

    :cond_48
    if-nez v2, :cond_49

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    :cond_49
    invoke-virtual {v1, v7, v15}, Lf/a;->O(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object v9, Lf/b;->r:Lf/b;

    invoke-interface {v5, v9}, Lf/c;->D(Lf/b;)Z

    move-result v9

    if-eqz v9, :cond_4a

    invoke-virtual {v7}, Lc/b;->toArray()[Ljava/lang/Object;

    move-result-object v7

    :cond_4a
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Lf/c;->M()I

    move-result v7

    const/16 v9, 0xd

    if-ne v7, v9, :cond_4b

    invoke-interface {v5}, Lf/c;->nextToken()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v0

    :cond_4b
    :try_start_b
    invoke-interface {v5}, Lf/c;->M()I

    move-result v7

    const/16 v9, 0x10

    if-ne v7, v9, :cond_4c

    goto :goto_1d

    :cond_4c
    new-instance v0, Lc/d;

    invoke-direct {v0, v8}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    const/16 v8, 0x7b

    if-ne v7, v8, :cond_5b

    invoke-interface {v5}, Lf/c;->nextToken()V

    if-eqz v2, :cond_4e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    if-ne v7, v8, :cond_4e

    const/4 v7, 0x1

    goto :goto_1e

    :cond_4e
    const/4 v7, 0x0

    :goto_1e
    sget-object v8, Lf/b;->x:Lf/b;

    invoke-interface {v5, v8}, Lf/c;->D(Lf/b;)Z

    move-result v8

    if-eqz v8, :cond_50

    iget-object v8, v1, Lf/a;->c:Lf/i;

    invoke-virtual {v8, v4}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v8

    check-cast v8, Lg/h1;

    invoke-interface {v5}, Lf/c;->P()I

    move-result v9

    sget-object v11, Lf/b;->p:Lf/b;

    iget v11, v11, Lf/b;->a:I

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f

    invoke-interface {v5}, Lf/c;->P()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Lg/h1;->e(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object v8

    goto :goto_1f

    :cond_4f
    invoke-virtual {v8, v4}, Lg/h1;->b(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v8

    goto :goto_1f

    :cond_50
    new-instance v8, Lc/e;

    sget-object v9, Lf/b;->p:Lf/b;

    invoke-interface {v5, v9}, Lf/c;->D(Lf/b;)Z

    move-result v9

    invoke-direct {v8, v9}, Lc/e;-><init>(Z)V

    :goto_1f
    if-nez v7, :cond_51

    invoke-virtual {v1, v6, v8, v15}, Lf/a;->e0(Lf/h;Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    move-result-object v9

    goto :goto_20

    :cond_51
    const/4 v9, 0x0

    :goto_20
    iget-object v11, v1, Lf/a;->n:Lg/m;

    if-eqz v11, :cond_53

    if-eqz v15, :cond_52

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_21

    :cond_52
    const/4 v11, 0x0

    :goto_21
    iget-object v13, v1, Lf/a;->n:Lg/m;

    invoke-interface {v13, v0, v11}, Lg/m;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-eqz v11, :cond_53

    iget-object v13, v1, Lf/a;->c:Lf/i;

    invoke-virtual {v13, v11}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v13

    invoke-interface {v13, v1, v11, v15}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    const/4 v11, 0x1

    goto :goto_22

    :cond_53
    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_22
    if-nez v11, :cond_54

    invoke-virtual {v1, v8, v15}, Lf/a;->X(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :cond_54
    if-eqz v9, :cond_55

    if-eq v8, v13, :cond_55

    iput-object v0, v9, Lf/h;->a:Ljava/lang/Object;

    :cond_55
    if-eqz v15, :cond_56

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Lf/a;->h(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_56
    invoke-interface {v12, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_57

    invoke-virtual {v1, v13, v15}, Lf/a;->f0(Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    :cond_57
    invoke-interface {v5}, Lf/c;->M()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_58

    invoke-interface {v5}, Lf/c;->nextToken()V

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v0

    :cond_58
    :try_start_c
    invoke-interface {v5}, Lf/c;->M()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5a

    if-eqz v7, :cond_59

    invoke-virtual/range {p0 .. p0}, Lf/a;->a0()V

    goto/16 :goto_1d

    :cond_59
    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    goto/16 :goto_1d

    :cond_5a
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->a0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    invoke-interface {v5}, Lf/c;->nextToken()V

    invoke-virtual/range {p0 .. p0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Lf/c;->M()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5c

    invoke-interface {v5}, Lf/c;->nextToken()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    return-object v0

    :cond_5c
    :try_start_d
    invoke-interface {v5}, Lf/c;->M()I

    move-result v7

    const/16 v11, 0x10

    if-ne v7, v11, :cond_5d

    :goto_23
    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x4

    goto/16 :goto_2

    :cond_5d
    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, position at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lf/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance v0, Lc/d;

    const-string v2, "object key level > 512"

    invoke-direct {v0, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    new-instance v0, Lc/d;

    invoke-direct {v0, v8}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Lc/d;

    invoke-direct {v0, v8}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v6}, Lf/a;->h0(Lf/h;)V

    throw v0
.end method

.method public Z(Ljava/lang/Object;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lf/a;->c:Lf/i;

    invoke-virtual {v1, v0}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v1

    instance-of v2, v1, Lg/o;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lg/o;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget-object v2, p0, Lf/a;->f:Lf/c;

    invoke-interface {v2}, Lf/c;->M()I

    move-result v2

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lf/a;->f:Lf/c;

    invoke-interface {v2}, Lf/c;->M()I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->a0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v2, p0, Lf/a;->f:Lf/c;

    iget-object v4, p0, Lf/a;->b:Lf/j;

    invoke-interface {v2, v4}, Lf/c;->C(Lf/j;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    if-nez v2, :cond_4

    iget-object v6, p0, Lf/a;->f:Lf/c;

    invoke-interface {v6}, Lf/c;->M()I

    move-result v6

    if-ne v6, v4, :cond_3

    iget-object p1, p0, Lf/a;->f:Lf/c;

    invoke-interface {p1, v5}, Lf/c;->x(I)V

    return-void

    :cond_3
    iget-object v6, p0, Lf/a;->f:Lf/c;

    invoke-interface {v6}, Lf/c;->M()I

    move-result v6

    if-ne v6, v5, :cond_4

    iget-object v6, p0, Lf/a;->f:Lf/c;

    sget-object v7, Lf/b;->h:Lf/b;

    invoke-interface {v6, v7}, Lf/c;->D(Lf/b;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Lg/o;->k(Ljava/lang/String;)Lg/l;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v3

    :goto_2
    if-nez v6, :cond_7

    iget-object v6, p0, Lf/a;->f:Lf/c;

    sget-object v7, Lf/b;->j:Lf/b;

    invoke-interface {v6, v7}, Lf/c;->D(Lf/b;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v2, p0, Lf/a;->f:Lf/c;

    invoke-interface {v2}, Lf/c;->Z()V

    invoke-virtual {p0}, Lf/a;->H()Ljava/lang/Object;

    iget-object v2, p0, Lf/a;->f:Lf/c;

    invoke-interface {v2}, Lf/c;->M()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object p1, p0, Lf/a;->f:Lf/c;

    invoke-interface {p1}, Lf/c;->nextToken()V

    return-void

    :cond_6
    new-instance p1, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setter not found, class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", property "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v2, v6, Lg/l;->a:Ll/c;

    iget-object v7, v2, Ll/c;->e:Ljava/lang/Class;

    iget-object v2, v2, Ll/c;->f:Ljava/lang/reflect/Type;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7, v9}, Lf/c;->G(I)V

    sget-object v7, Lh/f0;->a:Lh/f0;

    invoke-virtual {v7, p0, v2, v3}, Lh/f0;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_8
    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_9

    iget-object v2, p0, Lf/a;->f:Lf/c;

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Lf/c;->G(I)V

    invoke-static {p0}, Lh/h1;->f(Lf/a;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_9
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7, v9}, Lf/c;->G(I)V

    sget-object v7, Lh/q0;->a:Lh/q0;

    invoke-virtual {v7, p0, v2, v3}, Lh/q0;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lf/a;->c:Lf/i;

    invoke-virtual {v8, v7, v2}, Lf/i;->m(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v7

    iget-object v8, p0, Lf/a;->f:Lf/c;

    invoke-interface {v7}, Lg/j1;->c()I

    move-result v9

    invoke-interface {v8, v9}, Lf/c;->G(I)V

    invoke-interface {v7, p0, v2, v3}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    invoke-virtual {v6, p1, v2}, Lg/l;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a;->f:Lf/c;

    invoke-interface {v2}, Lf/c;->M()I

    move-result v2

    if-ne v2, v5, :cond_b

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lf/a;->f:Lf/c;

    invoke-interface {v2}, Lf/c;->M()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object p1, p0, Lf/a;->f:Lf/c;

    invoke-interface {p1, v5}, Lf/c;->x(I)V

    return-void
.end method

.method public a0()V
    .locals 3

    iget-object v0, p0, Lf/a;->f:Lf/c;

    sget-object v1, Lf/b;->m:Lf/b;

    invoke-interface {v0, v1}, Lf/c;->D(Lf/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf/a;->g:Lf/h;

    iget-object v0, v0, Lf/h;->b:Lf/h;

    iput-object v0, p0, Lf/a;->g:Lf/h;

    iget v0, p0, Lf/a;->i:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/a;->i:I

    iget-object v1, p0, Lf/a;->h:[Lf/h;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Lf/c;->nextToken()V

    return-void

    :cond_0
    new-instance v1, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lf/g;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", actual "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->M()I

    move-result p1

    invoke-static {p1}, Lf/g;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lf/a;->h:[Lf/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lf/a;->h:[Lf/h;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget v3, p0, Lf/a;->i:I

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v2, Lf/h;->a:Ljava/lang/Object;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->Z()V

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "type not match error"

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lf/c;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lf/c;->nextToken()V

    invoke-interface {v0}, Lf/c;->M()I

    move-result p1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lf/c;->nextToken()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lc/d;

    invoke-direct {p1, v3}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lc/d;

    invoke-direct {p1, v3}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lf/a;->f:Lf/c;

    :try_start_0
    sget-object v1, Lf/b;->b:Lf/b;

    invoke-interface {v0, v1}, Lf/c;->D(Lf/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v3

    invoke-static {v3}, Lf/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-interface {v0}, Lf/c;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lf/c;->close()V

    throw v1
.end method

.method public e0(Lf/h;Ljava/lang/Object;Ljava/lang/Object;)Lf/h;
    .locals 2

    iget-object v0, p0, Lf/a;->f:Lf/c;

    sget-object v1, Lf/b;->m:Lf/b;

    invoke-interface {v0, v1}, Lf/c;->D(Lf/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lf/h;

    invoke-direct {v0, p1, p2, p3}, Lf/h;-><init>(Lf/h;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lf/a;->g:Lf/h;

    invoke-direct {p0, v0}, Lf/a;->e(Lf/h;)V

    iget-object p1, p0, Lf/a;->g:Lf/h;

    return-object p1
.end method

.method public f(Lf/a$a;)V
    .locals 2

    iget-object v0, p0, Lf/a;->j:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lf/a;->j:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lf/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f0(Ljava/lang/Object;Ljava/lang/Object;)Lf/h;
    .locals 2

    iget-object v0, p0, Lf/a;->f:Lf/c;

    sget-object v1, Lf/b;->m:Lf/b;

    invoke-interface {v0, v1}, Lf/c;->D(Lf/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lf/a;->g:Lf/h;

    invoke-virtual {p0, v0, p1, p2}, Lf/a;->e0(Lf/h;Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/Collection;)V
    .locals 4

    iget v0, p0, Lf/a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    sub-int/2addr v0, v1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lf/a;->y()Lf/a$a;

    move-result-object v1

    new-instance v3, Lg/a2;

    invoke-direct {v3, p0, p1, v0}, Lg/a2;-><init>(Lf/a;Ljava/util/List;I)V

    iput-object v3, v1, Lf/a$a;->c:Lg/l;

    iget-object p1, p0, Lf/a;->g:Lf/h;

    iput-object p1, v1, Lf/a$a;->d:Lf/h;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a;->y()Lf/a$a;

    move-result-object v0

    new-instance v1, Lg/a2;

    invoke-direct {v1, p1}, Lg/a2;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lf/a$a;->c:Lg/l;

    iget-object p1, p0, Lf/a;->g:Lf/h;

    iput-object p1, v0, Lf/a$a;->d:Lf/h;

    :goto_0
    invoke-virtual {p0, v2}, Lf/a;->l0(I)V

    :cond_1
    return-void
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lf/a;->i:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lf/a;->h:[Lf/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lf/a;->h:[Lf/h;

    aget-object p1, p1, v0

    iget-object p1, p1, Lf/h;->a:Ljava/lang/Object;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lf/a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lg/a2;

    invoke-direct {v0, p1, p2}, Lg/a2;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a;->y()Lf/a$a;

    move-result-object p1

    iput-object v0, p1, Lf/a$a;->c:Lg/l;

    iget-object p2, p0, Lf/a;->g:Lf/h;

    iput-object p2, p1, Lf/a$a;->d:Lf/h;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf/a;->l0(I)V

    :cond_0
    return-void
.end method

.method public h0(Lf/h;)V
    .locals 2

    iget-object v0, p0, Lf/a;->f:Lf/c;

    sget-object v1, Lf/b;->m:Lf/b;

    invoke-interface {v0, v1}, Lf/c;->D(Lf/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lf/a;->g:Lf/h;

    return-void
.end method

.method public i()Lf/i;
    .locals 1

    iget-object v0, p0, Lf/a;->c:Lf/i;

    return-object v0
.end method

.method public j()Lf/h;
    .locals 1

    iget-object v0, p0, Lf/a;->g:Lf/h;

    return-object v0
.end method

.method public j0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf/a;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lf/a;->e:Ljava/text/DateFormat;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k0(Lg/m;)V
    .locals 0

    iput-object p1, p0, Lf/a;->n:Lg/m;

    return-void
.end method

.method public l()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lf/a;->e:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lf/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lf/a;->f:Lf/c;

    invoke-interface {v2}, Lf/c;->e0()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lf/a;->e:Ljava/text/DateFormat;

    iget-object v1, p0, Lf/a;->f:Lf/c;

    invoke-interface {v1}, Lf/c;->I()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v0, p0, Lf/a;->e:Ljava/text/DateFormat;

    return-object v0
.end method

.method public l0(I)V
    .locals 0

    iput p1, p0, Lf/a;->k:I

    return-void
.end method

.method public m()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf/a;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lf/a;->m:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lf/a;->m:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf/a;->l:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lf/a;->l:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lf/a;->l:Ljava/util/List;

    return-object v0
.end method

.method public x()Lg/m;
    .locals 1

    iget-object v0, p0, Lf/a;->n:Lg/m;

    return-object v0
.end method

.method public y()Lf/a$a;
    .locals 2

    iget-object v0, p0, Lf/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a$a;

    return-object v0
.end method
