.class Lcom/baidu/location/c/e$a;
.super Landroid/location/GnssStatus$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e$a;-><init>(Lcom/baidu/location/c/e;)V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0

    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 10

    iget-object v0, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->d(Lcom/baidu/location/c/e;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;J)J

    invoke-static {p1}, Lcom/baidu/location/c/n;->a(Landroid/location/GnssStatus;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->e(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v4, v4, 0x1

    invoke-static {p1, v1}, Lcom/baidu/location/c/q;->a(Landroid/location/GnssStatus;I)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v1}, Lcom/baidu/location/c/r;->a(Landroid/location/GnssStatus;I)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v1}, Lcom/baidu/location/c/s;->a(Landroid/location/GnssStatus;I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lcom/baidu/location/c/t;->a(Landroid/location/GnssStatus;I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lcom/baidu/location/c/o;->a(Landroid/location/GnssStatus;I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lcom/baidu/location/c/p;->a(Landroid/location/GnssStatus;I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {v6}, Lcom/baidu/location/c/e;->e(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {v6}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/baidu/location/c/r;->a(Landroid/location/GnssStatus;I)I

    move-result v5

    invoke-static {p1, v1}, Lcom/baidu/location/c/s;->a(Landroid/location/GnssStatus;I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lcom/baidu/location/c/t;->a(Landroid/location/GnssStatus;I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lcom/baidu/location/c/o;->a(Landroid/location/GnssStatus;I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lcom/baidu/location/c/p;->a(Landroid/location/GnssStatus;I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {v5}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->g(Lcom/baidu/location/c/e;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/c/e;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->h(Lcom/baidu/location/c/e;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/c/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/location/c/e;->a(I)I

    invoke-static {v3}, Lcom/baidu/location/c/e;->b(I)I

    invoke-static {v4}, Lcom/baidu/location/c/e;->c(I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/location/c/e;->a(J)J

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Z)V

    invoke-static {v1}, Lcom/baidu/location/c/e;->a(I)I

    invoke-static {v1}, Lcom/baidu/location/c/e;->b(I)I

    return-void
.end method
