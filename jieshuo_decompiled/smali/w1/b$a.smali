.class final Lw1/b$a;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lt1/t<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lt1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/t<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lv1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt1/e;Ljava/lang/reflect/Type;Lt1/t;Lv1/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/e;",
            "Ljava/lang/reflect/Type;",
            "Lt1/t<",
            "TE;>;",
            "Lv1/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lt1/t;-><init>()V

    new-instance v0, Lw1/m;

    invoke-direct {v0, p1, p3, p2}, Lw1/m;-><init>(Lt1/e;Lt1/t;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lw1/b$a;->a:Lt1/t;

    iput-object p4, p0, Lw1/b$a;->b:Lv1/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw1/b$a;->e(La2/a;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(La2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lw1/b$a;->f(La2/c;Ljava/util/Collection;)V

    return-void
.end method

.method public e(La2/a;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/a;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
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
    iget-object v0, p0, Lw1/b$a;->b:Lv1/i;

    invoke-interface {v0}, Lv1/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, La2/a;->b()V

    :goto_0
    invoke-virtual {p1}, La2/a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw1/b$a;->a:Lt1/t;

    invoke-virtual {v1, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La2/a;->h()V

    return-object v0
.end method

.method public f(La2/c;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/c;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, La2/c;->x()La2/c;

    return-void

    :cond_0
    invoke-virtual {p1}, La2/c;->e()La2/c;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lw1/b$a;->a:Lt1/t;

    invoke-virtual {v1, p1, v0}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La2/c;->h()La2/c;

    return-void
.end method
