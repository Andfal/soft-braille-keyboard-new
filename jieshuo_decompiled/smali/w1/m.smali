.class final Lw1/m;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lt1/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lt1/e;

.field private final b:Lt1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lt1/e;Lt1/t;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/e;",
            "Lt1/t<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lt1/t;-><init>()V

    iput-object p1, p0, Lw1/m;->a:Lt1/e;

    iput-object p2, p0, Lw1/m;->b:Lt1/t;

    iput-object p3, p0, Lw1/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method private e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public b(La2/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lw1/m;->b:Lt1/t;

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(La2/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/c;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lw1/m;->b:Lt1/t;

    iget-object v1, p0, Lw1/m;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lw1/m;->e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lw1/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lw1/m;->a:Lt1/e;

    invoke-static {v1}, Lz1/a;->b(Ljava/lang/reflect/Type;)Lz1/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt1/e;->l(Lz1/a;)Lt1/t;

    move-result-object v0

    instance-of v1, v0, Lw1/i$b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw1/m;->b:Lt1/t;

    instance-of v2, v1, Lw1/i$b;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    return-void
.end method
