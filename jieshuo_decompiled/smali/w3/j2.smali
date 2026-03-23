.class public Lw3/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Z

.field private transient c:Ljava/lang/Object;

.field private transient d:Ljava/lang/Object;

.field private transient e:Ljava/lang/Object;

.field private transient f:Ljava/lang/Object;

.field private transient g:Ljava/lang/Object;

.field private transient h:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)V
    .locals 4

    const/4 v0, 0x5

    sub-int/2addr p1, v0

    if-lez p1, :cond_6

    iget-object v1, p0, Lw3/j2;->h:[Ljava/lang/Object;

    const/16 v2, 0xa

    if-nez v1, :cond_1

    if-ge v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lw3/j2;->h:[Ljava/lang/Object;

    goto :goto_3

    :cond_1
    array-length v3, v1

    if-ge v3, p1, :cond_5

    if-gt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v2, v3, 0x2

    :goto_1
    if-ge v2, p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    new-array p1, p1, [Ljava/lang/Object;

    iget v2, p0, Lw3/j2;->a:I

    if-le v2, v0, :cond_4

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object p1, p0, Lw3/j2;->h:[Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private d(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lw3/j2;->h:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x5

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lw3/j2;->g:Ljava/lang/Object;

    return-object p1

    :cond_1
    iget-object p1, p0, Lw3/j2;->f:Ljava/lang/Object;

    return-object p1

    :cond_2
    iget-object p1, p0, Lw3/j2;->e:Ljava/lang/Object;

    return-object p1

    :cond_3
    iget-object p1, p0, Lw3/j2;->d:Ljava/lang/Object;

    return-object p1

    :cond_4
    iget-object p1, p0, Lw3/j2;->c:Ljava/lang/Object;

    return-object p1
.end method

.method private static f()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty stack"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static g(II)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u2209 [0, "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static h()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to modify sealed array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lw3/j2;->h:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x5

    aput-object p2, v0, p1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lw3/j2;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lw3/j2;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lw3/j2;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lw3/j2;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iput-object p2, p0, Lw3/j2;->c:Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lw3/j2;->b:Z

    if-nez v0, :cond_1

    iget v0, p0, Lw3/j2;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lw3/j2;->b(I)V

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lw3/j2;->a:I

    invoke-direct {p0, v0, p1}, Lw3/j2;->l(ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lw3/j2;->h()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lw3/j2;->a:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lw3/j2;->d(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lw3/j2;->a:I

    invoke-static {p1, v0}, Lw3/j2;->g(II)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lw3/j2;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lw3/j2;->a:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lw3/j2;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lw3/j2;->f()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 5

    iget-boolean v0, p0, Lw3/j2;->b:Z

    if-nez v0, :cond_6

    iget v0, p0, Lw3/j2;->a:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lw3/j2;->h:[Ljava/lang/Object;

    add-int/lit8 v3, v0, -0x5

    aget-object v4, v2, v3

    aput-object v1, v2, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lw3/j2;->g:Ljava/lang/Object;

    iput-object v1, p0, Lw3/j2;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lw3/j2;->f:Ljava/lang/Object;

    iput-object v1, p0, Lw3/j2;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lw3/j2;->e:Ljava/lang/Object;

    iput-object v1, p0, Lw3/j2;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lw3/j2;->d:Ljava/lang/Object;

    iput-object v1, p0, Lw3/j2;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lw3/j2;->c:Ljava/lang/Object;

    iput-object v1, p0, Lw3/j2;->c:Ljava/lang/Object;

    :goto_0
    iput v0, p0, Lw3/j2;->a:I

    return-object v4

    :cond_5
    invoke-static {}, Lw3/j2;->f()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-static {}, Lw3/j2;->h()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw3/j2;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lw3/j2;->a:I

    return v0
.end method

.method public final n([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw3/j2;->o([Ljava/lang/Object;I)V

    return-void
.end method

.method public final o([Ljava/lang/Object;I)V
    .locals 5

    iget v0, p0, Lw3/j2;->a:I

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lw3/j2;->h:[Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x5

    sub-int/2addr v0, v2

    invoke-static {v3, v1, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v0, p2, 0x4

    iget-object v2, p0, Lw3/j2;->g:Ljava/lang/Object;

    aput-object v2, p1, v0

    :cond_1
    add-int/lit8 v0, p2, 0x3

    iget-object v2, p0, Lw3/j2;->f:Ljava/lang/Object;

    aput-object v2, p1, v0

    :cond_2
    add-int/lit8 v0, p2, 0x2

    iget-object v2, p0, Lw3/j2;->e:Ljava/lang/Object;

    aput-object v2, p1, v0

    :cond_3
    add-int/lit8 v0, p2, 0x1

    iget-object v2, p0, Lw3/j2;->d:Ljava/lang/Object;

    aput-object v2, p1, v0

    :cond_4
    add-int/2addr p2, v1

    iget-object v0, p0, Lw3/j2;->c:Ljava/lang/Object;

    aput-object v0, p1, p2

    :cond_5
    return-void
.end method

.method public final p()[Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lw3/j2;->a:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lw3/j2;->o([Ljava/lang/Object;I)V

    return-object v0
.end method
