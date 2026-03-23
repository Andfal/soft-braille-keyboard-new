.class public final Lq/o0;
.super Lq/x;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final b:Lv/v;

.field private c:Lq/n0;


# direct methods
.method public constructor <init>(Lv/v;)V
    .locals 1

    invoke-direct {p0}, Lq/x;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lq/o0;->b:Lv/v;

    const/4 p1, 0x0

    iput-object p1, p0, Lq/o0;->c:Lq/n0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 2

    iget-object v0, p0, Lq/o0;->c:Lq/n0;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lq/m;->q()Lq/g0;

    move-result-object p1

    new-instance v0, Lq/n0;

    iget-object v1, p0, Lq/o0;->b:Lv/v;

    invoke-direct {v0, v1}, Lq/n0;-><init>(Lv/v;)V

    iput-object v0, p0, Lq/o0;->c:Lq/n0;

    invoke-virtual {p1, v0}, Lq/g0;->q(Lq/h0;)V

    :cond_0
    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->e:Lq/z;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lq/o0;

    iget-object v0, p0, Lq/o0;->b:Lv/v;

    iget-object p1, p1, Lq/o0;->b:Lv/v;

    invoke-virtual {v0, p1}, Lv/a;->d(Lv/a;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public e(Lq/m;Lx/a;)V
    .locals 3

    iget-object p1, p0, Lq/o0;->c:Lq/n0;

    invoke-virtual {p1}, Lq/h0;->h()I

    move-result p1

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq/o0;->b:Lv/v;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lv/v;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  string_data_off: "

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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lq/o0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lq/o0;

    iget-object v0, p0, Lq/o0;->b:Lv/v;

    iget-object p1, p1, Lq/o0;->b:Lv/v;

    invoke-virtual {v0, p1}, Lv/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lq/o0;->b:Lv/v;

    invoke-virtual {v0}, Lv/v;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Lv/v;
    .locals 1

    iget-object v0, p0, Lq/o0;->b:Lv/v;

    return-object v0
.end method
