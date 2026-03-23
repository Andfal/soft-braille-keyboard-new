.class public final Lm/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/q<",
            "TD;>;"
        }
    .end annotation
.end field

.field final b:Lm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/q<",
            "TR;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field final d:Lm/r;

.field final e:Lv/t;

.field final f:Lv/s;


# direct methods
.method constructor <init>(Lm/q;Lm/q;Ljava/lang/String;Lm/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/q<",
            "TD;>;",
            "Lm/q<",
            "TR;>;",
            "Ljava/lang/String;",
            "Lm/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iput-object p1, p0, Lm/p;->a:Lm/q;

    iput-object p2, p0, Lm/p;->b:Lm/q;

    iput-object p3, p0, Lm/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lm/p;->d:Lm/r;

    new-instance p2, Lv/t;

    new-instance p4, Lv/v;

    invoke-direct {p4, p3}, Lv/v;-><init>(Ljava/lang/String;)V

    new-instance p3, Lv/v;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm/p;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lv/v;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p4, p3}, Lv/t;-><init>(Lv/v;Lv/v;)V

    iput-object p2, p0, Lm/p;->e:Lv/t;

    new-instance p3, Lv/s;

    iget-object p1, p1, Lm/q;->c:Lv/w;

    invoke-direct {p3, p1, p2}, Lv/s;-><init>(Lv/w;Lv/t;)V

    iput-object p3, p0, Lm/p;->f:Lv/s;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method a(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lm/p;->a:Lm/q;

    iget-object p1, p1, Lm/q;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lm/p;->d:Lm/r;

    iget-object p1, p1, Lm/r;->a:[Lm/q;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v3, v3, Lm/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lm/p;->b:Lm/q;

    iget-object p1, p1, Lm/q;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lm/p;->c:Ljava/lang/String;

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method c(Z)Lw/a;
    .locals 0

    invoke-virtual {p0, p1}, Lm/p;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw/a;->f(Ljava/lang/String;)Lw/a;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lm/p;

    if-eqz v0, :cond_0

    check-cast p1, Lm/p;

    iget-object v0, p1, Lm/p;->a:Lm/q;

    iget-object v1, p0, Lm/p;->a:Lm/q;

    invoke-virtual {v0, v1}, Lm/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lm/p;->c:Ljava/lang/String;

    iget-object v1, p0, Lm/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lm/p;->d:Lm/r;

    iget-object v1, p0, Lm/p;->d:Lm/r;

    invoke-virtual {v0, v1}, Lm/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lm/p;->b:Lm/q;

    iget-object v0, p0, Lm/p;->b:Lm/q;

    invoke-virtual {p1, v0}, Lm/q;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    iget-object v0, p0, Lm/p;->a:Lm/q;

    invoke-virtual {v0}, Lm/q;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lm/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lm/p;->d:Lm/r;

    invoke-virtual {v0}, Lm/r;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lm/p;->b:Lm/q;

    invoke-virtual {v0}, Lm/q;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lm/p;->a:Lm/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/p;->d:Lm/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
