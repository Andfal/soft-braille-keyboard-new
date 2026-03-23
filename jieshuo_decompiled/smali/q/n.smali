.class public final Lq/n;
.super Lq/h0;
.source "SourceFile"


# instance fields
.field private final e:Lv/c;

.field private f:[B


# direct methods
.method public constructor <init>(Lv/c;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lq/h0;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lq/n;->e:Lv/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lq/n;->f:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "array == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 1

    iget-object v0, p0, Lq/n;->e:Lv/c;

    invoke-static {p1, v0}, Lq/v0;->b(Lq/m;Lv/a;)V

    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->t:Lq/z;

    return-object v0
.end method

.method protected g(Lq/h0;)I
    .locals 1

    check-cast p1, Lq/n;

    iget-object v0, p0, Lq/n;->e:Lv/c;

    iget-object p1, p1, Lq/n;->e:Lv/c;

    invoke-virtual {v0, p1}, Lv/a;->d(Lv/a;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lq/n;->e:Lv/c;

    invoke-virtual {v0}, Lv/c;->hashCode()I

    move-result v0

    return v0
.end method

.method protected m(Lq/l0;I)V
    .locals 2

    new-instance p2, Lx/d;

    invoke-direct {p2}, Lx/d;-><init>()V

    new-instance v0, Lq/v0;

    invoke-virtual {p1}, Lq/l0;->e()Lq/m;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lq/v0;-><init>(Lq/m;Lx/a;)V

    iget-object p1, p0, Lq/n;->e:Lv/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lq/v0;->f(Lv/c;Z)V

    invoke-virtual {p2}, Lx/d;->r()[B

    move-result-object p1

    iput-object p1, p0, Lq/n;->f:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lq/h0;->n(I)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq/n;->e:Lv/c;

    invoke-virtual {v0}, Lv/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p(Lq/m;Lx/a;)V
    .locals 2

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/h0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoded array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v0, Lq/v0;

    invoke-direct {v0, p1, p2}, Lq/v0;-><init>(Lq/m;Lx/a;)V

    iget-object p1, p0, Lq/n;->e:Lv/c;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lq/v0;->f(Lv/c;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lq/n;->f:[B

    invoke-interface {p2, p1}, Lx/q;->write([B)V

    :goto_0
    return-void
.end method
