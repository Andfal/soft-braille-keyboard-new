.class public final Lo/i;
.super Lx/h;
.source "SourceFile"


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lx/h;-><init>(I)V

    iput p2, p0, Lo/i;->c:I

    return-void
.end method

.method public static t(Ljava/util/ArrayList;I)Lo/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/h;",
            ">;I)",
            "Lo/i;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lo/i;

    invoke-direct {v1, v0, p1}, Lo/i;-><init>(II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/h;

    invoke-virtual {v1, p1, v2}, Lo/i;->u(ILo/h;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lx/o;->f()V

    return-object v1
.end method


# virtual methods
.method public p()I
    .locals 1

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lo/i;->q(I)Lo/h;

    move-result-object v0

    invoke-virtual {v0}, Lo/h;->i()I

    move-result v0

    return v0
.end method

.method public q(I)Lo/h;
    .locals 0

    invoke-virtual {p0, p1}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/h;

    return-object p1
.end method

.method public r()I
    .locals 7

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/h;

    instance-of v5, v4, Lo/f;

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move-object v5, v4

    check-cast v5, Lo/f;

    invoke-virtual {v5}, Lo/f;->x()Lv/a;

    move-result-object v5

    instance-of v6, v5, Lv/d;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lo/h;->j()Lo/j;

    move-result-object v4

    invoke-virtual {v4}, Lo/j;->a()I

    move-result v4

    const/16 v6, 0x71

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    check-cast v5, Lv/d;

    invoke-virtual {v5, v4}, Lv/d;->i(Z)I

    move-result v4

    if-le v4, v3, :cond_3

    move v3, v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lo/i;->c:I

    return v0
.end method

.method public u(ILo/h;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx/h;->k(ILjava/lang/Object;)V

    return-void
.end method

.method public v(Lx/a;)V
    .locals 10

    invoke-interface {p1}, Lx/q;->c()I

    move-result v0

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v1

    invoke-interface {p1}, Lx/a;->k()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lx/a;->h()Z

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p0, v4}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/h;

    invoke-virtual {v5}, Lo/h;->b()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v7, "  "

    invoke-interface {p1}, Lx/a;->b()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lo/h;->p(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_2

    :goto_3
    invoke-interface {p1, v6, v5}, Lx/a;->d(ILjava/lang/String;)V

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_3

    const-string v5, ""

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_5
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/h;

    :try_start_0
    invoke-virtual {v2, p1}, Lo/h;->w(Lx/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...while writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lx/g;->b(Ljava/lang/Throwable;Ljava/lang/String;)Lx/g;

    move-result-object p1

    throw p1

    :cond_5
    invoke-interface {p1}, Lx/q;->c()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lo/i;->p()I

    move-result v0

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write length mismatch; expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/i;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but actually wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
