.class public final Lp/a0;
.super Lo/n;
.source "SourceFile"


# static fields
.field public static final b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/a0;

    invoke-direct {v0}, Lp/a0;-><init>()V

    sput-object v0, Lp/a0;->b:Lo/n;

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

    invoke-static {p2}, Lo/n;->r(Lo/h;)S

    move-result p2

    int-to-short v0, v0

    int-to-short v2, v3

    invoke-static {p1, p2, v1, v0, v2}, Lo/n;->E(Lx/a;SISS)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x5

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

    sget-boolean v0, Lo/n;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lo/f;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lo/f;

    invoke-virtual {p1}, Lo/f;->x()Lv/a;

    move-result-object v0

    instance-of v2, v0, Lv/s;

    if-nez v2, :cond_2

    instance-of v0, v0, Lv/w;

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

    invoke-static {p1}, Lo/n;->A(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
