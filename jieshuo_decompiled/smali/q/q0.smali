.class public final Lq/q0;
.super Lq/w;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lq/w;-><init>(Lv/w;)V

    return-void
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 1

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    move-result-object p1

    invoke-virtual {p0}, Lq/w;->j()Lv/w;

    move-result-object v0

    invoke-virtual {v0}, Lv/w;->h()Lv/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq/p0;->u(Lv/v;)Lq/o0;

    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->f:Lq/z;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public e(Lq/m;Lx/a;)V
    .locals 3

    invoke-virtual {p0}, Lq/w;->j()Lv/w;

    move-result-object v0

    invoke-virtual {v0}, Lv/w;->h()Lv/v;

    move-result-object v0

    invoke-virtual {p1}, Lq/m;->r()Lq/p0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lq/p0;->s(Lv/v;)I

    move-result p1

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/x;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lv/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  descriptor_idx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p2, v1, v0}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lx/q;->writeInt(I)V

    return-void
.end method
