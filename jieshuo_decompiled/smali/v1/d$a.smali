.class Lv1/d$a;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/d;->a(Lt1/e;Lz1/a;)Lt1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lt1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lt1/e;

.field final synthetic e:Lz1/a;

.field final synthetic f:Lv1/d;


# direct methods
.method constructor <init>(Lv1/d;ZZLt1/e;Lz1/a;)V
    .locals 0

    iput-object p1, p0, Lv1/d$a;->f:Lv1/d;

    iput-boolean p2, p0, Lv1/d$a;->b:Z

    iput-boolean p3, p0, Lv1/d$a;->c:Z

    iput-object p4, p0, Lv1/d$a;->d:Lt1/e;

    iput-object p5, p0, Lv1/d$a;->e:Lz1/a;

    invoke-direct {p0}, Lt1/t;-><init>()V

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

    iget-object v0, p0, Lv1/d$a;->a:Lt1/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv1/d$a;->d:Lt1/e;

    iget-object v1, p0, Lv1/d$a;->f:Lv1/d;

    iget-object v2, p0, Lv1/d$a;->e:Lz1/a;

    invoke-virtual {v0, v1, v2}, Lt1/e;->m(Lt1/u;Lz1/a;)Lt1/t;

    move-result-object v0

    iput-object v0, p0, Lv1/d$a;->a:Lt1/t;

    :goto_0
    return-object v0
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

    iget-boolean v0, p0, Lv1/d$a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La2/a;->Z()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lv1/d$a;->e()Lt1/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(La2/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/c;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lv1/d$a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La2/c;->x()La2/c;

    return-void

    :cond_0
    invoke-direct {p0}, Lv1/d$a;->e()Lt1/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    return-void
.end method
