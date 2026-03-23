.class public Lh/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/j1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lf/a;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x10

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lf/c;->H()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3}, Lf/c;->x(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lf/c;->K()Ljava/lang/Number;

    move-result-object p0

    invoke-interface {v0, v3}, Lf/c;->x(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lf/a;->H()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [C

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    move v1, v4

    goto :goto_1

    :cond_5
    return-object v0

    :cond_6
    new-instance p0, Lc/d;

    const-string v0, "can not cast to char[]"

    invoke-direct {p0, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_2

    :cond_8
    invoke-static {p0}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lh/s;->b(Lf/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
