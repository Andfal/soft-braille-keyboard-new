.class public Lh/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/c0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh/c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ll/c;

.field protected final b:Z

.field protected c:I

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field protected g:Lh/l;

.field private h:Ljava/lang/String;

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field private o:Lh/c0$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ll/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ll/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/c0;->i:Z

    iput-boolean v0, p0, Lh/c0;->j:Z

    iput-boolean v0, p0, Lh/c0;->k:Z

    iput-boolean v0, p0, Lh/c0;->l:Z

    iput-boolean v0, p0, Lh/c0;->m:Z

    iput-object p2, p0, Lh/c0;->a:Ll/c;

    new-instance v1, Lh/l;

    invoke-direct {v1, p1, p2}, Lh/l;-><init>(Ljava/lang/Class;Ll/c;)V

    iput-object v1, p0, Lh/c0;->g:Lh/l;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    const-class v2, Ld/d;

    invoke-static {p1, v2}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Ld/d;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ld/d;->serialzeFeatures()[Lh/g1;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    sget-object v5, Lh/g1;->e:Lh/g1;

    if-ne v4, v5, :cond_0

    iput-boolean v1, p0, Lh/c0;->i:Z

    goto :goto_1

    :cond_0
    sget-object v5, Lh/g1;->f:Lh/g1;

    if-ne v4, v5, :cond_1

    iput-boolean v1, p0, Lh/c0;->j:Z

    goto :goto_1

    :cond_1
    sget-object v5, Lh/g1;->q:Lh/g1;

    if-ne v4, v5, :cond_2

    iput-boolean v1, p0, Lh/c0;->k:Z

    goto :goto_1

    :cond_2
    sget-object v5, Lh/g1;->s:Lh/g1;

    if-ne v4, v5, :cond_3

    iget v4, p0, Lh/c0;->c:I

    iget v5, v5, Lh/g1;->a:I

    or-int/2addr v4, v5

    iput v4, p0, Lh/c0;->c:I

    iput-boolean v1, p0, Lh/c0;->n:Z

    goto :goto_1

    :cond_3
    sget-object v5, Lh/g1;->d:Lh/g1;

    if-ne v4, v5, :cond_4

    iget v4, p0, Lh/c0;->c:I

    iget v5, v5, Lh/g1;->a:I

    or-int/2addr v4, v5

    iput v4, p0, Lh/c0;->c:I

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ll/c;->o()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p2, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh/c0;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ll/c;->d()Ld/b;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lh/g1;->a()I

    move-result v5

    sget v6, Lh/g1;->G:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_3
    invoke-interface {p1}, Ld/b;->format()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh/c0;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    iput-object v3, p0, Lh/c0;->h:Ljava/lang/String;

    :cond_8
    invoke-interface {p1}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_d

    aget-object v6, v3, v5

    sget-object v7, Lh/g1;->e:Lh/g1;

    if-ne v6, v7, :cond_9

    iput-boolean v1, p0, Lh/c0;->i:Z

    goto :goto_5

    :cond_9
    sget-object v7, Lh/g1;->f:Lh/g1;

    if-ne v6, v7, :cond_a

    iput-boolean v1, p0, Lh/c0;->j:Z

    goto :goto_5

    :cond_a
    sget-object v7, Lh/g1;->q:Lh/g1;

    if-ne v6, v7, :cond_b

    iput-boolean v1, p0, Lh/c0;->k:Z

    goto :goto_5

    :cond_b
    sget-object v7, Lh/g1;->s:Lh/g1;

    if-ne v6, v7, :cond_c

    iput-boolean v1, p0, Lh/c0;->n:Z

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    iget v3, p0, Lh/c0;->c:I

    invoke-interface {p1}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object p1

    invoke-static {p1}, Lh/g1;->d([Lh/g1;)I

    move-result p1

    or-int/2addr p1, v3

    iput p1, p0, Lh/c0;->c:I

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p0, Lh/c0;->b:Z

    iget-object p1, p2, Ll/c;->b:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ll/l;->m0(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p2, Ll/c;->b:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ll/l;->l0(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    iput-boolean v0, p0, Lh/c0;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lh/c0;)I
    .locals 1

    iget-object v0, p0, Lh/c0;->a:Ll/c;

    iget-object p1, p1, Lh/c0;->a:Ll/c;

    invoke-virtual {v0, p1}, Ll/c;->a(Ll/c;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh/c0;->a:Ll/c;

    invoke-virtual {v0, p1}, Ll/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lh/c0;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lh/c0;->a:Ll/c;

    iget-object v0, v0, Ll/c;->e:Ljava/lang/Class;

    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lh/c0;->h:Ljava/lang/String;

    sget-object v2, Lc/a;->b:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Lc/a;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh/c0;->a:Ll/c;

    invoke-virtual {v0, p1}, Ll/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-boolean v0, p0, Lh/c0;->m:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ll/l;->p0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lh/c0;

    invoke-virtual {p0, p1}, Lh/c0;->a(Lh/c0;)I

    move-result p1

    return p1
.end method

.method public d(Lh/k0;)V
    .locals 3

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    iget-boolean v0, p1, Lh/f1;->f:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lh/f1;->c:I

    iget-object v1, p0, Lh/c0;->a:Ll/c;

    iget v1, v1, Ll/c;->i:I

    sget-object v2, Lh/g1;->c:Lh/g1;

    invoke-static {v0, v1, v2}, Lh/g1;->b(IILh/g1;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/c0;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/c0;->a:Ll/c;

    iget-object v1, v1, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/c0;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lh/c0;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/c0;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh/c0;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh/c0;->a:Ll/c;

    iget-object v1, v1, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/c0;->f:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lh/c0;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Lh/f1;->write(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lh/k0;Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lh/c0;->o:Lh/c0$a;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Long;

    if-nez v0, :cond_e

    const-class v0, Ljava/lang/Float;

    const-class v3, Ljava/lang/Double;

    if-nez p2, :cond_6

    iget-object v4, p0, Lh/c0;->a:Ll/c;

    iget-object v4, v4, Ll/c;->e:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_0

    const-class v4, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_1

    const-class v4, Ljava/lang/Short;

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    const-class v4, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4

    move-object v4, v0

    goto :goto_0

    :cond_4
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_5

    move-object v4, v3

    goto :goto_0

    :cond_5
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_7

    move-object v4, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :cond_7
    :goto_0
    iget-object v5, p0, Lh/c0;->a:Ll/c;

    invoke-virtual {v5}, Ll/c;->d()Ld/b;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ld/b;->serializeUsing()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_8

    invoke-interface {v5}, Ld/b;->serializeUsing()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/v0;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lh/c0;->l:Z

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lh/c0;->h:Ljava/lang/String;

    if-eqz v5, :cond_c

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_b

    if-ne v4, v3, :cond_9

    goto :goto_1

    :cond_9
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v3, :cond_a

    if-ne v4, v0, :cond_c

    :cond_a
    new-instance v0, Lh/d0;

    iget-object v3, p0, Lh/c0;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Lh/d0;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_1
    new-instance v0, Lh/z;

    iget-object v3, p0, Lh/c0;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Lh/z;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_d

    invoke-virtual {p1, v4}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v0

    :cond_d
    :goto_3
    new-instance v3, Lh/c0$a;

    invoke-direct {v3, v0, v4}, Lh/c0$a;-><init>(Lh/v0;Ljava/lang/Class;)V

    iput-object v3, p0, Lh/c0;->o:Lh/c0$a;

    :cond_e
    iget-object v0, p0, Lh/c0;->o:Lh/c0$a;

    iget-boolean v3, p0, Lh/c0;->k:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lh/c0;->a:Ll/c;

    iget v3, v3, Ll/c;->i:I

    sget-object v4, Lh/g1;->q:Lh/g1;

    iget v4, v4, Lh/g1;->a:I

    or-int/2addr v3, v4

    goto :goto_4

    :cond_f
    iget-object v3, p0, Lh/c0;->a:Ll/c;

    iget v3, v3, Ll/c;->i:I

    :goto_4
    iget v4, p0, Lh/c0;->c:I

    or-int v10, v3, v4

    if-nez p2, :cond_17

    iget-object p2, p1, Lh/k0;->k:Lh/f1;

    iget-object v2, p0, Lh/c0;->a:Ll/c;

    iget-object v2, v2, Ll/c;->e:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_10

    sget v2, Lh/g1;->G:I

    invoke-virtual {p2, v2}, Lh/f1;->i(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p2}, Lh/f1;->O()V

    return-void

    :cond_10
    iget-object v2, v0, Lh/c0$a;->b:Ljava/lang/Class;

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget p1, p0, Lh/c0;->c:I

    sget-object v0, Lh/g1;->j:Lh/g1;

    iget v0, v0, Lh/g1;->a:I

    invoke-virtual {p2, p1, v0}, Lh/f1;->P(II)V

    return-void

    :cond_11
    const-class v3, Ljava/lang/String;

    if-ne v3, v2, :cond_12

    iget p1, p0, Lh/c0;->c:I

    sget-object v0, Lh/g1;->i:Lh/g1;

    iget v0, v0, Lh/g1;->a:I

    invoke-virtual {p2, p1, v0}, Lh/f1;->P(II)V

    return-void

    :cond_12
    if-ne v1, v2, :cond_13

    iget p1, p0, Lh/c0;->c:I

    sget-object v0, Lh/g1;->k:Lh/g1;

    iget v0, v0, Lh/g1;->a:I

    invoke-virtual {p2, p1, v0}, Lh/f1;->P(II)V

    return-void

    :cond_13
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5

    :cond_14
    iget-object v5, v0, Lh/c0$a;->a:Lh/v0;

    sget v0, Lh/g1;->G:I

    invoke-virtual {p2, v0}, Lh/f1;->i(I)Z

    move-result v0

    if-eqz v0, :cond_15

    instance-of v0, v5, Lh/l0;

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lh/f1;->O()V

    return-void

    :cond_15
    const/4 v7, 0x0

    iget-object p2, p0, Lh/c0;->a:Ll/c;

    iget-object v8, p2, Ll/c;->a:Ljava/lang/String;

    iget-object v9, p2, Ll/c;->f:Ljava/lang/reflect/Type;

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void

    :cond_16
    :goto_5
    iget p1, p0, Lh/c0;->c:I

    sget-object v0, Lh/g1;->h:Lh/g1;

    iget v0, v0, Lh/g1;->a:I

    invoke-virtual {p2, p1, v0}, Lh/f1;->P(II)V

    return-void

    :cond_17
    iget-object v1, p0, Lh/c0;->a:Ll/c;

    iget-boolean v1, v1, Ll/c;->q:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lh/c0;->j:Z

    if-eqz v1, :cond_18

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/f1;->S(Ljava/lang/String;)V

    return-void

    :cond_18
    iget-boolean v1, p0, Lh/c0;->i:Z

    if-eqz v1, :cond_19

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/f1;->S(Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, v0, Lh/c0$a;->b:Ljava/lang/Class;

    if-eq v1, v3, :cond_1b

    iget-boolean v3, p0, Lh/c0;->l:Z

    if-eqz v3, :cond_1a

    goto :goto_6

    :cond_1a
    invoke-virtual {p1, v1}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v0

    goto :goto_7

    :cond_1b
    :goto_6
    iget-object v0, v0, Lh/c0$a;->a:Lh/v0;

    :goto_7
    move-object v5, v0

    iget-object v0, p0, Lh/c0;->h:Ljava/lang/String;

    if-eqz v0, :cond_1d

    instance-of v3, v5, Lh/z;

    if-nez v3, :cond_1d

    instance-of v3, v5, Lh/d0;

    if-nez v3, :cond_1d

    instance-of v1, v5, Lh/w;

    if-eqz v1, :cond_1c

    check-cast v5, Lh/w;

    iget-object v0, p0, Lh/c0;->g:Lh/l;

    invoke-interface {v5, p1, p2, v0}, Lh/w;->e(Lh/k0;Ljava/lang/Object;Lh/l;)V

    goto :goto_8

    :cond_1c
    invoke-virtual {p1, p2, v0}, Lh/k0;->K(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    return-void

    :cond_1d
    iget-object v0, p0, Lh/c0;->a:Ll/c;

    iget-boolean v3, v0, Ll/c;->s:Z

    if-eqz v3, :cond_1f

    instance-of v3, v5, Lh/l0;

    if-eqz v3, :cond_1e

    check-cast v5, Lh/l0;

    iget-object v8, v0, Ll/c;->a:Ljava/lang/String;

    iget-object v9, v0, Ll/c;->f:Ljava/lang/reflect/Type;

    const/4 v11, 0x1

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v11}, Lh/l0;->z(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    :cond_1e
    instance-of v3, v5, Lh/r0;

    if-eqz v3, :cond_1f

    check-cast v5, Lh/r0;

    iget-object v8, v0, Ll/c;->a:Ljava/lang/String;

    iget-object v9, v0, Ll/c;->f:Ljava/lang/reflect/Type;

    const/4 v11, 0x1

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v11}, Lh/r0;->q(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    :cond_1f
    iget v3, p0, Lh/c0;->c:I

    sget-object v4, Lh/g1;->p:Lh/g1;

    iget v4, v4, Lh/g1;->a:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_20

    iget-object v3, v0, Ll/c;->e:Ljava/lang/Class;

    if-eq v1, v3, :cond_20

    instance-of v1, v5, Lh/l0;

    if-eqz v1, :cond_20

    check-cast v5, Lh/l0;

    iget-object v8, v0, Ll/c;->a:Ljava/lang/String;

    iget-object v9, v0, Ll/c;->f:Ljava/lang/reflect/Type;

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v11}, Lh/l0;->z(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    :cond_20
    iget-boolean v1, p0, Lh/c0;->n:Z

    if-eqz v1, :cond_23

    iget-object v0, v0, Ll/c;->e:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_21

    if-ne v0, v2, :cond_23

    :cond_21
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x1fffffffffffffL

    cmp-long v4, v0, v2

    if-gtz v4, :cond_22

    const-wide v2, -0x1fffffffffffffL

    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    :cond_22
    invoke-virtual {p1}, Lh/k0;->w()Lh/f1;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/f1;->S(Ljava/lang/String;)V

    return-void

    :cond_23
    iget-object v0, p0, Lh/c0;->a:Ll/c;

    iget-object v8, v0, Ll/c;->a:Ljava/lang/String;

    iget-object v9, v0, Ll/c;->f:Ljava/lang/reflect/Type;

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v5 .. v10}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method
