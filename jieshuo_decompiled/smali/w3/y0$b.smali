.class Lw3/y0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/y0;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lw3/y0;


# direct methods
.method constructor <init>(Lw3/y0;II)V
    .locals 0

    iput-object p1, p0, Lw3/y0$b;->d:Lw3/y0;

    iput p2, p0, Lw3/y0$b;->b:I

    iput p3, p0, Lw3/y0$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lw3/y0$b;->a:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lw3/y0$b;->a:I

    iget v1, p0, Lw3/y0$b;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lw3/y0$b;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw3/y0$b;->a:I

    iget v1, p0, Lw3/y0$b;->c:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lw3/y0$b;->d:Lw3/y0;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lw3/y0$b;->a:I

    invoke-virtual {v1, v0}, Lw3/y0;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lw3/y0$b;->a:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lw3/y0$b;->a:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw3/y0$b;->d:Lw3/y0;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lw3/y0$b;->a:I

    invoke-virtual {v1, v0}, Lw3/y0;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lw3/y0$b;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
