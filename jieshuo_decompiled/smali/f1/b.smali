.class public Lf1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lf1/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private h()I
    .locals 2

    iget v0, p0, Lf1/b;->a:I

    iget v1, p0, Lf1/b;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private i()I
    .locals 2

    iget v0, p0, Lf1/b;->d:I

    iget v1, p0, Lf1/b;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf1/b;->a:I

    iput v0, p0, Lf1/b;->b:I

    iput v0, p0, Lf1/b;->d:I

    iput v0, p0, Lf1/b;->e:I

    iput v0, p0, Lf1/b;->f:I

    iput v0, p0, Lf1/b;->g:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lf1/b;->c:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lf1/b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lf1/b;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lf1/b;->f:I

    return-void
.end method

.method public e()Lf1/a;
    .locals 5

    new-instance v0, Lf1/a;

    invoke-direct {v0}, Lf1/a;-><init>()V

    invoke-direct {p0}, Lf1/b;->i()I

    move-result v1

    invoke-direct {p0}, Lf1/b;->h()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget v2, p0, Lf1/b;->e:I

    sub-int v2, v1, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, p0, Lf1/b;->f:I

    invoke-virtual {v0, v4}, Lf1/a;->c(I)V

    invoke-virtual {v0, v2}, Lf1/a;->f(I)V

    add-int/2addr v1, v3

    iput v1, p0, Lf1/b;->e:I

    iput v1, p0, Lf1/b;->d:I

    iget v4, p0, Lf1/b;->f:I

    add-int/2addr v4, v2

    iput v4, p0, Lf1/b;->f:I

    int-to-float v1, v1

    iget v2, p0, Lf1/b;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentProgressStartIndex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/b;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--mCurrentAllUtteranceLenght="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/b;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--percent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UtteranceSubpackager"

    invoke-static {v4, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf1/a;->b(F)V

    invoke-virtual {v0, v3}, Lf1/a;->d(Z)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lf1/b;->b:I

    iget v2, p0, Lf1/b;->e:I

    sub-int/2addr v1, v2

    iget v2, p0, Lf1/b;->f:I

    invoke-virtual {v0, v2}, Lf1/a;->c(I)V

    invoke-virtual {v0, v1}, Lf1/a;->f(I)V

    iget v2, p0, Lf1/b;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lf1/b;->e:I

    iget v2, p0, Lf1/b;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lf1/b;->f:I

    :goto_0
    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lf1/b;->g:I

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lf1/b;->g:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lf1/b;->e:I

    invoke-direct {p0}, Lf1/b;->h()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf1/b;->e()Lf1/a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
