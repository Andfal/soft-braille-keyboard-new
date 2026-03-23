.class public Lw3/g2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lw3/g2;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lw3/g2;

.field private b:Lw3/g2;

.field private c:Lw3/g2;

.field private d:Z

.field final synthetic e:Lw3/g2;


# direct methods
.method public constructor <init>(Lw3/g2;)V
    .locals 1

    iput-object p1, p0, Lw3/g2$a;->e:Lw3/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lw3/g2;->d()Lw3/g2;

    move-result-object v0

    iput-object v0, p0, Lw3/g2$a;->b:Lw3/g2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/g2$a;->d:Z

    iget-object p1, p1, Lw3/g2;->c:Lw3/g2;

    iput-object p1, p0, Lw3/g2$a;->a:Lw3/g2;

    return-void
.end method


# virtual methods
.method public a()Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/g2$a;->a:Lw3/g2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lw3/g2$a;->d:Z

    iget-object v1, p0, Lw3/g2$a;->b:Lw3/g2;

    iput-object v1, p0, Lw3/g2$a;->c:Lw3/g2;

    iput-object v0, p0, Lw3/g2$a;->b:Lw3/g2;

    iget-object v1, v0, Lw3/g2;->b:Lw3/g2;

    iput-object v1, p0, Lw3/g2$a;->a:Lw3/g2;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lw3/g2$a;->a:Lw3/g2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw3/g2$a;->a()Lw3/g2;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lw3/g2$a;->b:Lw3/g2;

    invoke-static {}, Lw3/g2;->d()Lw3/g2;

    move-result-object v1

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lw3/g2$a;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lw3/g2$a;->b:Lw3/g2;

    iget-object v1, p0, Lw3/g2$a;->e:Lw3/g2;

    iget-object v2, v1, Lw3/g2;->c:Lw3/g2;

    if-ne v0, v2, :cond_0

    iget-object v0, v0, Lw3/g2;->b:Lw3/g2;

    iput-object v0, v1, Lw3/g2;->c:Lw3/g2;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lw3/g2;->d:Lw3/g2;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lw3/g2$a;->c:Lw3/g2;

    const/4 v2, 0x0

    iput-object v2, v0, Lw3/g2;->b:Lw3/g2;

    iput-object v0, v1, Lw3/g2;->d:Lw3/g2;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw3/g2$a;->c:Lw3/g2;

    iget-object v1, p0, Lw3/g2$a;->a:Lw3/g2;

    iput-object v1, v0, Lw3/g2;->b:Lw3/g2;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() already called for current element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
