.class public final Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/l;


# instance fields
.field private final a:I

.field private final b:Lu/g;

.field private final c:Lx/k;

.field private final d:I


# direct methods
.method public constructor <init>(ILu/g;Lx/k;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_7

    :try_start_0
    invoke-virtual {p2}, Lx/o;->h()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Lx/h;->size()I

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v1, v0, -0x2

    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    invoke-virtual {p2, v1}, Lu/g;->q(I)Lu/f;

    move-result-object v3

    invoke-virtual {v3}, Lu/f;->h()Lu/r;

    move-result-object v3

    invoke-virtual {v3}, Lu/r;->b()I

    move-result v3

    if-ne v3, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insns["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] is a branch or can throw"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lu/g;->q(I)Lu/f;

    move-result-object v0

    invoke-virtual {v0}, Lu/f;->h()Lu/r;

    move-result-object v0

    invoke-virtual {v0}, Lu/r;->b()I

    move-result v0

    if-eq v0, v2, :cond_5

    :try_start_1
    invoke-virtual {p3}, Lx/o;->h()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_4

    if-ltz p4, :cond_3

    invoke-virtual {p3, p4}, Lx/k;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "primarySuccessor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " not in successors "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput p1, p0, Lu/b;->a:I

    iput-object p2, p0, Lu/b;->b:Lu/g;

    iput-object p3, p0, Lu/b;->c:Lx/k;

    iput p4, p0, Lu/b;->d:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "primarySuccessor < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "successors == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns does not end with a branch or throwing instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lu/b;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lu/b;->b:Lu/g;

    invoke-virtual {v0}, Lu/g;->r()Lu/f;

    move-result-object v0

    invoke-virtual {v0}, Lu/f;->e()Z

    move-result v0

    return v0
.end method

.method public c()Lu/g;
    .locals 1

    iget-object v0, p0, Lu/b;->b:Lu/g;

    return-object v0
.end method

.method public d()Lu/f;
    .locals 1

    iget-object v0, p0, Lu/b;->b:Lu/g;

    invoke-virtual {v0}, Lu/g;->r()Lu/f;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lu/b;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lu/b;->c:Lx/k;

    invoke-virtual {v0}, Lx/k;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lu/b;->c:Lx/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/k;->l(I)I

    move-result v0

    iget v1, p0, Lu/b;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lu/b;->c:Lx/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/k;->l(I)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lx/k;
    .locals 1

    iget-object v0, p0, Lu/b;->c:Lx/k;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lu/b;->a:I

    invoke-static {v1}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
