.class public final Lp/d;
.super Lo/n;
.source "SourceFile"


# static fields
.field public static final b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/d;

    invoke-direct {v0}, Lp/d;-><init>()V

    sput-object v0, Lp/d;->b:Lo/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/n;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Lx/a;Lo/h;)V
    .locals 2

    invoke-virtual {p2}, Lo/h;->l()Lu/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    invoke-static {p2, v0}, Lo/n;->s(Lo/h;I)S

    move-result p2

    invoke-static {p1, p2}, Lo/n;->B(Lx/a;S)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(Lo/h;)Ljava/util/BitSet;
    .locals 2

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->l()I

    move-result p1

    invoke-static {p1}, Lo/n;->y(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public j(Lo/h;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Lo/h;Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public l(Lo/h;)Z
    .locals 3

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object v0

    instance-of p1, p1, Lo/x;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lx/h;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->l()I

    move-result p1

    invoke-static {p1}, Lo/n;->y(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
