.class public Lq0/f$b;
.super Ll1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/d<",
        "Lq0/f$b;",
        ">;"
    }
.end annotation


# static fields
.field private static E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lb1/b;

.field private j:Lb1/c;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lq0/f$b;->E:Ljava/util/Set;

    sget-object v1, Lb1/g;->H:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ll1/d;-><init>()V

    sget-object v0, Lb1/b;->d:Lb1/b;

    iput-object v0, p0, Lq0/f$b;->i:Lb1/b;

    sget-object v0, Lb1/c;->o:Lb1/c;

    iput-object v0, p0, Lq0/f$b;->j:Lb1/c;

    const-string v0, "0"

    iput-object v0, p0, Lq0/f$b;->k:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lq0/f$b;->u:I

    const/16 v0, 0x3e8

    iput v0, p0, Lq0/f$b;->v:I

    sget-object v0, Lb1/l;->c:Lb1/l;

    invoke-virtual {v0}, Lb1/l;->b()I

    move-result v0

    iput v0, p0, Lq0/f$b;->w:I

    const/4 v0, -0x1

    iput v0, p0, Lq0/f$b;->y:I

    const-string v0, "https"

    iput-object v0, p0, Lq0/f$b;->z:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lq0/f$b;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->z:Ljava/lang/String;

    return-void
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lq0/f$b;->y:I

    return v0
.end method

.method public C(I)V
    .locals 0

    iput p1, p0, Lq0/f$b;->v:I

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->x:Ljava/lang/String;

    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->x:Ljava/lang/String;

    return-object v0
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lq0/f$b;->w:I

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->r:Ljava/lang/String;

    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->s:Ljava/lang/String;

    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->h:Ljava/lang/String;

    return-void
.end method

.method public L()Lb1/b;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->i:Lb1/b;

    return-object v0
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->t:Ljava/lang/String;

    return-void
.end method

.method public N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->i:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->k:Ljava/lang/String;

    return-void
.end method

.method public P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->n:Ljava/lang/String;

    return-void
.end method

.method public R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->o:Ljava/lang/String;

    return-void
.end method

.method public T()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->j:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->p:Ljava/lang/String;

    return-void
.end method

.method public V()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->q:Ljava/lang/String;

    return-void
.end method

.method public X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->B:Ljava/lang/String;

    return-void
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->C:Ljava/lang/String;

    return-void
.end method

.method public b0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->D:Ljava/lang/String;

    return-void
.end method

.method public d0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public e0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public f0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public g0()I
    .locals 1

    iget v0, p0, Lq0/f$b;->w:I

    return v0
.end method

.method public h0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->B:Ljava/lang/String;

    return-object v0
.end method

.method public i0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->C:Ljava/lang/String;

    return-object v0
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->D:Ljava/lang/String;

    return-object v0
.end method

.method public t(Lb1/b;)I
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lq0/f$b;->i:Lb1/b;

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->A:Ljava/lang/String;

    return-object v0
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Lq0/f$b;->y:I

    return-void
.end method

.method public w(Lb1/c;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->j:Lb1/c;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/f$b;->A:Ljava/lang/String;

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/f$b;->z:Ljava/lang/String;

    return-object v0
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lq0/f$b;->u:I

    return-void
.end method
