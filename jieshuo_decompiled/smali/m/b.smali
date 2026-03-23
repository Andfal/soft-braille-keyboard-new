.class public final Lm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/p<",
            "**>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lm/n;

.field private d:Z

.field private final e:Lm/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/o<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field private h:Lu/u;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/q<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/n;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lw/b;


# direct methods
.method constructor <init>(Lm/l$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/b;->f:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm/b;->g:Ljava/util/List;

    sget-object v1, Lu/u;->d:Lu/u;

    iput-object v1, p0, Lm/b;->h:Lu/u;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm/b;->i:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm/b;->j:Ljava/util/List;

    sget-object v1, Lw/b;->c:Lw/b;

    iput-object v1, p0, Lm/b;->k:Lw/b;

    iget-object v1, p1, Lm/l$b;->a:Lm/p;

    iput-object v1, p0, Lm/b;->a:Lm/p;

    invoke-virtual {p1}, Lm/l$b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lm/b;->e:Lm/o;

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lm/p;->a:Lm/q;

    invoke-static {p0, p1}, Lm/o;->a(Lm/b;Lm/q;)Lm/o;

    move-result-object p1

    iput-object p1, p0, Lm/b;->e:Lm/o;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, v1, Lm/p;->d:Lm/r;

    iget-object p1, p1, Lm/r;->a:[Lm/q;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lm/b;->f:Ljava/util/List;

    invoke-static {p0, v2}, Lm/o;->a(Lm/b;Lm/q;)Lm/o;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lm/n;

    invoke-direct {p1}, Lm/n;-><init>()V

    iput-object p1, p0, Lm/b;->c:Lm/n;

    invoke-direct {p0, p1}, Lm/b;->c(Lm/n;)V

    iget-object p1, p0, Lm/b;->c:Lm/n;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lm/n;->c:Z

    return-void
.end method

.method private D(Lm/n;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/n;",
            "Ljava/util/List<",
            "Lm/n;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lm/n;

    invoke-direct {v0}, Lm/n;-><init>()V

    invoke-direct {p0, v0}, Lm/b;->c(Lm/n;)V

    iget-object v1, p0, Lm/b;->c:Lm/n;

    iput-object v0, v1, Lm/n;->e:Lm/n;

    iput-object p1, v1, Lm/n;->f:Lm/n;

    iput-object p2, v1, Lm/n;->d:Ljava/util/List;

    iput-object v0, p0, Lm/b;->c:Lm/n;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lm/n;->c:Z

    return-void
.end method

.method private a(Lu/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm/b;->b(Lu/f;Lm/n;)V

    return-void
.end method

.method private b(Lu/f;Lm/n;)V
    .locals 4

    iget-object v0, p0, Lm/b;->c:Lm/n;

    if-eqz v0, :cond_a

    iget-boolean v1, v0, Lm/n;->c:Z

    if-eqz v1, :cond_a

    iget-object v0, v0, Lm/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lu/f;->h()Lu/r;

    move-result-object p1

    invoke-virtual {p1}, Lu/r;->b()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "unexpected branch: "

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    const-string v3, "branch == null"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lm/b;->j:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2, p1}, Lm/b;->D(Lm/n;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lm/b;->D(Lm/n;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Lm/b;->c:Lm/n;

    iput-object p2, p1, Lm/n;->e:Lm/n;

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez p2, :cond_7

    :goto_0
    iput-object v2, p0, Lm/b;->c:Lm/n;

    :goto_1
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-nez p2, :cond_9

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lm/n;)V
    .locals 1

    iget-object v0, p1, Lm/n;->b:Lm/b;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    iput-object p0, p1, Lm/n;->b:Lm/b;

    iget-object v0, p0, Lm/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot adopt label; it belongs to another Code"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lm/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/n;

    invoke-virtual {v2}, Lm/n;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lm/n;->a()V

    add-int/lit8 v3, v1, 0x1

    iput v1, v2, Lm/n;->g:I

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(Lm/o;Lm/q;)Lm/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/o<",
            "*>;",
            "Lm/q<",
            "TT;>;)",
            "Lm/o<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p1, Lm/o;->b:Lm/q;

    invoke-virtual {v0, p2}, Lm/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " but was "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lm/o;->b:Lm/q;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static i(Lm/o;[Lm/o;)Lu/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/o<",
            "*>;[",
            "Lm/o<",
            "*>;)",
            "Lu/p;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lu/p;

    array-length v3, p1

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Lu/p;-><init>(I)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm/o;->e()Lu/n;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lu/p;->u(ILu/n;)V

    :cond_1
    :goto_1
    array-length p0, p1

    if-ge v0, p0, :cond_2

    add-int p0, v0, v1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lm/o;->e()Lu/n;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lu/p;->u(ILu/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private j(Lw/c;Lw/c;)Lu/r;
    .locals 2

    invoke-virtual {p1}, Lw/c;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lw/c;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lu/t;->v1:Lu/r;

    return-object p1

    :cond_1
    sget-object p1, Lu/t;->u1:Lu/r;

    return-object p1

    :cond_2
    sget-object p1, Lu/t;->t1:Lu/r;

    return-object p1

    :cond_3
    :goto_0
    invoke-static {p2, p1}, Lu/t;->c(Lw/d;Lw/d;)Lu/r;

    move-result-object p1

    return-object p1
.end method

.method private varargs o(Lu/r;Lm/p;Lm/o;Lm/o;[Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/r;",
            "Lm/p<",
            "TD;TR;>;",
            "Lm/o<",
            "-TR;>;",
            "Lm/o<",
            "+TD;>;[",
            "Lm/o<",
            "*>;)V"
        }
    .end annotation

    new-instance v6, Lu/v;

    iget-object v2, p0, Lm/b;->h:Lu/u;

    invoke-static {p4, p5}, Lm/b;->i(Lm/o;[Lm/o;)Lu/p;

    move-result-object v3

    iget-object v4, p0, Lm/b;->k:Lw/b;

    iget-object v5, p2, Lm/p;->f:Lv/s;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lu/v;-><init>(Lu/r;Lu/u;Lu/p;Lw/e;Lv/a;)V

    invoke-direct {p0, v6}, Lm/b;->a(Lu/f;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lm/b;->x(Lm/o;Z)V

    :cond_0
    return-void
.end method

.method private x(Lm/o;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/o<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p1, Lm/o;->b:Lm/q;

    iget-object p2, p2, Lm/q;->b:Lw/c;

    invoke-static {p2}, Lu/t;->q(Lw/d;)Lu/r;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lm/o;->b:Lm/q;

    iget-object p2, p2, Lm/q;->b:Lw/c;

    invoke-static {p2}, Lu/t;->p(Lw/d;)Lu/r;

    move-result-object p2

    :goto_0
    new-instance v0, Lu/k;

    iget-object v1, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p1}, Lm/o;->e()Lu/n;

    move-result-object p1

    sget-object v2, Lu/p;->c:Lu/p;

    invoke-direct {v0, p2, v1, p1, v2}, Lu/k;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    invoke-direct {p0, v0}, Lm/b;->a(Lu/f;)V

    return-void
.end method


# virtual methods
.method A()I
    .locals 3

    iget-object v0, p0, Lm/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/o;

    invoke-virtual {v2}, Lm/o;->d()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public B(Lm/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/o<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p1, Lm/o;->b:Lm/q;

    iget-object v1, p0, Lm/b;->a:Lm/p;

    iget-object v1, v1, Lm/p;->b:Lm/q;

    invoke-virtual {v0, v1}, Lm/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lu/k;

    iget-object v1, p1, Lm/o;->b:Lm/q;

    iget-object v1, v1, Lm/q;->b:Lw/c;

    invoke-static {v1}, Lu/t;->t(Lw/d;)Lu/r;

    move-result-object v1

    iget-object v2, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p1}, Lm/o;->e()Lu/n;

    move-result-object p1

    invoke-static {p1}, Lu/p;->r(Lu/n;)Lu/p;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lu/k;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    invoke-direct {p0, v0}, Lm/b;->a(Lu/f;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm/b;->a:Lm/p;

    iget-object v2, v2, Lm/p;->b:Lm/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lm/o;->b:Lm/q;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C()V
    .locals 5

    iget-object v0, p0, Lm/b;->a:Lm/p;

    iget-object v0, v0, Lm/p;->b:Lm/q;

    sget-object v1, Lm/q;->l:Lm/q;

    invoke-virtual {v0, v1}, Lm/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lu/k;

    sget-object v1, Lu/t;->w1:Lu/r;

    iget-object v2, p0, Lm/b;->h:Lu/u;

    const/4 v3, 0x0

    sget-object v4, Lu/p;->c:Lu/p;

    invoke-direct {v0, v1, v2, v3, v4}, Lu/k;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    invoke-direct {p0, v0}, Lm/b;->a(Lu/f;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm/b;->a:Lm/p;

    iget-object v2, v2, Lm/p;->b:Lm/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but returned void"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method E()Lu/c;
    .locals 3

    iget-boolean v0, p0, Lm/b;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm/b;->n()V

    :cond_0
    invoke-direct {p0}, Lm/b;->f()V

    new-instance v0, Lu/c;

    iget-object v1, p0, Lm/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lu/c;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lm/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lm/b;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/n;

    invoke-virtual {v2}, Lm/n;->c()Lu/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/c;->A(ILu/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Lm/o;Lm/o;Lm/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/o<",
            "*>;",
            "Lm/o<",
            "Ljava/lang/Integer;",
            ">;",
            "Lm/o<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lu/w;

    iget-object v1, p3, Lm/o;->b:Lm/q;

    iget-object v1, v1, Lm/q;->b:Lw/c;

    invoke-static {v1}, Lu/t;->a(Lw/d;)Lu/r;

    move-result-object v1

    iget-object v2, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p3}, Lm/o;->e()Lu/n;

    move-result-object p3

    invoke-virtual {p1}, Lm/o;->e()Lu/n;

    move-result-object p1

    invoke-virtual {p2}, Lm/o;->e()Lu/n;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lu/p;->t(Lu/n;Lu/n;Lu/n;)Lu/p;

    move-result-object p1

    iget-object p2, p0, Lm/b;->k:Lw/b;

    invoke-direct {v0, v1, v2, p1, p2}, Lu/w;-><init>(Lu/r;Lu/u;Lu/p;Lw/e;)V

    invoke-direct {p0, v0}, Lm/b;->a(Lu/f;)V

    return-void
.end method

.method public e(Lm/o;Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/o<",
            "*>;",
            "Lm/o<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lm/o;->b()Lm/q;

    move-result-object v0

    iget-object v0, v0, Lm/q;->b:Lw/c;

    invoke-virtual {v0}, Lw/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lu/v;

    sget-object v2, Lu/t;->h2:Lu/r;

    iget-object v3, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p2}, Lm/o;->e()Lu/n;

    move-result-object p2

    invoke-static {p2}, Lu/p;->r(Lu/n;)Lu/p;

    move-result-object v4

    iget-object v5, p0, Lm/b;->k:Lw/b;

    iget-object p2, p1, Lm/o;->b:Lm/q;

    iget-object v6, p2, Lm/q;->c:Lv/w;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lu/v;-><init>(Lu/r;Lu/u;Lu/p;Lw/e;Lv/a;)V

    invoke-direct {p0, v0}, Lm/b;->a(Lu/f;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lm/b;->x(Lm/o;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lu/k;

    iget-object v1, p2, Lm/o;->b:Lm/q;

    iget-object v1, v1, Lm/q;->b:Lw/c;

    iget-object v2, p1, Lm/o;->b:Lm/q;

    iget-object v2, v2, Lm/q;->b:Lw/c;

    invoke-direct {p0, v1, v2}, Lm/b;->j(Lw/c;Lw/c;)Lu/r;

    move-result-object v1

    iget-object v2, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p1}, Lm/o;->e()Lu/n;

    move-result-object p1

    invoke-virtual {p2}, Lm/o;->e()Lu/n;

    move-result-object p2

    invoke-direct {v0, v1, v2, p1, p2}, Lu/k;-><init>(Lu/r;Lu/u;Lu/n;Lu/n;)V

    invoke-direct {p0, v0}, Lm/b;->a(Lu/f;)V

    :goto_0
    return-void
.end method

.method public h(Lm/d;Lm/n;Lm/o;Lm/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/d;",
            "Lm/n;",
            "Lm/o<",
            "TT;>;",
            "Lm/o<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lm/b;->c(Lm/n;)V

    iget-object v0, p3, Lm/o;->b:Lm/q;

    iget-object v0, v0, Lm/q;->b:Lw/c;

    iget-object v1, p4, Lm/o;->b:Lm/q;

    iget-object v1, v1, Lm/q;->b:Lw/c;

    invoke-static {v0, v1}, Lw/b;->u(Lw/c;Lw/c;)Lw/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/d;->a(Lw/e;)Lu/r;

    move-result-object p1

    new-instance v0, Lu/k;

    iget-object v1, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p3}, Lm/o;->e()Lu/n;

    move-result-object p3

    invoke-virtual {p4}, Lm/o;->e()Lu/n;

    move-result-object p4

    invoke-static {p3, p4}, Lu/p;->s(Lu/n;Lu/n;)Lu/p;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {v0, p1, v1, p4, p3}, Lu/k;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    invoke-direct {p0, v0, p2}, Lm/b;->b(Lu/f;Lm/n;)V

    return-void
.end method

.method public k(ILm/q;)Lm/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lm/q<",
            "TT;>;)",
            "Lm/o<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lm/b;->e:Lm/o;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lm/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/o;

    invoke-direct {p0, p1, p2}, Lm/b;->g(Lm/o;Lm/q;)Lm/o;

    move-result-object p1

    return-object p1
.end method

.method public l(Lm/q;)Lm/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/q<",
            "TT;>;)",
            "Lm/o<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lm/b;->e:Lm/o;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lm/b;->g(Lm/o;Lm/q;)Lm/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "static methods cannot access \'this\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lm/m;Lm/o;Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/m<",
            "TD;TV;>;",
            "Lm/o<",
            "TV;>;",
            "Lm/o<",
            "TD;>;)V"
        }
    .end annotation

    new-instance v6, Lu/v;

    iget-object v0, p2, Lm/o;->b:Lm/q;

    iget-object v0, v0, Lm/q;->b:Lw/c;

    invoke-static {v0}, Lu/t;->d(Lw/d;)Lu/r;

    move-result-object v1

    iget-object v2, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p3}, Lm/o;->e()Lu/n;

    move-result-object p3

    invoke-static {p3}, Lu/p;->r(Lu/n;)Lu/p;

    move-result-object v3

    iget-object v4, p0, Lm/b;->k:Lw/b;

    iget-object v5, p1, Lm/m;->e:Lv/j;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lu/v;-><init>(Lu/r;Lu/u;Lu/p;Lw/e;Lv/a;)V

    invoke-direct {p0, v6}, Lm/b;->a(Lu/f;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lm/b;->x(Lm/o;Z)V

    return-void
.end method

.method n()V
    .locals 13

    iget-boolean v0, p0, Lm/b;->d:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/b;->d:Z

    iget-object v0, p0, Lm/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/o;

    invoke-virtual {v3, v2}, Lm/o;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lm/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm/o;

    sub-int v6, v4, v2

    invoke-static {v6}, Lv/l;->k(I)Lv/l;

    move-result-object v12

    invoke-virtual {v5, v4}, Lm/o;->c(I)I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Lu/j;

    iget-object v7, v5, Lm/o;->b:Lm/q;

    iget-object v7, v7, Lm/q;->b:Lw/c;

    invoke-static {v7}, Lu/t;->o(Lw/d;)Lu/r;

    move-result-object v8

    iget-object v9, p0, Lm/b;->h:Lu/u;

    invoke-virtual {v5}, Lm/o;->e()Lu/n;

    move-result-object v10

    sget-object v11, Lu/p;->c:Lu/p;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lu/j;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;Lv/a;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lm/b;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/n;

    iget-object v2, v2, Lm/n;->a:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public varargs p(Lm/p;Lm/o;Lm/o;[Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/p<",
            "TD;TR;>;",
            "Lm/o<",
            "-TR;>;",
            "Lm/o<",
            "+TD;>;[",
            "Lm/o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/p;->c(Z)Lw/a;

    move-result-object v0

    invoke-static {v0}, Lu/t;->k(Lw/a;)Lu/r;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lm/b;->o(Lu/r;Lm/p;Lm/o;Lm/o;[Lm/o;)V

    return-void
.end method

.method public varargs q(Lm/p;Lm/o;[Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/p<",
            "*TR;>;",
            "Lm/o<",
            "-TR;>;[",
            "Lm/o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/p;->c(Z)Lw/a;

    move-result-object v0

    invoke-static {v0}, Lu/t;->l(Lw/a;)Lu/r;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lm/b;->o(Lu/r;Lm/p;Lm/o;Lm/o;[Lm/o;)V

    return-void
.end method

.method public varargs r(Lm/p;Lm/o;Lm/o;[Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/p<",
            "TD;TR;>;",
            "Lm/o<",
            "-TR;>;",
            "Lm/o<",
            "+TD;>;[",
            "Lm/o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/p;->c(Z)Lw/a;

    move-result-object v0

    invoke-static {v0}, Lu/t;->m(Lw/a;)Lu/r;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lm/b;->o(Lu/r;Lm/p;Lm/o;Lm/o;[Lm/o;)V

    return-void
.end method

.method public varargs s(Lm/p;Lm/o;Lm/o;[Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/p<",
            "TD;TR;>;",
            "Lm/o<",
            "-TR;>;",
            "Lm/o<",
            "+TD;>;[",
            "Lm/o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/p;->c(Z)Lw/a;

    move-result-object v0

    invoke-static {v0}, Lu/t;->n(Lw/a;)Lu/r;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lm/b;->o(Lu/r;Lm/p;Lm/o;Lm/o;[Lm/o;)V

    return-void
.end method

.method public t(Lm/m;Lm/o;Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/m<",
            "TD;TV;>;",
            "Lm/o<",
            "TD;>;",
            "Lm/o<",
            "TV;>;)V"
        }
    .end annotation

    new-instance v6, Lu/v;

    iget-object v0, p3, Lm/o;->b:Lm/q;

    iget-object v0, v0, Lm/q;->b:Lw/c;

    invoke-static {v0}, Lu/t;->s(Lw/d;)Lu/r;

    move-result-object v1

    iget-object v2, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p3}, Lm/o;->e()Lu/n;

    move-result-object p3

    invoke-virtual {p2}, Lm/o;->e()Lu/n;

    move-result-object p2

    invoke-static {p3, p2}, Lu/p;->s(Lu/n;Lu/n;)Lu/p;

    move-result-object v3

    iget-object v4, p0, Lm/b;->k:Lw/b;

    iget-object v5, p1, Lm/m;->e:Lv/j;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lu/v;-><init>(Lu/r;Lu/u;Lu/p;Lw/e;Lv/a;)V

    invoke-direct {p0, v6}, Lm/b;->a(Lu/f;)V

    return-void
.end method

.method public u(Lm/n;)V
    .locals 5

    invoke-direct {p0, p1}, Lm/b;->c(Lm/n;)V

    new-instance v0, Lu/k;

    sget-object v1, Lu/t;->s:Lu/r;

    iget-object v2, p0, Lm/b;->h:Lu/u;

    const/4 v3, 0x0

    sget-object v4, Lu/p;->c:Lu/p;

    invoke-direct {v0, v1, v2, v3, v4}, Lu/k;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    invoke-direct {p0, v0, p1}, Lm/b;->b(Lu/f;Lm/n;)V

    return-void
.end method

.method public v(Lm/o;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/o<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object v0, Lu/t;->r:Lu/r;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lm/o;->b:Lm/q;

    iget-object v0, v0, Lm/q;->b:Lw/c;

    invoke-static {v0}, Lu/t;->b(Lw/d;)Lu/r;

    move-result-object v0

    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lu/r;->b()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    new-instance v0, Lu/j;

    iget-object v3, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p1}, Lm/o;->e()Lu/n;

    move-result-object v4

    sget-object v5, Lu/p;->c:Lu/p;

    invoke-static {p2}, Lm/k;->a(Ljava/lang/Object;)Lv/x;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lu/j;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;Lv/a;)V

    invoke-direct {p0, v0}, Lm/b;->a(Lu/f;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lu/v;

    iget-object v3, p0, Lm/b;->h:Lu/u;

    sget-object v4, Lu/p;->c:Lu/p;

    iget-object v5, p0, Lm/b;->k:Lw/b;

    invoke-static {p2}, Lm/k;->a(Ljava/lang/Object;)Lv/x;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lu/v;-><init>(Lu/r;Lu/u;Lu/p;Lw/e;Lv/a;)V

    invoke-direct {p0, v0}, Lm/b;->a(Lu/f;)V

    invoke-direct {p0, p1, v7}, Lm/b;->x(Lm/o;Z)V

    :goto_1
    return-void
.end method

.method public w(Lm/n;)V
    .locals 1

    invoke-direct {p0, p1}, Lm/b;->c(Lm/n;)V

    iget-boolean v0, p1, Lm/n;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lm/n;->c:Z

    iget-object v0, p0, Lm/b;->c:Lm/n;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lm/b;->u(Lm/n;)V

    :cond_0
    iput-object p1, p0, Lm/b;->c:Lm/n;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already marked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Lm/o;Lm/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/o<",
            "TT;>;",
            "Lm/o<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lu/v;

    iget-object v0, p1, Lm/o;->b:Lm/q;

    iget-object v0, v0, Lm/q;->b:Lw/c;

    invoke-static {v0}, Lu/t;->r(Lw/d;)Lu/r;

    move-result-object v1

    iget-object v2, p0, Lm/b;->h:Lu/u;

    invoke-virtual {p2}, Lm/o;->e()Lu/n;

    move-result-object p2

    invoke-static {p2}, Lu/p;->r(Lu/n;)Lu/p;

    move-result-object v3

    iget-object v4, p0, Lm/b;->k:Lw/b;

    iget-object p2, p1, Lm/o;->b:Lm/q;

    iget-object v5, p2, Lm/q;->c:Lv/w;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lu/v;-><init>(Lu/r;Lu/u;Lu/p;Lw/e;Lv/a;)V

    invoke-direct {p0, v6}, Lm/b;->a(Lu/f;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lm/b;->x(Lm/o;Z)V

    return-void
.end method

.method public z(Lm/q;)Lm/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/q<",
            "TT;>;)",
            "Lm/o<",
            "TT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lm/b;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lm/o;->a(Lm/b;Lm/q;)Lm/o;

    move-result-object p1

    iget-object v0, p0, Lm/b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot allocate locals after adding instructions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
