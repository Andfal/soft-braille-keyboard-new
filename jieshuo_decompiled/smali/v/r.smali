.class public abstract Lv/r;
.super Lv/x;
.source "SourceFile"


# instance fields
.field private final a:Lv/w;

.field private final b:Lv/t;


# direct methods
.method constructor <init>(Lv/w;Lv/t;)V
    .locals 0

    invoke-direct {p0}, Lv/x;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lv/r;->a:Lv/w;

    iput-object p2, p0, Lv/r;->b:Lv/t;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lv/r;->a:Lv/w;

    invoke-virtual {v1}, Lv/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv/r;->b:Lv/t;

    invoke-virtual {v1}, Lv/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lv/a;)I
    .locals 2

    check-cast p1, Lv/r;

    iget-object v0, p0, Lv/r;->a:Lv/w;

    iget-object v1, p1, Lv/r;->a:Lv/w;

    invoke-virtual {v0, v1}, Lv/a;->d(Lv/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lv/r;->b:Lv/t;

    invoke-virtual {v0}, Lv/t;->i()Lv/v;

    move-result-object v0

    iget-object p1, p1, Lv/r;->b:Lv/t;

    invoke-virtual {p1}, Lv/t;->i()Lv/v;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv/a;->d(Lv/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lv/r;

    iget-object v1, p0, Lv/r;->a:Lv/w;

    iget-object v2, p1, Lv/r;->a:Lv/w;

    invoke-virtual {v1, v2}, Lv/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv/r;->b:Lv/t;

    iget-object p1, p1, Lv/r;->b:Lv/t;

    invoke-virtual {v1, p1}, Lv/t;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final g()Lv/w;
    .locals 1

    iget-object v0, p0, Lv/r;->a:Lv/w;

    return-object v0
.end method

.method public final h()Lv/t;
    .locals 1

    iget-object v0, p0, Lv/r;->b:Lv/t;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lv/r;->a:Lv/w;

    invoke-virtual {v0}, Lv/w;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lv/r;->b:Lv/t;

    invoke-virtual {v1}, Lv/t;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
