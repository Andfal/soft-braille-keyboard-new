.class public final Lg/a2;
.super Lg/l;
.source "SourceFile"


# instance fields
.field private final c:I

.field private final d:Ljava/util/List;

.field private final e:Lf/a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lf/a;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lg/l;-><init>(Ljava/lang/Class;Ll/c;)V

    iput-object p1, p0, Lg/a2;->e:Lf/a;

    iput p3, p0, Lg/a2;->c:I

    iput-object p2, p0, Lg/a2;->d:Ljava/util/List;

    iput-object v0, p0, Lg/a2;->f:Ljava/lang/Object;

    iput-object v0, p0, Lg/a2;->g:Ljava/util/Map;

    iput-object v0, p0, Lg/a2;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lg/l;-><init>(Ljava/lang/Class;Ll/c;)V

    iput-object v0, p0, Lg/a2;->e:Lf/a;

    const/4 v1, -0x1

    iput v1, p0, Lg/a2;->c:I

    iput-object v0, p0, Lg/a2;->d:Ljava/util/List;

    iput-object v0, p0, Lg/a2;->f:Ljava/lang/Object;

    iput-object v0, p0, Lg/a2;->g:Ljava/util/Map;

    iput-object p1, p0, Lg/a2;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lg/l;-><init>(Ljava/lang/Class;Ll/c;)V

    iput-object v0, p0, Lg/a2;->e:Lf/a;

    const/4 v1, -0x1

    iput v1, p0, Lg/a2;->c:I

    iput-object v0, p0, Lg/a2;->d:Ljava/util/List;

    iput-object p2, p0, Lg/a2;->f:Ljava/lang/Object;

    iput-object p1, p0, Lg/a2;->g:Ljava/util/Map;

    iput-object v0, p0, Lg/a2;->h:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public c(Lf/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lg/a2;->g:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/a2;->f:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, p0, Lg/a2;->h:Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lg/a2;->d:Ljava/util/List;

    iget v0, p0, Lg/a2;->c:I

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/a2;->d:Ljava/util/List;

    instance-of v0, p1, Lc/b;

    if-eqz v0, :cond_3

    check-cast p1, Lc/b;

    invoke-virtual {p1}, Lc/b;->C()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lg/a2;->c:I

    if-le v1, v2, :cond_3

    invoke-virtual {p1}, Lc/b;->z()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lc/b;->z()Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object v1, p0, Lg/a2;->e:Lf/a;

    invoke-virtual {v1}, Lf/a;->i()Lf/i;

    move-result-object v1

    invoke-static {p2, p1, v1}, Ll/l;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;

    move-result-object p2

    :cond_2
    iget p1, p0, Lg/a2;->c:I

    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
