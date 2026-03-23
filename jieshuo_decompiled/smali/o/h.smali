.class public abstract Lo/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Lo/j;

.field private final c:Lu/u;

.field private final d:Lu/p;


# direct methods
.method public constructor <init>(Lo/j;Lu/u;Lu/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lo/h;->a:I

    iput-object p1, p0, Lo/h;->b:Lo/j;

    iput-object p2, p0, Lo/h;->c:Lu/u;

    iput-object p3, p0, Lo/h;->d:Lu/p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "registers == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static r(Lu/u;Lu/n;Lu/n;)Lo/x;
    .locals 5

    invoke-virtual {p1}, Lu/n;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lu/n;->getType()Lw/c;

    move-result-object v0

    invoke-virtual {v0}, Lw/c;->o()Z

    move-result v0

    invoke-virtual {p1}, Lu/n;->l()I

    move-result v2

    invoke-virtual {p2}, Lu/n;->l()I

    move-result v3

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    if-eqz v0, :cond_1

    sget-object v0, Lo/k;->j:Lo/j;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lo/k;->d:Lo/j;

    goto :goto_1

    :cond_2
    sget-object v0, Lo/k;->g:Lo/j;

    goto :goto_1

    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    if-eqz v0, :cond_4

    sget-object v0, Lo/k;->k:Lo/j;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    sget-object v0, Lo/k;->e:Lo/j;

    goto :goto_1

    :cond_5
    sget-object v0, Lo/k;->h:Lo/j;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    sget-object v0, Lo/k;->l:Lo/j;

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sget-object v0, Lo/k;->f:Lo/j;

    goto :goto_1

    :cond_8
    sget-object v0, Lo/k;->i:Lo/j;

    :goto_1
    new-instance v1, Lo/x;

    invoke-static {p1, p2}, Lu/p;->s(Lu/n;Lu/n;)Lu/p;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lo/x;-><init>(Lo/j;Lu/u;Lu/p;)V

    return-object v1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public c(Ljava/util/BitSet;)Lo/h;
    .locals 4

    iget-object v0, p0, Lo/h;->d:Lu/p;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {p0}, Lo/h;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {v0, p1}, Lu/p;->v(Ljava/util/BitSet;)Lu/p;

    move-result-object v0

    invoke-virtual {p0}, Lo/h;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    invoke-virtual {v0}, Lx/h;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Lo/m;

    iget-object v1, p0, Lo/h;->c:Lu/u;

    invoke-direct {p1, v1, v0}, Lo/m;-><init>(Lu/u;Lu/p;)V

    return-object p1
.end method

.method public d(Ljava/util/BitSet;)Lo/h;
    .locals 2

    invoke-virtual {p0}, Lo/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/h;->d:Lu/p;

    invoke-virtual {p1, v0}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    iget-object v1, p0, Lo/h;->c:Lu/u;

    invoke-virtual {p1, v0}, Lu/n;->w(I)Lu/n;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lo/h;->r(Lu/u;Lu/n;Lu/n;)Lo/x;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/util/BitSet;)Lo/h;
    .locals 3

    iget-object v0, p0, Lo/h;->d:Lu/p;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/h;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lu/p;->w(IZLjava/util/BitSet;)Lu/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/h;->v(Lu/p;)Lo/h;

    move-result-object p1

    return-object p1
.end method

.method public final f()I
    .locals 2

    iget v0, p0, Lo/h;->a:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lo/h;
    .locals 4

    iget-object v0, p0, Lo/h;->d:Lu/p;

    invoke-virtual {p0}, Lo/h;->n()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lu/p;->w(IZLjava/util/BitSet;)Lu/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/h;->v(Lu/p;)Lo/h;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/util/BitSet;)I
    .locals 5

    invoke-virtual {p0}, Lo/h;->n()Z

    move-result v0

    iget-object v1, p0, Lo/h;->d:Lu/p;

    invoke-virtual {v1}, Lx/h;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lo/h;->d:Lu/p;

    invoke-virtual {v3, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v3

    invoke-virtual {v3}, Lu/n;->i()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lo/h;->d:Lu/p;

    invoke-virtual {v4, v0}, Lu/p;->p(I)Lu/n;

    move-result-object v4

    invoke-virtual {v4}, Lu/n;->i()I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final i()I
    .locals 2

    invoke-virtual {p0}, Lo/h;->f()I

    move-result v0

    invoke-virtual {p0}, Lo/h;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final j()Lo/j;
    .locals 1

    iget-object v0, p0, Lo/h;->b:Lo/j;

    return-object v0
.end method

.method public final k()Lu/u;
    .locals 1

    iget-object v0, p0, Lo/h;->c:Lu/u;

    return-object v0
.end method

.method public final l()Lu/p;
    .locals 1

    iget-object v0, p0, Lo/h;->d:Lu/p;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget v0, p0, Lo/h;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lo/h;->b:Lo/j;

    invoke-virtual {v0}, Lo/j;->g()Z

    move-result v0

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lo/h;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%04x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p3}, Lo/h;->q(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/h;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    :goto_0
    const-string v1, ""

    invoke-static {p1, v0, v1, p3, p2}, Lx/s;->h(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract q(Z)Ljava/lang/String;
.end method

.method public final s(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lo/h;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract t(Lo/j;)Lo/h;
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lo/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lo/h;->c:Lu/u;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lo/h;->b:Lo/j;

    invoke-virtual {v2}, Lo/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lo/h;->d:Lu/p;

    invoke-virtual {v2}, Lx/h;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/h;->d:Lu/p;

    const-string v3, ", "

    const/4 v4, 0x0

    const-string v5, " "

    invoke-virtual {v2, v5, v3, v4}, Lx/h;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/h;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract u(I)Lo/h;
.end method

.method public abstract v(Lu/p;)Lo/h;
.end method

.method public abstract w(Lx/a;)V
.end method
