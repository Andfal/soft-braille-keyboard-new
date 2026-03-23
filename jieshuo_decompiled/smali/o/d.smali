.class public final Lo/d;
.super Lx/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx/h;",
        "Ljava/lang/Comparable<",
        "Lo/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/d;-><init>(I)V

    sput-object v0, Lo/d;->c:Lo/d;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/d;

    invoke-virtual {p0, p1}, Lo/d;->p(Lo/d;)I

    move-result p1

    return p1
.end method

.method public p(Lo/d;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lx/h;->size()I

    move-result v1

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Lo/d;->q(I)Lo/d$a;

    move-result-object v5

    invoke-virtual {p1, v4}, Lo/d;->q(I)Lo/d$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/d$a;->a(Lo/d$a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v1, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public q(I)Lo/d$a;
    .locals 0

    invoke-virtual {p0, p1}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/d$a;

    return-object p1
.end method

.method public r(ILo/d$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx/h;->k(ILjava/lang/Object;)V

    return-void
.end method
