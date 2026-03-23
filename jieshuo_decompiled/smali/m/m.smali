.class public final Lm/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "V:",
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
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field final d:Lv/t;

.field final e:Lv/j;


# direct methods
.method constructor <init>(Lm/q;Lm/q;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/q<",
            "TD;>;",
            "Lm/q<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p1, p0, Lm/m;->a:Lm/q;

    iput-object p2, p0, Lm/m;->b:Lm/q;

    iput-object p3, p0, Lm/m;->c:Ljava/lang/String;

    new-instance v0, Lv/t;

    new-instance v1, Lv/v;

    invoke-direct {v1, p3}, Lv/v;-><init>(Ljava/lang/String;)V

    new-instance p3, Lv/v;

    iget-object p2, p2, Lm/q;->a:Ljava/lang/String;

    invoke-direct {p3, p2}, Lv/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p3}, Lv/t;-><init>(Lv/v;Lv/v;)V

    iput-object v0, p0, Lm/m;->d:Lv/t;

    new-instance p2, Lv/j;

    iget-object p1, p1, Lm/q;->c:Lv/w;

    invoke-direct {p2, p1, v0}, Lv/j;-><init>(Lv/w;Lv/t;)V

    iput-object p2, p0, Lm/m;->e:Lv/j;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lm/m;

    if-eqz v0, :cond_0

    check-cast p1, Lm/m;

    iget-object v0, p1, Lm/m;->a:Lm/q;

    iget-object v1, p0, Lm/m;->a:Lm/q;

    invoke-virtual {v0, v1}, Lm/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lm/m;->c:Ljava/lang/String;

    iget-object v0, p0, Lm/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lm/m;->a:Lm/q;

    invoke-virtual {v0}, Lm/q;->hashCode()I

    move-result v0

    iget-object v1, p0, Lm/m;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lm/m;->a:Lm/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
