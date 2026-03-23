.class public final Lw1/l;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/l$b;
    }
.end annotation

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
.field private final a:Lt1/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lt1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lt1/e;

.field private final d:Lz1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lt1/u;

.field private final f:Lw1/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw1/l<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private g:Lt1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt1/q;Lt1/i;Lt1/e;Lz1/a;Lt1/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/q<",
            "TT;>;",
            "Lt1/i<",
            "TT;>;",
            "Lt1/e;",
            "Lz1/a<",
            "TT;>;",
            "Lt1/u;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lt1/t;-><init>()V

    new-instance v0, Lw1/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw1/l$b;-><init>(Lw1/l;Lw1/l$a;)V

    iput-object v0, p0, Lw1/l;->f:Lw1/l$b;

    iput-object p1, p0, Lw1/l;->a:Lt1/q;

    iput-object p2, p0, Lw1/l;->b:Lt1/i;

    iput-object p3, p0, Lw1/l;->c:Lt1/e;

    iput-object p4, p0, Lw1/l;->d:Lz1/a;

    iput-object p5, p0, Lw1/l;->e:Lt1/u;

    return-void
.end method

.method private e()Lt1/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lw1/l;->g:Lt1/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw1/l;->c:Lt1/e;

    iget-object v1, p0, Lw1/l;->e:Lt1/u;

    iget-object v2, p0, Lw1/l;->d:Lz1/a;

    invoke-virtual {v0, v1, v2}, Lt1/e;->m(Lt1/u;Lz1/a;)Lt1/t;

    move-result-object v0

    iput-object v0, p0, Lw1/l;->g:Lt1/t;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(La2/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lw1/l;->b:Lt1/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lw1/l;->e()Lt1/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lv1/l;->a(La2/a;)Lt1/j;

    move-result-object p1

    invoke-virtual {p1}, Lt1/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lw1/l;->b:Lt1/i;

    iget-object v1, p0, Lw1/l;->d:Lz1/a;

    invoke-virtual {v1}, Lz1/a;->e()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lw1/l;->f:Lw1/l$b;

    invoke-interface {v0, p1, v1, v2}, Lt1/i;->a(Lt1/j;Ljava/lang/reflect/Type;Lt1/h;)Ljava/lang/Object;

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

    iget-object v0, p0, Lw1/l;->a:Lt1/q;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lw1/l;->e()Lt1/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, La2/c;->x()La2/c;

    return-void

    :cond_1
    iget-object v1, p0, Lw1/l;->d:Lz1/a;

    invoke-virtual {v1}, Lz1/a;->e()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lw1/l;->f:Lw1/l$b;

    invoke-interface {v0, p2, v1, v2}, Lt1/q;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lt1/p;)Lt1/j;

    move-result-object p2

    invoke-static {p2, p1}, Lv1/l;->b(Lt1/j;La2/c;)V

    return-void
.end method
