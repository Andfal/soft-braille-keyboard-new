.class public Ll1/b;
.super Lm1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm1/a;"
    }
.end annotation


# instance fields
.field private a:Lq0/f$b;

.field private b:Lq0/e$a;

.field private c:Lb1/j;

.field private d:Lb1/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm1/a;-><init>()V

    sget-object v0, Lb1/l;->f:Lb1/l;

    iput-object v0, p0, Ll1/b;->d:Lb1/l;

    new-instance v0, Lq0/f$b;

    invoke-direct {v0}, Lq0/f$b;-><init>()V

    iput-object v0, p0, Ll1/b;->a:Lq0/f$b;

    new-instance v0, Lq0/e$a;

    invoke-direct {v0}, Lq0/e$a;-><init>()V

    iput-object v0, p0, Ll1/b;->b:Lq0/e$a;

    return-void
.end method


# virtual methods
.method public c()Lq0/f$b;
    .locals 1

    iget-object v0, p0, Ll1/b;->a:Lq0/f$b;

    return-object v0
.end method

.method public d(Lb1/j;)V
    .locals 0

    iput-object p1, p0, Ll1/b;->c:Lb1/j;

    return-void
.end method

.method public f(Lb1/l;)V
    .locals 0

    iput-object p1, p0, Ll1/b;->d:Lb1/l;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ll1/b;->a:Lq0/f$b;

    invoke-virtual {v0, p1}, Ll1/d;->l(Ljava/lang/String;)V

    iget-object v0, p0, Ll1/b;->b:Lq0/e$a;

    invoke-virtual {v0, p1}, Ll1/d;->l(Ljava/lang/String;)V

    return-void
.end method

.method public h()Lq0/e$a;
    .locals 1

    iget-object v0, p0, Ll1/b;->b:Lq0/e$a;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ll1/b;->a:Lq0/f$b;

    invoke-virtual {v0, p1}, Ll1/d;->n(Ljava/lang/String;)V

    iget-object v0, p0, Ll1/b;->b:Lq0/e$a;

    invoke-virtual {v0, p1}, Ll1/d;->n(Ljava/lang/String;)V

    return-void
.end method

.method public j()Lb1/j;
    .locals 1

    iget-object v0, p0, Ll1/b;->c:Lb1/j;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ll1/b;->a:Lq0/f$b;

    invoke-virtual {v0, p1}, Ll1/d;->m(Ljava/lang/String;)V

    iget-object v0, p0, Ll1/b;->b:Lq0/e$a;

    invoke-virtual {v0, p1}, Ll1/d;->m(Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lq1/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll1/b;->a:Lq0/f$b;

    invoke-virtual {v0, p1}, Ll1/d;->k(Ljava/lang/String;)V

    iget-object v0, p0, Ll1/b;->b:Lq0/e$a;

    invoke-virtual {v0, p1}, Ll1/d;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public m()Lb1/l;
    .locals 1

    iget-object v0, p0, Ll1/b;->d:Lb1/l;

    return-object v0
.end method
