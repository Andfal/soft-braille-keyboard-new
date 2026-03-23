.class abstract Lw3/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h(I)Z
    .locals 1

    const/16 v0, -0x42

    if-gt v0, p0, :cond_0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static i(I)Z
    .locals 1

    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/16 v0, 0x52

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
