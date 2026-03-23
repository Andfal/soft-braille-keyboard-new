.class public Lw3/q1;
.super Lw3/t1;
.source "SourceFile"


# instance fields
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lw3/t1;-><init>(Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lw3/q1;->k:Ljava/util/List;

    return-void
.end method

.method private I(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lw3/q1;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lw3/j3;->f:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 1

    invoke-direct {p0, p1}, Lw3/q1;->I(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->C(ILw3/z2;)Z

    move-result p1

    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lw3/q1;->I(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lw3/m;->q()Lw3/m;

    move-result-object p2

    iget-object v0, p0, Lw3/q1;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lw3/m;->D()Lw3/z3;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p2, p0, p1, v1}, Lw3/z3;->b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lw3/q1;->I(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lw3/q1;->k:Ljava/util/List;

    const-class v0, Ljava/lang/Object;

    invoke-static {p3, v0}, Lw3/m;->P(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw3/t1;->d(ILw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lw3/t1;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public k(Lw3/i3;Lw3/z2;)Z
    .locals 1

    sget-object v0, Lw3/j3;->f:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->k(Lw3/i3;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "JavaList"

    return-object v0
.end method

.method public r(Ljava/lang/String;Lw3/z2;)Z
    .locals 1

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;
    .locals 1

    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lw3/q1;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
