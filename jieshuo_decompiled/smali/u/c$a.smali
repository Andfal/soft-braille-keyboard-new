.class Lu/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu/c$a;->a:I

    return-void
.end method

.method private f(Lu/n;)V
    .locals 1

    invoke-virtual {p1}, Lu/n;->k()I

    move-result p1

    iget v0, p0, Lu/c$a;->a:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lu/c$a;->a:I

    :cond_0
    return-void
.end method

.method private g(Lu/f;)V
    .locals 3

    invoke-virtual {p1}, Lu/f;->j()Lu/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lu/c$a;->f(Lu/n;)V

    :cond_0
    invoke-virtual {p1}, Lu/f;->k()Lu/p;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-direct {p0, v2}, Lu/c$a;->f(Lu/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lu/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lu/c$a;->g(Lu/f;)V

    return-void
.end method

.method public b(Lu/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lu/c$a;->g(Lu/f;)V

    return-void
.end method

.method public c(Lu/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lu/c$a;->g(Lu/f;)V

    return-void
.end method

.method public d(Lu/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lu/c$a;->g(Lu/f;)V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lu/c$a;->a:I

    return v0
.end method
