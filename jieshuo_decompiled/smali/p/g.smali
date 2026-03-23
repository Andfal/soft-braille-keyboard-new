.class public final Lp/g;
.super Lo/n;
.source "SourceFile"


# static fields
.field public static final b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    sput-object v0, Lp/g;->b:Lo/n;

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

    move-object v1, p2

    check-cast v1, Lo/f;

    invoke-virtual {v1}, Lo/f;->y()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    invoke-static {p2, v0}, Lo/n;->s(Lo/h;I)S

    move-result p2

    int-to-short v0, v1

    invoke-static {p1, p2, v0}, Lo/n;->G(Lx/a;SS)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public g(Lo/h;)Ljava/util/BitSet;
    .locals 5

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v3

    invoke-virtual {v3}, Lu/n;->l()I

    move-result v3

    invoke-static {v3}, Lo/n;->y(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    invoke-virtual {p1, v4}, Lu/p;->p(I)Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->l()I

    move-result p1

    if-ne v0, p1, :cond_1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public j(Lo/h;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/n;->i(Lo/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Lo/h;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lo/n;->h(Lo/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public l(Lo/h;)Z
    .locals 5

    instance-of v0, p1, Lo/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->l()I

    move-result v4

    invoke-virtual {v0, v3}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    if-eq v4, v0, :cond_3

    return v1

    :cond_2
    invoke-virtual {v0, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Lu/n;->l()I

    move-result v0

    invoke-static {v0}, Lo/n;->y(I)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    check-cast p1, Lo/f;

    invoke-virtual {p1}, Lo/f;->y()I

    move-result v0

    invoke-virtual {p1}, Lo/f;->x()Lv/a;

    move-result-object p1

    invoke-static {v0}, Lo/n;->A(I)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    instance-of v0, p1, Lv/w;

    if-nez v0, :cond_6

    instance-of v0, p1, Lv/j;

    if-nez v0, :cond_6

    instance-of p1, p1, Lv/v;

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method
