.class Lw3/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/y;->k(Lw3/z2;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_1

    instance-of p1, p2, Lw3/i3;

    if-eqz p1, :cond_8

    :cond_1
    return v1

    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    return v2

    :cond_4
    instance-of p1, p2, Lw3/i3;

    if-eqz p1, :cond_8

    return v1

    :cond_5
    instance-of v0, p1, Lw3/i3;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lw3/i3;

    if-eqz v0, :cond_6

    check-cast p1, Lw3/i3;

    invoke-static {p1}, Lw3/y;->a(Lw3/i3;)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lw3/i3;

    invoke-static {p2}, Lw3/y;->a(Lw3/i3;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    instance-of p1, p2, Ljava/lang/Integer;

    if-nez p1, :cond_7

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_8

    :cond_7
    return v2

    :cond_8
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
