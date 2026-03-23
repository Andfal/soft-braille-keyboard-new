.class public final Lq/n0;
.super Lq/h0;
.source "SourceFile"


# instance fields
.field private final e:Lv/v;


# direct methods
.method public constructor <init>(Lv/v;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lq/n0;->q(Lv/v;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lq/h0;-><init>(II)V

    iput-object p1, p0, Lq/n0;->e:Lv/v;

    return-void
.end method

.method private static q(Lv/v;)I
    .locals 1

    invoke-virtual {p0}, Lv/v;->i()I

    move-result v0

    invoke-static {v0}, Lx/n;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lv/v;->j()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 0

    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->q:Lq/z;

    return-object v0
.end method

.method protected g(Lq/h0;)I
    .locals 1

    check-cast p1, Lq/n0;

    iget-object v0, p0, Lq/n0;->e:Lv/v;

    iget-object p1, p1, Lq/n0;->e:Lv/v;

    invoke-virtual {v0, p1}, Lv/a;->d(Lv/a;)I

    move-result p1

    return p1
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq/n0;->e:Lv/v;

    invoke-virtual {v0}, Lv/v;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Lq/m;Lx/a;)V
    .locals 4

    iget-object p1, p0, Lq/n0;->e:Lv/v;

    invoke-virtual {p1}, Lv/v;->g()Lx/c;

    move-result-object p1

    iget-object v0, p0, Lq/n0;->e:Lv/v;

    invoke-virtual {v0}, Lv/v;->i()I

    move-result v0

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lx/n;->a(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "utf16_size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lx/a;->d(ILjava/lang/String;)V

    invoke-virtual {p1}, Lx/c;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lq/n0;->e:Lv/v;

    invoke-virtual {v2}, Lv/v;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lx/q;->i(I)I

    invoke-interface {p2, p1}, Lx/q;->e(Lx/c;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lx/q;->writeByte(I)V

    return-void
.end method
