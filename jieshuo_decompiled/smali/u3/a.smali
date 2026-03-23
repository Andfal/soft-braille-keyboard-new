.class public Lu3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu3/a;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lu3/a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget v0, p0, Lu3/a;->a:I

    and-int/2addr p1, v0

    return p1
.end method

.method public b(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lu3/a;->a(I)I

    move-result p1

    iget v0, p0, Lu3/a;->b:I

    shr-int/2addr p1, v0

    return p1
.end method
