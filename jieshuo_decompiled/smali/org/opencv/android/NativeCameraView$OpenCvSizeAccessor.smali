.class public Lorg/opencv/android/NativeCameraView$OpenCvSizeAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/android/NativeCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenCvSizeAccessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lorg/opencv/core/Size;

    iget-wide v0, p1, Lorg/opencv/core/Size;->height:D

    double-to-int p1, v0

    return p1
.end method

.method public getWidth(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lorg/opencv/core/Size;

    iget-wide v0, p1, Lorg/opencv/core/Size;->width:D

    double-to-int p1, v0

    return p1
.end method
