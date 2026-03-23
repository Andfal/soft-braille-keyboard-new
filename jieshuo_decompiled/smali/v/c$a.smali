.class public final Lv/c$a;
.super Lx/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx/h;",
        "Ljava/lang/Comparable<",
        "Lv/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lv/c$a;

    invoke-virtual {p0, p1}, Lv/c$a;->p(Lv/c$a;)I

    move-result p1

    return p1
.end method

.method public p(Lv/c$a;)I
    .locals 7

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    invoke-virtual {p1}, Lx/h;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/a;

    invoke-virtual {p1, v4}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/a;

    invoke-virtual {v5, v6}, Lv/a;->d(Lv/a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v0, v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v3
.end method

.method public q(I)Lv/a;
    .locals 0

    invoke-virtual {p0, p1}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv/a;

    return-object p1
.end method

.method public r(ILv/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx/h;->k(ILjava/lang/Object;)V

    return-void
.end method
