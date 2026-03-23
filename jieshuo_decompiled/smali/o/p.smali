.class public final Lo/p;
.super Lx/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/p$c;,
        Lo/p$b;,
        Lo/p$a;
    }
.end annotation


# static fields
.field public static final c:Lo/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/p;-><init>(I)V

    sput-object v0, Lo/p;->c:Lo/p;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx/h;-><init>(I)V

    return-void
.end method

.method public static q(Lo/i;)Lo/p;
    .locals 5

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    new-instance v1, Lo/p$c;

    invoke-direct {v1, v0}, Lo/p$c;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lo/i;->q(I)Lo/h;

    move-result-object v3

    instance-of v4, v3, Lo/q;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lo/q;

    invoke-virtual {v4}, Lo/q;->x()Lu/q;

    move-result-object v4

    invoke-virtual {v3}, Lo/h;->f()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lo/p$c;->i(ILu/q;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lo/r;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lo/r;

    invoke-virtual {v4}, Lo/r;->x()Lu/n;

    move-result-object v4

    invoke-virtual {v3}, Lo/h;->f()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lo/p$c;->j(ILu/n;)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lo/o;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lo/o;

    invoke-virtual {v4}, Lo/o;->x()Lu/n;

    move-result-object v4

    invoke-virtual {v3}, Lo/h;->f()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lo/p$c;->e(ILu/n;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lo/p$c;->h()Lo/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public p(I)Lo/p$b;
    .locals 0

    invoke-virtual {p0, p1}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/p$b;

    return-object p1
.end method

.method public r(ILo/p$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx/h;->k(ILjava/lang/Object;)V

    return-void
.end method
