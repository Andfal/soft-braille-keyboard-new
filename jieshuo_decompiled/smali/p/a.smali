.class public final Lp/a;
.super Lo/n;
.source "SourceFile"


# static fields
.field public static final b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/a;

    invoke-direct {v0}, Lp/a;-><init>()V

    sput-object v0, Lp/a;->b:Lo/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/n;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Lx/a;Lo/h;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lo/z;

    invoke-virtual {v0}, Lo/z;->z()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p2, v0}, Lo/n;->s(Lo/h;I)S

    move-result p2

    invoke-static {p1, p2}, Lo/n;->B(Lx/a;S)V

    return-void
.end method

.method public b(Lo/z;)Z
    .locals 0

    invoke-virtual {p1}, Lo/z;->z()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/n;->v(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Lo/h;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lo/n;->c(Lo/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Lo/h;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lo/n;->a(Lo/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Lo/h;)Z
    .locals 1

    instance-of v0, p1, Lo/z;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lo/z;

    invoke-virtual {p1}, Lo/z;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lp/a;->b(Lo/z;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
