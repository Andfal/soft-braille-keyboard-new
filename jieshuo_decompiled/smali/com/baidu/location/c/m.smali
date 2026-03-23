.class public final synthetic Lcom/baidu/location/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z

    move-result p0

    return p0
.end method
