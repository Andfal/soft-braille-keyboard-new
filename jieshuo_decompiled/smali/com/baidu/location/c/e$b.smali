.class Lcom/baidu/location/c/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/e;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/e$b;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e$b;-><init>(Lcom/baidu/location/c/e;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 10

    iget-object v0, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->d(Lcom/baidu/location/c/e;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->i(Lcom/baidu/location/c/e;)Landroid/location/GpsStatus;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->d(Lcom/baidu/location/c/e;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->d(Lcom/baidu/location/c/e;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->i(Lcom/baidu/location/c/e;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_0
    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->i(Lcom/baidu/location/c/e;)Landroid/location/GpsStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v0, v2}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;I)I

    iget-object v0, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v0, v2}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;I)I

    iget-object v0, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->e(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;J)J

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v7

    const/16 v8, 0x41

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    float-to-double v6, v6

    add-double/2addr v0, v6

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v6}, Lcom/baidu/location/c/e;->e(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v6}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v5}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v4

    sget v5, Lcom/baidu/location/e/k;->H:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {v4}, Lcom/baidu/location/c/e;->j(Lcom/baidu/location/c/e;)I

    goto/16 :goto_1

    :cond_6
    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->g(Lcom/baidu/location/c/e;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/c/e;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->h(Lcom/baidu/location/c/e;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/c/e;->b:Ljava/lang/String;

    if-lez v2, :cond_7

    invoke-static {v2}, Lcom/baidu/location/c/e;->b(I)I

    int-to-double v4, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lcom/baidu/location/c/e;->a(D)D

    :cond_7
    if-lez v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_3
    iput-wide v0, p0, Lcom/baidu/location/c/e$b;->b:J

    invoke-static {v3}, Lcom/baidu/location/c/e;->a(I)I

    goto :goto_4

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/baidu/location/c/e$b;->b:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x64

    cmp-long p1, v0, v4

    if-lez p1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_3

    :cond_9
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/location/c/e;->a(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1, v1}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Landroid/location/Location;)V

    iget-object p1, p0, Lcom/baidu/location/c/e$b;->a:Lcom/baidu/location/c/e;

    invoke-static {p1, v2}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Z)V

    invoke-static {v2}, Lcom/baidu/location/c/e;->a(I)I

    invoke-static {v2}, Lcom/baidu/location/c/e;->b(I)I

    :catch_0
    :goto_5
    return-void
.end method
