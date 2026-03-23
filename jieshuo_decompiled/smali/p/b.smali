.class public final Lp/b;
.super Lo/n;
.source "SourceFile"


# static fields
.field public static final b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/b;

    invoke-direct {v0}, Lp/b;-><init>()V

    sput-object v0, Lp/b;->b:Lo/n;

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

    const/4 v0, 0x0

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

.method public j(Lo/h;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public k(Lo/h;Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public l(Lo/h;)Z
    .locals 1

    instance-of v0, p1, Lo/x;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/h;->l()Lu/p;

    move-result-object p1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
