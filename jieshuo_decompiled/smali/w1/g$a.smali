.class final Lw1/g$a;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lt1/t<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lt1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/t<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Lt1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/t<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final c:Lv1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lw1/g;


# direct methods
.method public constructor <init>(Lw1/g;Lt1/e;Ljava/lang/reflect/Type;Lt1/t;Ljava/lang/reflect/Type;Lt1/t;Lv1/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/e;",
            "Ljava/lang/reflect/Type;",
            "Lt1/t<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lt1/t<",
            "TV;>;",
            "Lv1/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lw1/g$a;->d:Lw1/g;

    invoke-direct {p0}, Lt1/t;-><init>()V

    new-instance p1, Lw1/m;

    invoke-direct {p1, p2, p4, p3}, Lw1/m;-><init>(Lt1/e;Lt1/t;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lw1/g$a;->a:Lt1/t;

    new-instance p1, Lw1/m;

    invoke-direct {p1, p2, p6, p5}, Lw1/m;-><init>(Lt1/e;Lt1/t;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lw1/g$a;->b:Lt1/t;

    iput-object p7, p0, Lw1/g$a;->c:Lv1/i;

    return-void
.end method

.method private e(Lt1/j;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lt1/j;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lt1/j;->d()Lt1/o;

    move-result-object p1

    invoke-virtual {p1}, Lt1/o;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lt1/o;->n()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lt1/o;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lt1/o;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lt1/o;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lt1/o;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lt1/j;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic b(La2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw1/g$a;->f(La2/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(La2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lw1/g$a;->g(La2/c;Ljava/util/Map;)V

    return-void
.end method

.method public f(La2/a;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/a;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, La2/a;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->i:La2/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La2/a;->H()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lw1/g$a;->c:Lv1/i;

    invoke-interface {v1}, Lv1/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, La2/b;->a:La2/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, La2/a;->b()V

    :goto_0
    invoke-virtual {p1}, La2/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, La2/a;->b()V

    iget-object v0, p0, Lw1/g$a;->a:Lt1/t;

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lw1/g$a;->b:Lt1/t;

    invoke-virtual {v2, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, La2/a;->h()V

    goto :goto_0

    :cond_1
    new-instance p1, Lt1/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lt1/r;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, La2/a;->h()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, La2/a;->c()V

    :goto_1
    invoke-virtual {p1}, La2/a;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lv1/f;->a:Lv1/f;

    invoke-virtual {v0, p1}, Lv1/f;->a(La2/a;)V

    iget-object v0, p0, Lw1/g$a;->a:Lt1/t;

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lw1/g$a;->b:Lt1/t;

    invoke-virtual {v2, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lt1/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lt1/r;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, La2/a;->i()V

    :goto_2
    return-object v1
.end method

.method public g(La2/c;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/c;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, La2/c;->x()La2/c;

    return-void

    :cond_0
    iget-object v0, p0, Lw1/g$a;->d:Lw1/g;

    iget-boolean v0, v0, Lw1/g;->b:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, La2/c;->f()La2/c;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, La2/c;->m(Ljava/lang/String;)La2/c;

    iget-object v1, p0, Lw1/g$a;->b:Lt1/t;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La2/c;->i()La2/c;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lw1/g$a;->a:Lt1/t;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lt1/t;->c(Ljava/lang/Object;)Lt1/j;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lt1/j;->e()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lt1/j;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, La2/c;->e()La2/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    invoke-virtual {p1}, La2/c;->e()La2/c;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt1/j;

    invoke-static {v3, p1}, Lv1/l;->b(Lt1/j;La2/c;)V

    iget-object v3, p0, Lw1/g$a;->b:Lt1/t;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    invoke-virtual {p1}, La2/c;->h()La2/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, La2/c;->h()La2/c;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, La2/c;->f()La2/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt1/j;

    invoke-direct {p0, v3}, Lw1/g$a;->e(Lt1/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, La2/c;->m(Ljava/lang/String;)La2/c;

    iget-object v3, p0, Lw1/g$a;->b:Lt1/t;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, La2/c;->i()La2/c;

    :goto_6
    return-void
.end method
