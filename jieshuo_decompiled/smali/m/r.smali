.class final Lm/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[Lm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lm/q<",
            "*>;"
        }
    .end annotation
.end field

.field final b:Lw/b;


# direct methods
.method constructor <init>([Lm/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lm/q<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Lm/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/q;

    iput-object v0, p0, Lm/r;->a:[Lm/q;

    new-instance v0, Lw/b;

    array-length v1, p1

    invoke-direct {v0, v1}, Lw/b;-><init>(I)V

    iput-object v0, p0, Lm/r;->b:Lw/b;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lm/r;->b:Lw/b;

    aget-object v2, p1, v0

    iget-object v2, v2, Lm/q;->b:Lw/c;

    invoke-virtual {v1, v0, v2}, Lw/b;->x(ILw/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lm/r;

    if-eqz v0, :cond_0

    check-cast p1, Lm/r;

    iget-object p1, p1, Lm/r;->a:[Lm/q;

    iget-object v0, p0, Lm/r;->a:[Lm/q;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lm/r;->a:[Lm/q;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lm/r;->a:[Lm/q;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lm/r;->a:[Lm/q;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
