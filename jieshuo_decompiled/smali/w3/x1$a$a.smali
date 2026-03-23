.class Lw3/x1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/x1$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lw3/x1$a;


# direct methods
.method constructor <init>(Lw3/x1$a;)V
    .locals 0

    iput-object p1, p0, Lw3/x1$a$a;->d:Lw3/x1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lw3/x1$a;->a:Lw3/x1;

    invoke-virtual {p1}, Lw3/a3;->getIds()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lw3/x1$a$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lw3/x1$a$a;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lw3/x1$a$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw3/x1$a$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lw3/x1$a$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lw3/x1$a$a;->c:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lw3/x1$a$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lw3/x1$a$a;->d:Lw3/x1$a;

    iget-object v1, v1, Lw3/x1$a;->a:Lw3/x1;

    invoke-virtual {v1, v0}, Lw3/a3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lw3/x1$a$a$a;

    invoke-direct {v2, p0, v0, v1}, Lw3/x1$a$a$a;-><init>(Lw3/x1$a$a;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lw3/x1$a$a;->c:I

    iget-object v1, p0, Lw3/x1$a$a;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw3/x1$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lw3/x1$a$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw3/x1$a$a;->d:Lw3/x1$a;

    iget-object v1, v1, Lw3/x1$a;->a:Lw3/x1;

    invoke-virtual {v1, v0}, Lw3/x1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/x1$a$a;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
