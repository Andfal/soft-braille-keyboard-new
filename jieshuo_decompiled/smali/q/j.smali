.class public final Lq/j;
.super Lq/h0;
.source "SourceFile"


# instance fields
.field private final e:Lv/s;

.field private final f:Lo/g;

.field private g:Lq/f;

.field private final h:Z

.field private final i:Lw/e;

.field private j:Lq/l;


# direct methods
.method public constructor <init>(Lv/s;Lo/g;ZLw/e;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lq/h0;-><init>(II)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lq/j;->e:Lv/s;

    iput-object p2, p0, Lq/j;->f:Lo/g;

    iput-boolean p3, p0, Lq/j;->h:Z

    iput-object p4, p0, Lq/j;->i:Lw/e;

    const/4 p1, 0x0

    iput-object p1, p0, Lq/j;->g:Lq/f;

    iput-object p1, p0, Lq/j;->j:Lq/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "throwsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ref == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private q()I
    .locals 2

    iget-object v0, p0, Lq/j;->e:Lv/s;

    iget-boolean v1, p0, Lq/j;->h:Z

    invoke-virtual {v0, v1}, Lv/d;->i(Z)I

    move-result v0

    return v0
.end method

.method private r()I
    .locals 1

    iget-object v0, p0, Lq/j;->f:Lo/g;

    invoke-virtual {v0}, Lo/g;->f()Lo/i;

    move-result-object v0

    invoke-virtual {v0}, Lo/i;->r()I

    move-result v0

    return v0
.end method

.method private s()I
    .locals 1

    iget-object v0, p0, Lq/j;->f:Lo/g;

    invoke-virtual {v0}, Lo/g;->f()Lo/i;

    move-result-object v0

    invoke-virtual {v0}, Lo/i;->s()I

    move-result v0

    return v0
.end method

.method private t(Lq/m;Lx/a;)V
    .locals 1

    iget-object p1, p0, Lq/j;->f:Lo/g;

    invoke-virtual {p1}, Lo/g;->f()Lo/i;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p2}, Lo/i;->v(Lx/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while writing instructions for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lq/j;->e:Lv/s;

    invoke-virtual {v0}, Lv/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lx/g;->b(Ljava/lang/Throwable;Ljava/lang/String;)Lx/g;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 6

    invoke-virtual {p1}, Lq/m;->e()Lq/g0;

    move-result-object v0

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object v1

    iget-object v2, p0, Lq/j;->f:Lo/g;

    invoke-virtual {v2}, Lo/g;->k()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lq/j;->f:Lo/g;

    invoke-virtual {v2}, Lo/g;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lq/l;

    iget-object v3, p0, Lq/j;->f:Lo/g;

    iget-boolean v4, p0, Lq/j;->h:Z

    iget-object v5, p0, Lq/j;->e:Lv/s;

    invoke-direct {v2, v3, v4, v5}, Lq/l;-><init>(Lo/g;ZLv/s;)V

    iput-object v2, p0, Lq/j;->j:Lq/l;

    invoke-virtual {v0, v2}, Lq/g0;->q(Lq/h0;)V

    :cond_1
    iget-object v0, p0, Lq/j;->f:Lo/g;

    invoke-virtual {v0}, Lo/g;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lq/j;->f:Lo/g;

    invoke-virtual {v0}, Lo/g;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/c;

    invoke-virtual {v1, v2}, Lq/r0;->v(Lw/c;)Lq/q0;

    goto :goto_0

    :cond_2
    new-instance v0, Lq/f;

    iget-object v1, p0, Lq/j;->f:Lo/g;

    invoke-direct {v0, v1}, Lq/f;-><init>(Lo/g;)V

    iput-object v0, p0, Lq/j;->g:Lq/f;

    :cond_3
    iget-object v0, p0, Lq/j;->f:Lo/g;

    invoke-virtual {v0}, Lo/g;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/a;

    invoke-virtual {p1, v1}, Lq/m;->v(Lv/a;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->p:Lq/z;

    return-object v0
.end method

.method protected m(Lq/l0;I)V
    .locals 1

    invoke-virtual {p1}, Lq/l0;->e()Lq/m;

    move-result-object p1

    iget-object p2, p0, Lq/j;->f:Lo/g;

    new-instance v0, Lq/j$a;

    invoke-direct {v0, p0, p1}, Lq/j$a;-><init>(Lq/j;Lq/m;)V

    invoke-virtual {p2, v0}, Lo/g;->a(Lo/g$a;)V

    iget-object p2, p0, Lq/j;->g:Lq/f;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lq/f;->c(Lq/m;)V

    iget-object p1, p0, Lq/j;->g:Lq/f;

    invoke-virtual {p1}, Lq/f;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lq/j;->f:Lo/g;

    invoke-virtual {p2}, Lo/g;->f()Lo/i;

    move-result-object p2

    invoke-virtual {p2}, Lo/i;->p()I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lq/h0;->n(I)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq/j;->e:Lv/s;

    invoke-virtual {v0}, Lv/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p(Lq/m;Lx/a;)V
    .locals 13

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v0

    invoke-direct {p0}, Lq/j;->s()I

    move-result v1

    invoke-direct {p0}, Lq/j;->r()I

    move-result v2

    invoke-direct {p0}, Lq/j;->q()I

    move-result v3

    iget-object v4, p0, Lq/j;->f:Lo/g;

    invoke-virtual {v4}, Lo/g;->f()Lo/i;

    move-result-object v4

    invoke-virtual {v4}, Lo/i;->p()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Lq/j;->g:Lq/f;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lq/f;->e()I

    move-result v7

    :goto_1
    iget-object v8, p0, Lq/j;->j:Lq/l;

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lq/h0;->h()I

    move-result v8

    :goto_2
    const/4 v9, 0x2

    if-eqz v0, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/h0;->k()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lq/j;->e:Lv/s;

    invoke-virtual {v11}, Lv/r;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  registers_size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ins_size:       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  outs_size:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  tries_size:     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  debug_off:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {p2, v11, v10}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  insns_size:     "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v11, v10}, Lx/a;->d(ILjava/lang/String;)V

    iget-object v10, p0, Lq/j;->i:Lw/e;

    invoke-interface {v10}, Lw/e;->size()I

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  throws "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lq/j;->i:Lw/e;

    invoke-static {v11}, Lw/b;->y(Lw/e;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lx/a;->d(ILjava/lang/String;)V

    :cond_3
    invoke-interface {p2, v1}, Lx/q;->writeShort(I)V

    invoke-interface {p2, v3}, Lx/q;->writeShort(I)V

    invoke-interface {p2, v2}, Lx/q;->writeShort(I)V

    invoke-interface {p2, v7}, Lx/q;->writeShort(I)V

    invoke-interface {p2, v8}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v4}, Lx/q;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Lq/j;->t(Lq/m;Lx/a;)V

    iget-object v1, p0, Lq/j;->g:Lq/f;

    if-eqz v1, :cond_6

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "  padding: 0"

    invoke-interface {p2, v9, v1}, Lx/a;->d(ILjava/lang/String;)V

    :cond_4
    invoke-interface {p2, v6}, Lx/q;->writeShort(I)V

    :cond_5
    iget-object v1, p0, Lq/j;->g:Lq/f;

    invoke-virtual {v1, p1, p2}, Lq/f;->g(Lq/m;Lx/a;)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lq/j;->j:Lq/l;

    if-eqz v0, :cond_7

    const-string v0, "  debug info"

    invoke-interface {p2, v6, v0}, Lx/a;->d(ILjava/lang/String;)V

    iget-object v0, p0, Lq/j;->j:Lq/l;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Lq/l;->q(Lq/m;Lx/a;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
