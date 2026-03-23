.class Lm/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/q<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Lm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/q<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lm/r;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lm/m;",
            "Lm/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lm/p;",
            "Lm/l$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lm/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/q<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lm/l$c;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lm/l$c;->h:Ljava/util/Map;

    iput-object p1, p0, Lm/l$c;->a:Lm/q;

    return-void
.end method

.method static bridge synthetic a(Lm/l$c;)Z
    .locals 0

    iget-boolean p0, p0, Lm/l$c;->b:Z

    return p0
.end method

.method static bridge synthetic b(Lm/l$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lm/l$c;->g:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic c(Lm/l$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lm/l$c;->h:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic d(Lm/l$c;)Lm/q;
    .locals 0

    iget-object p0, p0, Lm/l$c;->d:Lm/q;

    return-object p0
.end method

.method static bridge synthetic e(Lm/l$c;Z)V
    .locals 0

    iput-boolean p1, p0, Lm/l$c;->b:Z

    return-void
.end method

.method static bridge synthetic f(Lm/l$c;I)V
    .locals 0

    iput p1, p0, Lm/l$c;->c:I

    return-void
.end method

.method static bridge synthetic g(Lm/l$c;Lm/r;)V
    .locals 0

    iput-object p1, p0, Lm/l$c;->f:Lm/r;

    return-void
.end method

.method static bridge synthetic h(Lm/l$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lm/l$c;->e:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic i(Lm/l$c;Lm/q;)V
    .locals 0

    iput-object p1, p0, Lm/l$c;->d:Lm/q;

    return-void
.end method


# virtual methods
.method j()Lq/h;
    .locals 8

    iget-boolean v0, p0, Lm/l$c;->b:Z

    if-eqz v0, :cond_4

    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Ln/b;->a:I

    iget-object v1, p0, Lm/l$c;->a:Lm/q;

    iget-object v3, v1, Lm/q;->c:Lv/w;

    new-instance v1, Lq/h;

    iget v4, p0, Lm/l$c;->c:I

    iget-object v2, p0, Lm/l$c;->d:Lm/q;

    iget-object v5, v2, Lm/q;->c:Lv/w;

    iget-object v2, p0, Lm/l$c;->f:Lm/r;

    iget-object v6, v2, Lm/r;->b:Lw/b;

    new-instance v7, Lv/v;

    iget-object v2, p0, Lm/l$c;->e:Ljava/lang/String;

    invoke-direct {v7, v2}, Lv/v;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lq/h;-><init>(Lv/w;ILv/w;Lw/e;Lv/v;)V

    iget-object v2, p0, Lm/l$c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/l$b;

    invoke-virtual {v3, v0}, Lm/l$b;->d(Ln/b;)Lq/q;

    move-result-object v4

    invoke-virtual {v3}, Lm/l$b;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Lq/h;->j(Lq/q;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Lq/h;->m(Lq/q;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm/l$c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/l$a;

    invoke-virtual {v2}, Lm/l$a;->c()Lq/o;

    move-result-object v3

    invoke-virtual {v2}, Lm/l$a;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lm/l$a;->a(Lm/l$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lm/k;->a(Ljava/lang/Object;)Lv/x;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lq/h;->l(Lq/o;Lv/a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Lq/h;->k(Lq/o;)V

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeclared type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm/l$c;->a:Lm/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares members: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm/l$c;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm/l$c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
