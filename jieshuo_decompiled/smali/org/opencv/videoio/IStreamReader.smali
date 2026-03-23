.class public Lorg/opencv/videoio/IStreamReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/videoio/IStreamReader;->nativeObj:J

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/videoio/IStreamReader;
    .locals 1

    new-instance v0, Lorg/opencv/videoio/IStreamReader;

    invoke-direct {v0, p0, p1}, Lorg/opencv/videoio/IStreamReader;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/IStreamReader;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/IStreamReader;->delete(J)V

    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/IStreamReader;->nativeObj:J

    return-wide v0
.end method
