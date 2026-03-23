.class public Lr3/b;
.super Lr3/g;
.source "SourceFile"

# interfaces
.implements Lr3/a;


# instance fields
.field private c:Ljava/util/Map;

.field private d:Lr3/j;

.field private e:Lr3/i;


# direct methods
.method constructor <init>(Ls3/b;Lr3/j;Lr3/b;)V
    .locals 4

    invoke-direct {p0, p1, p3}, Lr3/g;-><init>(Ls3/d;Lr3/b;)V

    if-nez p3, :cond_0

    new-instance p3, Lr3/i;

    invoke-direct {p3}, Lr3/i;-><init>()V

    iput-object p3, p0, Lr3/b;->e:Lr3/i;

    goto :goto_0

    :cond_0
    new-instance v0, Lr3/i;

    iget-object p3, p3, Lr3/b;->e:Lr3/i;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ls3/d;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p3, v1}, Lr3/i;-><init>(Lr3/i;[Ljava/lang/String;)V

    iput-object v0, p0, Lr3/b;->e:Lr3/i;

    :goto_0
    iput-object p2, p0, Lr3/b;->d:Lr3/j;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lr3/b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ls3/b;->v()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls3/d;

    invoke-virtual {p2}, Ls3/d;->i()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lr3/b;

    check-cast p2, Ls3/b;

    iget-object v0, p0, Lr3/b;->d:Lr3/j;

    invoke-direct {p3, p2, v0, p0}, Lr3/b;-><init>(Ls3/b;Lr3/j;Lr3/b;)V

    goto :goto_2

    :cond_1
    new-instance p3, Lr3/e;

    check-cast p2, Ls3/c;

    invoke-direct {p3, p2, p0}, Lr3/e;-><init>(Ls3/c;Lr3/b;)V

    :goto_2
    iget-object p2, p0, Lr3/b;->c:Ljava/util/Map;

    invoke-interface {p3}, Lr3/f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lr3/f;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr3/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "no such entry: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)Lr3/a;
    .locals 3

    new-instance v0, Ls3/b;

    invoke-direct {v0, p1}, Ls3/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lr3/b;

    iget-object v2, p0, Lr3/b;->d:Lr3/j;

    invoke-direct {v1, v0, v2, p0}, Lr3/b;-><init>(Ls3/b;Lr3/j;Lr3/b;)V

    invoke-virtual {p0}, Lr3/g;->c()Ls3/d;

    move-result-object v2

    check-cast v2, Ls3/b;

    invoke-virtual {v2, v0}, Ls3/b;->u(Ls3/d;)V

    iget-object v2, p0, Lr3/b;->d:Lr3/j;

    invoke-virtual {v2, v0}, Lr3/j;->a(Ls3/b;)V

    iget-object v0, p0, Lr3/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method e(Lr3/h;)Lr3/c;
    .locals 3

    invoke-virtual {p1}, Lr3/h;->a()Ls3/c;

    move-result-object v0

    new-instance v1, Lr3/e;

    invoke-direct {v1, v0, p0}, Lr3/e;-><init>(Ls3/c;Lr3/b;)V

    invoke-virtual {p0}, Lr3/g;->c()Ls3/d;

    move-result-object v2

    check-cast v2, Ls3/b;

    invoke-virtual {v2, v0}, Ls3/b;->u(Ls3/d;)V

    iget-object v2, p0, Lr3/b;->d:Lr3/j;

    invoke-virtual {v2, p1}, Lr3/j;->b(Lr3/h;)V

    iget-object p1, p0, Lr3/b;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ls3/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public f(Lo3/a;)V
    .locals 1

    invoke-virtual {p0}, Lr3/g;->c()Ls3/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls3/d;->s(Lo3/a;)V

    return-void
.end method
