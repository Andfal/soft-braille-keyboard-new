.class public final Lq/h;
.super Lq/x;
.source "SourceFile"


# instance fields
.field private final b:Lv/w;

.field private final c:I

.field private final d:Lv/w;

.field private e:Lq/s0;

.field private final f:Lv/v;

.field private final g:Lq/g;

.field private h:Lq/n;

.field private i:Lq/e;


# direct methods
.method public constructor <init>(Lv/w;ILv/w;Lw/e;Lv/v;)V
    .locals 0

    invoke-direct {p0}, Lq/x;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    iput-object p1, p0, Lq/h;->b:Lv/w;

    iput p2, p0, Lq/h;->c:I

    iput-object p3, p0, Lq/h;->d:Lv/w;

    invoke-interface {p4}, Lw/e;->size()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    new-instance p2, Lq/s0;

    invoke-direct {p2, p4}, Lq/s0;-><init>(Lw/e;)V

    :goto_0
    iput-object p2, p0, Lq/h;->e:Lq/s0;

    iput-object p5, p0, Lq/h;->f:Lv/v;

    new-instance p2, Lq/g;

    invoke-direct {p2, p1}, Lq/g;-><init>(Lv/w;)V

    iput-object p2, p0, Lq/h;->g:Lq/g;

    iput-object p3, p0, Lq/h;->h:Lq/n;

    new-instance p1, Lq/e;

    invoke-direct {p1}, Lq/e;-><init>()V

    iput-object p1, p0, Lq/h;->i:Lq/e;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interfaces == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "thisClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 6

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object v0

    invoke-virtual {p1}, Lq/m;->e()Lq/g0;

    move-result-object v1

    invoke-virtual {p1}, Lq/m;->u()Lq/g0;

    move-result-object v2

    invoke-virtual {p1}, Lq/m;->t()Lq/g0;

    move-result-object v3

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    move-result-object v4

    iget-object v5, p0, Lq/h;->b:Lv/w;

    invoke-virtual {v0, v5}, Lq/r0;->u(Lv/w;)Lq/q0;

    iget-object v5, p0, Lq/h;->g:Lq/g;

    invoke-virtual {v5}, Lq/g;->y()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lq/m;->f()Lq/g0;

    move-result-object p1

    iget-object v5, p0, Lq/h;->g:Lq/g;

    invoke-virtual {p1, v5}, Lq/g0;->q(Lq/h0;)V

    iget-object p1, p0, Lq/h;->g:Lq/g;

    invoke-virtual {p1}, Lq/g;->x()Lv/c;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v5, Lq/n;

    invoke-direct {v5, p1}, Lq/n;-><init>(Lv/c;)V

    invoke-virtual {v1, v5}, Lq/g0;->r(Lq/h0;)Lq/h0;

    move-result-object p1

    check-cast p1, Lq/n;

    iput-object p1, p0, Lq/h;->h:Lq/n;

    :cond_0
    iget-object p1, p0, Lq/h;->d:Lv/w;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lq/r0;->u(Lv/w;)Lq/q0;

    :cond_1
    iget-object p1, p0, Lq/h;->e:Lq/s0;

    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Lq/g0;->r(Lq/h0;)Lq/h0;

    move-result-object p1

    check-cast p1, Lq/s0;

    iput-object p1, p0, Lq/h;->e:Lq/s0;

    :cond_2
    iget-object p1, p0, Lq/h;->f:Lv/v;

    if-eqz p1, :cond_3

    invoke-virtual {v4, p1}, Lq/p0;->u(Lv/v;)Lq/o0;

    :cond_3
    iget-object p1, p0, Lq/h;->i:Lq/e;

    invoke-virtual {p1}, Lq/e;->q()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lq/h;->i:Lq/e;

    invoke-virtual {p1}, Lq/e;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lq/h;->i:Lq/e;

    invoke-virtual {v2, p1}, Lq/g0;->r(Lq/h0;)Lq/h0;

    move-result-object p1

    check-cast p1, Lq/e;

    iput-object p1, p0, Lq/h;->i:Lq/e;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lq/h;->i:Lq/e;

    invoke-virtual {v2, p1}, Lq/g0;->q(Lq/h0;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->j:Lq/z;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public e(Lq/m;Lx/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p2 .. p2}, Lx/a;->k()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lq/m;->s()Lq/r0;

    move-result-object v3

    iget-object v4, v0, Lq/h;->b:Lv/w;

    invoke-virtual {v3, v4}, Lq/r0;->s(Lv/w;)I

    move-result v4

    iget-object v5, v0, Lq/h;->d:Lv/w;

    const/4 v6, -0x1

    if-nez v5, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Lq/r0;->s(Lv/w;)I

    move-result v3

    :goto_0
    iget-object v5, v0, Lq/h;->e:Lq/s0;

    invoke-static {v5}, Lq/h0;->i(Lq/h0;)I

    move-result v5

    iget-object v7, v0, Lq/h;->i:Lq/e;

    invoke-virtual {v7}, Lq/e;->q()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lq/h;->i:Lq/e;

    invoke-virtual {v7}, Lq/h0;->h()I

    move-result v7

    :goto_1
    iget-object v9, v0, Lq/h;->f:Lv/v;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lq/m;->r()Lq/p0;

    move-result-object v6

    iget-object v9, v0, Lq/h;->f:Lv/v;

    invoke-virtual {v6, v9}, Lq/p0;->s(Lv/v;)I

    move-result v6

    :goto_2
    iget-object v9, v0, Lq/h;->g:Lq/g;

    invoke-virtual {v9}, Lq/g;->y()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    iget-object v9, v0, Lq/h;->g:Lq/g;

    invoke-virtual {v9}, Lq/h0;->h()I

    move-result v9

    :goto_3
    iget-object v10, v0, Lq/h;->h:Lq/n;

    invoke-static {v10}, Lq/h0;->i(Lq/h0;)I

    move-result v10

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lq/x;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lq/h;->b:Lv/w;

    invoke-virtual {v11}, Lv/w;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_idx:           "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x4

    invoke-interface {v1, v11, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  access_flags:        "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lq/h;->c:I

    invoke-static {v12}, Lu/a;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  superclass_idx:      "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " // "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lq/h;->d:Lv/w;

    const-string v14, "<none>"

    if-nez v13, :cond_4

    move-object v13, v14

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Lv/w;->a()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  interfaces_off:      "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lx/a;->d(ILjava/lang/String;)V

    if-eqz v5, :cond_5

    iget-object v2, v0, Lq/h;->e:Lq/s0;

    invoke-virtual {v2}, Lq/s0;->q()Lw/e;

    move-result-object v2

    invoke-interface {v2}, Lw/e;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v15}, Lw/e;->getType(I)Lw/c;

    move-result-object v8

    invoke-virtual {v8}, Lw/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v1, v11, v8}, Lx/a;->d(ILjava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x4

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  source_file_idx:     "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lq/h;->f:Lv/v;

    if-nez v8, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Lv/v;->a()Ljava/lang/String;

    move-result-object v14

    :goto_6
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-interface {v1, v8, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  annotations_off:     "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_data_off:      "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  static_values_off:   "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lx/a;->d(ILjava/lang/String;)V

    :cond_7
    invoke-interface {v1, v4}, Lx/q;->writeInt(I)V

    iget v2, v0, Lq/h;->c:I

    invoke-interface {v1, v2}, Lx/q;->writeInt(I)V

    invoke-interface {v1, v3}, Lx/q;->writeInt(I)V

    invoke-interface {v1, v5}, Lx/q;->writeInt(I)V

    invoke-interface {v1, v6}, Lx/q;->writeInt(I)V

    invoke-interface {v1, v7}, Lx/q;->writeInt(I)V

    invoke-interface {v1, v9}, Lx/q;->writeInt(I)V

    invoke-interface {v1, v10}, Lx/q;->writeInt(I)V

    return-void
.end method

.method public j(Lq/q;)V
    .locals 1

    iget-object v0, p0, Lq/h;->g:Lq/g;

    invoke-virtual {v0, p1}, Lq/g;->q(Lq/q;)V

    return-void
.end method

.method public k(Lq/o;)V
    .locals 1

    iget-object v0, p0, Lq/h;->g:Lq/g;

    invoke-virtual {v0, p1}, Lq/g;->r(Lq/o;)V

    return-void
.end method

.method public l(Lq/o;Lv/a;)V
    .locals 1

    iget-object v0, p0, Lq/h;->g:Lq/g;

    invoke-virtual {v0, p1, p2}, Lq/g;->s(Lq/o;Lv/a;)V

    return-void
.end method

.method public m(Lq/q;)V
    .locals 1

    iget-object v0, p0, Lq/h;->g:Lq/g;

    invoke-virtual {v0, p1}, Lq/g;->t(Lq/q;)V

    return-void
.end method

.method public n()Lw/e;
    .locals 1

    iget-object v0, p0, Lq/h;->e:Lq/s0;

    if-nez v0, :cond_0

    sget-object v0, Lw/b;->c:Lw/b;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lq/s0;->q()Lw/e;

    move-result-object v0

    return-object v0
.end method

.method public o()Lv/w;
    .locals 1

    iget-object v0, p0, Lq/h;->d:Lv/w;

    return-object v0
.end method

.method public p()Lv/w;
    .locals 1

    iget-object v0, p0, Lq/h;->b:Lv/w;

    return-object v0
.end method
