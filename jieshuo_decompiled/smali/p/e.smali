.class public final Lp/e;
.super Lo/n;
.source "SourceFile"


# static fields
.field public static final b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/e;

    invoke-direct {v0}, Lp/e;-><init>()V

    sput-object v0, Lp/e;->b:Lo/n;

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

    invoke-virtual {v0}, Lx/h;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->l()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    invoke-static {v2, v0}, Lo/n;->q(II)I

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
    .locals 3

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->l()I

    move-result v2

    invoke-static {v2}, Lo/n;->z(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->l()I

    move-result p1

    invoke-static {p1}, Lo/n;->z(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public j(Lo/h;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p1, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Lo/h;Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public l(Lo/h;)Z
    .locals 5

    instance-of v0, p1, Lo/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v3}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {p1, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v4

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->l()I

    move-result p1

    if-eq v4, p1, :cond_3

    return v1

    :cond_2
    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {p1, v3}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    :cond_3
    invoke-virtual {v0}, Lu/n;->l()I

    move-result p1

    invoke-static {p1}, Lo/n;->z(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lu/n;->l()I

    move-result p1

    invoke-static {p1}, Lo/n;->z(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method
