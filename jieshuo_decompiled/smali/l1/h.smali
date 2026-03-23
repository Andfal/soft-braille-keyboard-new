.class public Ll1/h;
.super Lm1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm1/a;"
    }
.end annotation


# instance fields
.field private a:Lb1/e;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:[B

.field private h:Lb1/a;

.field private i:Ll1/i;

.field private j:Ll0/f;

.field private k:Lb1/k;

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm1/a;-><init>()V

    sget-object v0, Lb1/k;->d:Lb1/k;

    iput-object v0, p0, Ll1/h;->k:Lb1/k;

    return-void
.end method

.method public static d(Ll1/i;Ll0/f;)Ll1/h;
    .locals 0

    invoke-static {p0}, Ll1/h;->p(Ll1/i;)Ll1/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll1/h;->k(Ll0/f;)V

    return-object p0
.end method

.method public static o(Ll0/f;)Ll1/h;
    .locals 1

    new-instance v0, Ll1/h;

    invoke-direct {v0}, Ll1/h;-><init>()V

    invoke-virtual {v0, p0}, Ll1/h;->k(Ll0/f;)V

    return-object v0
.end method

.method public static p(Ll1/i;)Ll1/h;
    .locals 1

    new-instance v0, Ll1/h;

    invoke-direct {v0}, Ll1/h;-><init>()V

    invoke-virtual {v0, p0}, Ll1/h;->l(Ll1/i;)V

    return-object v0
.end method


# virtual methods
.method public A()Lb1/k;
    .locals 1

    iget-object v0, p0, Ll1/h;->k:Lb1/k;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ll1/h;->c:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Ll1/h;->c:I

    return-void
.end method

.method public g(Lb1/a;)V
    .locals 0

    iput-object p1, p0, Ll1/h;->h:Lb1/a;

    return-void
.end method

.method public h(Lb1/e;)V
    .locals 0

    iput-object p1, p0, Ll1/h;->a:Lb1/e;

    return-void
.end method

.method public i(Lb1/k;)V
    .locals 0

    iput-object p1, p0, Ll1/h;->k:Lb1/k;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll1/h;->d:Ljava/lang/String;

    return-void
.end method

.method public k(Ll0/f;)V
    .locals 0

    iput-object p1, p0, Ll1/h;->j:Ll0/f;

    return-void
.end method

.method public l(Ll1/i;)V
    .locals 0

    iput-object p1, p0, Ll1/h;->i:Ll1/i;

    return-void
.end method

.method public m([B)V
    .locals 0

    iput-object p1, p0, Ll1/h;->g:[B

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Ll1/h;->e:I

    return v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Ll1/h;->e:I

    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, Ll1/h;->f:I

    return v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Ll1/h;->l:I

    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Ll1/h;->f:I

    return-void
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, Ll1/h;->g:[B

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Ll1/h;->b:I

    return v0
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Ll1/h;->b:I

    return-void
.end method

.method public x()Ll1/i;
    .locals 1

    iget-object v0, p0, Ll1/h;->i:Ll1/i;

    return-object v0
.end method

.method public y()Ll0/f;
    .locals 1

    iget-object v0, p0, Ll1/h;->j:Ll0/f;

    return-object v0
.end method

.method public z()Lb1/e;
    .locals 1

    iget-object v0, p0, Ll1/h;->a:Lb1/e;

    return-object v0
.end method
