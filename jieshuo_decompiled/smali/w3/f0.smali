.class public Lw3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/d3;


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Object;",
            "Lw3/a3$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private a(Ljava/lang/Object;ILjava/lang/Object;Lw3/a3$d;)Lw3/a3$c;
    .locals 1

    iget-object v0, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/a3$c;

    if-eqz v0, :cond_3

    sget-object p1, Lw3/a3$d;->d:Lw3/a3$d;

    if-ne p4, p1, :cond_0

    instance-of p1, v0, Lw3/a3$a;

    if-nez p1, :cond_0

    new-instance p1, Lw3/a3$a;

    iget p2, v0, Lw3/a3$c;->b:I

    invoke-virtual {v0}, Lw3/a3$c;->a()I

    move-result p4

    invoke-direct {p1, p3, p2, p4}, Lw3/a3$a;-><init>(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sget-object p1, Lw3/a3$d;->e:Lw3/a3$d;

    if-ne p4, p1, :cond_1

    instance-of p1, v0, Lw3/a3$a;

    if-eqz p1, :cond_1

    new-instance p1, Lw3/a3$c;

    iget p2, v0, Lw3/a3$c;->b:I

    invoke-virtual {v0}, Lw3/a3$c;->a()I

    move-result p4

    invoke-direct {p1, p3, p2, p4}, Lw3/a3$c;-><init>(Ljava/lang/Object;II)V

    :goto_0
    iget-object p2, v0, Lw3/a3$c;->d:Ljava/lang/Object;

    iput-object p2, p1, Lw3/a3$c;->d:Ljava/lang/Object;

    iget-object p2, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    sget-object p1, Lw3/a3$d;->c:Lw3/a3$d;

    if-ne p4, p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    sget-object p3, Lw3/a3$d;->d:Lw3/a3$d;

    const/4 v0, 0x0

    if-ne p4, p3, :cond_4

    new-instance p3, Lw3/a3$a;

    invoke-direct {p3, p1, p2, v0}, Lw3/a3$a;-><init>(Ljava/lang/Object;II)V

    goto :goto_1

    :cond_4
    new-instance p3, Lw3/a3$c;

    invoke-direct {p3, p1, p2, v0}, Lw3/a3$c;-><init>(Ljava/lang/Object;II)V

    :goto_1
    sget-object p1, Lw3/a3$d;->c:Lw3/a3$d;

    if-ne p4, p1, :cond_5

    const/16 p1, 0xd

    invoke-virtual {p3, p1}, Lw3/a3$c;->d(I)V

    :cond_5
    invoke-virtual {p0, p3}, Lw3/f0;->y(Lw3/a3$c;)V

    return-object p3
.end method


# virtual methods
.method public c(Ljava/lang/Object;I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iget-object v0, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/a3$c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lw3/a3$c;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p2

    invoke-virtual {p2}, Lw3/m;->L()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "msg.delete.property.with.configurable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public g(Ljava/lang/Object;I)Lw3/a3$c;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/a3$c;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lw3/a3$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;
    .locals 4

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/a3$c;

    sget-object v2, Lw3/f0$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lw3/a3$a;

    if-nez v2, :cond_4

    return-object v1

    :cond_2
    instance-of v2, v1, Lw3/a3$a;

    if-eqz v2, :cond_4

    return-object v1

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, v0, p3}, Lw3/f0;->a(Ljava/lang/Object;ILjava/lang/Object;Lw3/a3$d;)Lw3/a3$c;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public y(Lw3/a3$c;)V
    .locals 2

    iget-object v0, p1, Lw3/a3$c;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p1, Lw3/a3$c;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lw3/f0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
