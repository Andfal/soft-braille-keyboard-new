.class public final Lo/u;
.super Lx/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$a;
    }
.end annotation


# static fields
.field public static final c:Lo/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/u;-><init>(I)V

    sput-object v0, Lo/u;->c:Lo/u;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx/h;-><init>(I)V

    return-void
.end method

.method public static q(Lo/i;I)Lo/u;
    .locals 13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v1, Lu/u;->d:Lu/u;

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v3

    new-array v4, v3, [Lo/u$a;

    const/4 v5, 0x0

    move-object v8, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v6, v3, :cond_6

    invoke-virtual {p0, v6}, Lo/i;->q(I)Lo/h;

    move-result-object v10

    instance-of v11, v10, Lo/e;

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lo/h;->k()Lu/u;

    move-result-object v11

    invoke-virtual {v11, v1}, Lu/u;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11, v8}, Lu/u;->b(Lu/u;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_4

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    new-instance v8, Lo/u$a;

    invoke-virtual {v10}, Lo/h;->f()I

    move-result v9

    invoke-direct {v8, v9, v11}, Lo/u$a;-><init>(ILu/u;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    move-object v8, v11

    const/4 v9, 0x0

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Lo/u;

    invoke-direct {p0, v7}, Lo/u;-><init>(I)V

    :goto_3
    if-ge v5, v7, :cond_7

    aget-object p1, v4, v5

    invoke-virtual {p0, v5, p1}, Lo/u;->r(ILo/u$a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lx/o;->f()V

    return-object p0

    :cond_8
    sget-object p0, Lo/u;->c:Lo/u;

    return-object p0
.end method


# virtual methods
.method public p(I)Lo/u$a;
    .locals 0

    invoke-virtual {p0, p1}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/u$a;

    return-object p1
.end method

.method public r(ILo/u$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx/h;->k(ILjava/lang/Object;)V

    return-void
.end method
