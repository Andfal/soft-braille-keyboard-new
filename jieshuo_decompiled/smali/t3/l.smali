.class public Lt3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lt3/k;Ls3/g;I)Lt3/d;
    .locals 1

    new-instance v0, Lt3/n;

    invoke-virtual {p1}, Ls3/d;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lt3/k;->b(I)[Lt3/i;

    move-result-object p1

    invoke-static {p1}, Lt3/m;->b([Lt3/i;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lt3/n;-><init>(Ljava/util/List;)V

    new-instance p1, Lt3/c;

    invoke-virtual {p0, p2}, Lt3/k;->b(I)[Lt3/i;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lt3/c;-><init>([Lt3/i;Lt3/d;)V

    return-object v0
.end method
