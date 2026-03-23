.class public final Lq/j0;
.super Lq/x;
.source "SourceFile"


# instance fields
.field private final b:Lw/a;

.field private final c:Lv/v;

.field private d:Lq/s0;


# direct methods
.method public constructor <init>(Lw/a;)V
    .locals 1

    invoke-direct {p0}, Lq/x;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lq/j0;->b:Lw/a;

    invoke-static {p1}, Lq/j0;->j(Lw/a;)Lv/v;

    move-result-object v0

    iput-object v0, p0, Lq/j0;->c:Lv/v;

    invoke-virtual {p1}, Lw/a;->d()Lw/b;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lq/s0;

    invoke-direct {v0, p1}, Lq/s0;-><init>(Lw/e;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lq/j0;->d:Lq/s0;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static j(Lw/a;)Lv/v;
    .locals 4

    invoke-virtual {p0}, Lw/a;->d()Lw/b;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lw/a;->e()Lw/c;

    move-result-object p0

    invoke-static {p0}, Lq/j0;->k(Lw/c;)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Lw/b;->getType(I)Lw/c;

    move-result-object v3

    invoke-static {v3}, Lq/j0;->k(Lw/c;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lv/v;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lv/v;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static k(Lw/c;)C
    .locals 1

    invoke-virtual {p0}, Lw/c;->i()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5b

    if-ne p0, v0, :cond_0

    const/16 p0, 0x4c

    :cond_0
    return p0
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 3

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    move-result-object v0

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object v1

    invoke-virtual {p1}, Lq/m;->t()Lq/g0;

    move-result-object p1

    iget-object v2, p0, Lq/j0;->b:Lw/a;

    invoke-virtual {v2}, Lw/a;->e()Lw/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/r0;->v(Lw/c;)Lq/q0;

    iget-object v1, p0, Lq/j0;->c:Lv/v;

    invoke-virtual {v0, v1}, Lq/p0;->u(Lv/v;)Lq/o0;

    iget-object v0, p0, Lq/j0;->d:Lq/s0;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lq/g0;->r(Lq/h0;)Lq/h0;

    move-result-object p1

    check-cast p1, Lq/s0;

    iput-object p1, p0, Lq/j0;->d:Lq/s0;

    :cond_0
    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->g:Lq/z;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public e(Lq/m;Lx/a;)V
    .locals 8

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    move-result-object v0

    iget-object v1, p0, Lq/j0;->c:Lv/v;

    invoke-virtual {v0, v1}, Lq/p0;->s(Lv/v;)I

    move-result v0

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object p1

    iget-object v1, p0, Lq/j0;->b:Lw/a;

    invoke-virtual {v1}, Lw/a;->e()Lw/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lq/r0;->t(Lw/c;)I

    move-result p1

    iget-object v1, p0, Lq/j0;->d:Lq/s0;

    invoke-static {v1}, Lq/h0;->i(Lq/h0;)I

    move-result v1

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lq/j0;->b:Lw/a;

    invoke-virtual {v3}, Lw/a;->e()Lw/c;

    move-result-object v3

    invoke-virtual {v3}, Lw/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proto("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq/j0;->b:Lw/a;

    invoke-virtual {v3}, Lw/a;->d()Lw/b;

    move-result-object v3

    invoke-virtual {v3}, Lx/h;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    if-eqz v6, :cond_0

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v6}, Lw/b;->getType(I)Lw/c;

    move-result-object v7

    invoke-virtual {v7}, Lw/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/x;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  shorty_idx:      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lq/j0;->c:Lv/v;

    invoke-virtual {v4}, Lv/v;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {p2, v4, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  return_type_idx: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq/j0;->b:Lw/a;

    invoke-virtual {v3}, Lw/a;->e()Lw/c;

    move-result-object v3

    invoke-virtual {v3}, Lw/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  parameters_off:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lx/a;->d(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v0}, Lx/q;->writeInt(I)V

    invoke-interface {p2, p1}, Lx/q;->writeInt(I)V

    invoke-interface {p2, v1}, Lx/q;->writeInt(I)V

    return-void
.end method
