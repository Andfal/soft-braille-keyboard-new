.class public Lw3/z3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/z3;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lw3/z3;->a:Z

    return v0
.end method

.method public b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/m;",
            "Lw3/z2;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p3, :cond_8

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    if-eq p3, v0, :cond_8

    instance-of v1, p3, Lw3/z2;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p4, p1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p4, p1, :cond_2

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p3

    :cond_3
    invoke-virtual {p0}, Lw3/z3;->a()Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_5

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_5

    instance-of v0, p3, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p3, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p3, Ljava/lang/Long;

    if-nez v0, :cond_5

    instance-of v0, p3, Ljava/lang/Float;

    if-nez v0, :cond_5

    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_6

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object p3

    :cond_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2, p3}, Lw3/n1;->I(Lw3/z2;Ljava/lang/Object;)Lw3/n1;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lw3/z3;->c(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object p3
.end method

.method public c(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Lw3/z2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/m;",
            "Lw3/z2;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lw3/z2;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lw3/q1;

    invoke-direct {p1, p2, p3}, Lw3/q1;-><init>(Lw3/z2;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lw3/r1;

    invoke-direct {p1, p2, p3}, Lw3/r1;-><init>(Lw3/z2;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Lw3/t1;

    invoke-direct {p1, p2, p3, p4}, Lw3/t1;-><init>(Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object p1
.end method

.method public d(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;
    .locals 1

    instance-of v0, p3, Lw3/z2;

    if-eqz v0, :cond_0

    check-cast p3, Lw3/z2;

    return-object p3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lw3/n1;->I(Lw3/z2;Ljava/lang/Object;)Lw3/n1;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lw3/z3;->c(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Lw3/z2;

    move-result-object p1

    return-object p1
.end method
