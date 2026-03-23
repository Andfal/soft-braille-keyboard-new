.class public final Lm/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lm/b;

.field final b:Lm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lu/n;


# direct methods
.method private constructor <init>(Lm/b;Lm/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/b;",
            "Lm/q<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lm/o;->c:I

    iput-object p1, p0, Lm/o;->a:Lm/b;

    iput-object p2, p0, Lm/o;->b:Lm/q;

    return-void
.end method

.method static a(Lm/b;Lm/q;)Lm/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/b;",
            "Lm/q<",
            "TT;>;)",
            "Lm/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lm/o;

    invoke-direct {v0, p0, p1}, Lm/o;-><init>(Lm/b;Lm/q;)V

    return-object v0
.end method


# virtual methods
.method public b()Lm/q;
    .locals 1

    iget-object v0, p0, Lm/o;->b:Lm/q;

    return-object v0
.end method

.method c(I)I
    .locals 1

    iput p1, p0, Lm/o;->c:I

    iget-object v0, p0, Lm/o;->b:Lm/q;

    iget-object v0, v0, Lm/q;->b:Lw/c;

    invoke-static {p1, v0}, Lu/n;->p(ILw/d;)Lu/n;

    move-result-object p1

    iput-object p1, p0, Lm/o;->d:Lu/n;

    invoke-virtual {p0}, Lm/o;->d()I

    move-result p1

    return p1
.end method

.method d()I
    .locals 1

    iget-object v0, p0, Lm/o;->b:Lm/q;

    iget-object v0, v0, Lm/q;->b:Lw/c;

    invoke-virtual {v0}, Lw/c;->f()I

    move-result v0

    return v0
.end method

.method e()Lu/n;
    .locals 1

    iget-object v0, p0, Lm/o;->d:Lu/n;

    if-nez v0, :cond_1

    iget-object v0, p0, Lm/o;->a:Lm/b;

    invoke-virtual {v0}, Lm/b;->n()V

    iget-object v0, p0, Lm/o;->d:Lu/n;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lm/o;->d:Lu/n;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/o;->b:Lm/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
