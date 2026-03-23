.class public final Lp/w;
.super Lo/n;
.source "SourceFile"


# static fields
.field public static final b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/w;

    invoke-direct {v0}, Lp/w;-><init>()V

    sput-object v0, Lp/w;->b:Lo/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/n;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Lx/a;Lo/h;)V
    .locals 4

    invoke-virtual {p2}, Lo/h;->l()Lu/p;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lo/f;

    invoke-virtual {v1}, Lo/f;->y()I

    move-result v1

    invoke-virtual {v0}, Lx/h;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lu/p;->p(I)Lu/n;

    move-result-object v2

    invoke-virtual {v2}, Lu/n;->l()I

    move-result v3

    :goto_0
    invoke-virtual {v0}, Lu/p;->q()I

    move-result v0

    invoke-static {p2, v0}, Lo/n;->s(Lo/h;I)S

    move-result p2

    int-to-short v0, v1

    int-to-short v1, v3

    invoke-static {p1, p2, v0, v1}, Lo/n;->H(Lx/a;SSS)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public j(Lo/h;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object v1

    invoke-static {v1}, Lo/n;->u(Lu/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/n;->i(Lo/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .locals 3

    instance-of v0, p1, Lo/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lo/f;

    invoke-virtual {p1}, Lo/f;->y()I

    move-result v0

    invoke-virtual {p1}, Lo/f;->x()Lv/a;

    move-result-object v2

    invoke-static {v0}, Lo/n;->A(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v0, v2, Lv/s;

    if-nez v0, :cond_2

    instance-of v0, v2, Lv/w;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lo/n;->m(Lu/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lu/p;->p(I)Lu/n;

    move-result-object v0

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    invoke-static {v0}, Lo/n;->A(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lu/p;->q()I

    move-result p1

    invoke-static {p1}, Lo/n;->y(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
