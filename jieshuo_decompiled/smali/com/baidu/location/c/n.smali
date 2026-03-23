.class public final synthetic Lcom/baidu/location/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/GnssStatus;)I
    .locals 0

    invoke-virtual {p0}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result p0

    return p0
.end method
