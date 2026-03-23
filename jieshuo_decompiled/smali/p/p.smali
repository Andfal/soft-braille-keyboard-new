.class public final Lp/p;
.super Lo/n;
.source "SourceFile"


# static fields
.field public static final b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/p;

    invoke-direct {v0}, Lp/p;-><init>()V

    sput-object v0, Lp/p;->b:Lo/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/n;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Lx/a;Lo/h;)V
    .locals 3

    invoke-virtual {p2}, Lo/h;->l()Lu/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v1

    invoke-virtual {v1}, Lu/n;->l()I

    move-result v1

    invoke-static {p2, v1}, Lo/n;->s(Lo/h;I)S

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v1

    invoke-virtual {v1}, Lu/n;->l()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    invoke-static {v1, v0}, Lo/n;->e(II)S

    move-result v0

    invoke-static {p1, p2, v0}, Lo/n;->G(Lx/a;SS)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public g(Lo/h;)Ljava/util/BitSet;
    .locals 3

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->l()I

    move-result v2

    invoke-static {v2}, Lo/n;->y(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->l()I

    move-result v2

    invoke-static {v2}, Lo/n;->y(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x2

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
    .locals 3

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v1

    invoke-virtual {v1}, Lu/n;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->l()I

    move-result p1

    invoke-static {p1}, Lo/n;->y(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->l()I

    move-result v2

    invoke-static {v2}, Lo/n;->y(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    invoke-static {v0}, Lo/n;->y(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
