.class public final synthetic Lcom/baidu/location/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    move-result p0

    return p0
.end method
