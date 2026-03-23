.class public final Lp2/a;
.super Lp2/d;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    invoke-static {p0, p1}, Lp2/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b()Ljava/util/Comparator;
    .locals 1

    invoke-static {}, Lp2/b;->b()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
