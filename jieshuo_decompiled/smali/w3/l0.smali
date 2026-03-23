.class public Lw3/l0;
.super Lw3/c;
.source "SourceFile"


# instance fields
.field private final p:Lw3/k0;

.field private final q:Ljava/lang/Object;

.field private final r:I

.field private s:I

.field private t:Z

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lw3/k0;Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p6, v0}, Lw3/c;-><init>(Lw3/z2;Lw3/z2;)V

    if-ltz p5, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lw3/l0;->p:Lw3/k0;

    iput-object p2, p0, Lw3/l0;->q:Ljava/lang/Object;

    iput p3, p0, Lw3/l0;->r:I

    iput p5, p0, Lw3/l0;->s:I

    iput-object p4, p0, Lw3/l0;->u:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static b2(Lw3/l0;Lw3/l0;Lw3/y;)Z
    .locals 2

    iget v0, p0, Lw3/l0;->r:I

    iget v1, p1, Lw3/l0;->r:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lw3/l0;->q:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lw3/l0;->p:Lw3/k0;

    iget-object p1, p1, Lw3/l0;->p:Lw3/k0;

    invoke-virtual {p2, p0, p1}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public I1(Lw3/m;Lw3/z2;)Lw3/z2;
    .locals 1

    iget-boolean p1, p0, Lw3/l0;->t:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget-object v0, p0, Lw3/l0;->u:Ljava/lang/String;

    aput-object v0, p1, p2

    const-string p2, "msg.not.ctor"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method J1(II)Ljava/lang/String;
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p2, "function "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() { "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "[native code for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lw3/l0;->p:Lw3/k0;

    instance-of v1, p2, Lw3/z2;

    if-eqz v1, :cond_2

    check-cast p2, Lw3/z2;

    invoke-interface {p2}, Lw3/z2;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", arity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/l0;->L1()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string p2, "]\n"

    goto :goto_1

    :cond_3
    const-string p2, "] }\n"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public L1()I
    .locals 1

    iget v0, p0, Lw3/l0;->s:I

    return v0
.end method

.method public N1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/l0;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public O1()I
    .locals 1

    invoke-virtual {p0}, Lw3/l0;->L1()I

    move-result v0

    return v0
.end method

.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lw3/l0;->p:Lw3/k0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lw3/k0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a2(Lw3/z2;)V
    .locals 2

    iget-object v0, p0, Lw3/l0;->u:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p0, v1}, Lw3/a3;->Z(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public c2()V
    .locals 1

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/l0;->a2(Lw3/z2;)V

    return-void
.end method

.method public d2()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/l0;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final e2(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lw3/l0;->q:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw3/l0;->q:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public f2(Ljava/lang/String;Lw3/z2;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lw3/l0;->u:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lw3/a3;->h(Lw3/z2;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final g2(Lw3/z2;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/l0;->t:Z

    invoke-virtual {p0, p1}, Lw3/c;->Y1(Ljava/lang/Object;)V

    return-void
.end method

.method public final h2()I
    .locals 1

    iget v0, p0, Lw3/l0;->r:I

    return v0
.end method

.method public final i2()Ljava/lang/RuntimeException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BAD FUNCTION ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lw3/l0;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MASTER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw3/l0;->p:Lw3/k0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Lw3/z2;
    .locals 1

    invoke-super {p0}, Lw3/a3;->l()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object v0

    invoke-static {v0}, Lw3/a3;->v0(Lw3/z2;)Lw3/z2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/a3;->A(Lw3/z2;)V

    :cond_0
    return-object v0
.end method
