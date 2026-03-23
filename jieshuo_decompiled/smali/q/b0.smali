.class public abstract Lq/b0;
.super Lq/w;
.source "SourceFile"


# instance fields
.field private final c:Lv/r;


# direct methods
.method public constructor <init>(Lv/r;)V
    .locals 1

    invoke-virtual {p1}, Lv/r;->g()Lv/w;

    move-result-object v0

    invoke-direct {p0, v0}, Lq/w;-><init>(Lv/w;)V

    iput-object p1, p0, Lq/b0;->c:Lv/r;

    return-void
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 1

    invoke-super {p0, p1}, Lq/w;->a(Lq/m;)V

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    move-result-object p1

    invoke-virtual {p0}, Lq/b0;->k()Lv/r;

    move-result-object v0

    invoke-virtual {v0}, Lv/r;->h()Lv/t;

    move-result-object v0

    invoke-virtual {v0}, Lv/t;->i()Lv/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq/p0;->u(Lv/v;)Lq/o0;

    return-void
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final e(Lq/m;Lx/a;)V
    .locals 7

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object v0

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    move-result-object v1

    iget-object v2, p0, Lq/b0;->c:Lv/r;

    invoke-virtual {v2}, Lv/r;->h()Lv/t;

    move-result-object v2

    invoke-virtual {p0}, Lq/w;->j()Lv/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Lq/r0;->s(Lv/w;)I

    move-result v0

    invoke-virtual {v2}, Lv/t;->i()Lv/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/p0;->s(Lv/v;)I

    move-result v1

    invoke-virtual {p0, p1}, Lq/b0;->l(Lq/m;)I

    move-result p1

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/x;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq/b0;->c:Lv/r;

    invoke-virtual {v3}, Lv/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  class_idx: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/b0;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "  %-10s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  name_idx:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p2, v3, v2}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lx/q;->writeShort(I)V

    invoke-interface {p2, p1}, Lx/q;->writeShort(I)V

    invoke-interface {p2, v1}, Lx/q;->writeInt(I)V

    return-void
.end method

.method public final k()Lv/r;
    .locals 1

    iget-object v0, p0, Lq/b0;->c:Lv/r;

    return-object v0
.end method

.method protected abstract l(Lq/m;)I
.end method

.method protected abstract m()Ljava/lang/String;
.end method
