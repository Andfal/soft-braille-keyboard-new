.class Lcom/baidu/location/c/e$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/e;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/c/e$e;->a:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/e$e;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e$e;-><init>(Lcom/baidu/location/c/e;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/c/e$e;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    if-ne v0, v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/e$e;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/location/b/w;->a(Landroid/location/Location;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/e$e;->b:J

    iget-object v0, p0, Lcom/baidu/location/c/e$e;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/c/e$e;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
