.class public final Lq/u;
.super Lq/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 0

    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->d:Lq/z;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public e(Lq/m;Lx/a;)V
    .locals 10

    invoke-virtual {p1}, Lq/m;->m()Lq/g0;

    move-result-object v0

    invoke-virtual {v0}, Lq/l0;->f()I

    move-result v0

    invoke-virtual {p1}, Lq/m;->k()Lq/l0;

    move-result-object v1

    invoke-virtual {p1}, Lq/m;->l()Lq/l0;

    move-result-object v2

    invoke-virtual {v1}, Lq/l0;->f()I

    move-result v1

    invoke-virtual {v2}, Lq/l0;->f()I

    move-result v3

    invoke-virtual {v2}, Lq/l0;->n()I

    move-result v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Lq/m;->h()Ln/b;

    move-result-object v2

    invoke-virtual {v2}, Ln/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v4

    const v5, 0x12345678

    const/16 v6, 0x70

    const/16 v7, 0x8

    const/4 v8, 0x4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "magic: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Lv/v;

    invoke-direct {v9, v2}, Lv/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lv/v;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v7, v4}, Lx/a;->d(ILjava/lang/String;)V

    const-string v4, "checksum"

    invoke-interface {p2, v8, v4}, Lx/a;->d(ILjava/lang/String;)V

    const/16 v4, 0x14

    const-string v9, "signature"

    invoke-interface {p2, v4, v9}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file_size:       "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lq/m;->j()I

    move-result v9

    invoke-static {v9}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "header_size:     "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "endian_tag:      "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lx/a;->d(ILjava/lang/String;)V

    const-string v4, "link_size:       0"

    invoke-interface {p2, v8, v4}, Lx/a;->d(ILjava/lang/String;)V

    const-string v4, "link_off:        0"

    invoke-interface {p2, v8, v4}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "map_off:         "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-interface {p2, v9}, Lx/q;->writeByte(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    invoke-interface {p2, v2}, Lx/q;->f(I)V

    invoke-virtual {p1}, Lq/m;->j()I

    move-result v2

    invoke-interface {p2, v2}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v6}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v5}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v7}, Lx/q;->f(I)V

    invoke-interface {p2, v0}, Lx/q;->writeInt(I)V

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lq/p0;->v(Lx/a;)V

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lq/r0;->w(Lx/a;)V

    invoke-virtual {p1}, Lq/m;->o()Lq/k0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lq/k0;->t(Lx/a;)V

    invoke-virtual {p1}, Lq/m;->i()Lq/t;

    move-result-object v0

    invoke-virtual {v0, p2}, Lq/t;->u(Lx/a;)V

    invoke-virtual {p1}, Lq/m;->n()Lq/f0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lq/f0;->u(Lx/a;)V

    invoke-virtual {p1}, Lq/m;->g()Lq/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq/i;->t(Lx/a;)V

    invoke-interface {p2}, Lx/a;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data_size:       "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Lx/a;->d(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data_off:        "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Lx/a;->d(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v3}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v1}, Lx/q;->writeInt(I)V

    return-void
.end method
