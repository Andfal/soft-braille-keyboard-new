.class Lcom/benjaminwan/ocrlibrary/OcrUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benjaminwan/ocrlibrary/OcrUtils;->getMinBoxes(Lorg/opencv/core/RotatedRect;[Lorg/opencv/core/Point;)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/opencv/core/Point;",
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
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/opencv/core/Point;

    check-cast p2, Lorg/opencv/core/Point;

    invoke-virtual {p0, p1, p2}, Lcom/benjaminwan/ocrlibrary/OcrUtils$1;->compare(Lorg/opencv/core/Point;Lorg/opencv/core/Point;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/opencv/core/Point;Lorg/opencv/core/Point;)I
    .locals 2

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget-wide p1, p2, Lorg/opencv/core/Point;->x:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
