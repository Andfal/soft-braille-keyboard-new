.class Lcom/baidu/location/c/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e$c;-><init>(Lcom/baidu/location/c/e;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/baidu/location/c/e;->k()I

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "satellites"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->c(Lcom/baidu/location/c/e;)J

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sget-boolean v0, Lcom/baidu/location/e/k;->m:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Z)V

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v0, p1}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Landroid/location/Location;)V

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Z)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Landroid/location/Location;)V

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Z)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {p2, p1}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Z)Z

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;J)J

    iget-object p2, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {p2, p3}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Z)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Landroid/location/Location;)V

    :goto_0
    iget-object p2, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {p2, p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Z)V

    :goto_1
    return-void
.end method
