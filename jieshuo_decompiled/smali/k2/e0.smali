.class public Lk2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static n:Ljava/lang/Integer;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Landroid/hardware/SensorManager;

.field private c:Z

.field private d:F

.field private e:Landroid/hardware/Sensor;

.field private f:Landroid/hardware/Sensor;

.field private g:Landroid/hardware/Sensor;

.field private h:Landroid/hardware/Sensor;

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:J


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0, p1}, Lk2/e0;->b(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method

.method private b(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 2

    const v0, 0x7f0705d7

    const-string v1, "20"

    invoke-static {p1, v0, v1}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lk2/e0;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lk2/e0;->n:Ljava/lang/Integer;

    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lk2/e0;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lk2/e0;->e:Landroid/hardware/Sensor;

    iget-object p1, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lk2/e0;->f:Landroid/hardware/Sensor;

    iget-object p1, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lk2/e0;->g:Landroid/hardware/Sensor;

    iget-object p1, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lk2/e0;->h:Landroid/hardware/Sensor;

    iput-boolean v1, p0, Lk2/e0;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static f(Ljava/lang/Integer;)V
    .locals 0

    sput-object p0, Lk2/e0;->n:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lk2/e0;->n:Ljava/lang/Integer;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lk2/e0;->d:F

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lk2/e0;->c:Z

    return v0
.end method

.method public d()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk2/e0;->i:J

    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-boolean v0, p0, Lk2/e0;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lk2/e0;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lk2/e0;->m:J

    if-eqz p1, :cond_1

    iget-object p1, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lk2/e0;->e:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lk2/e0;->e:Landroid/hardware/Sensor;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0, v0}, Lk2/e0;->b(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    :try_start_0
    iget-boolean v0, p0, Lk2/e0;->l:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lk2/e0;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lk2/e0;->f:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lk2/e0;->h:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lk2/e0;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eq v3, v4, :cond_9

    const/16 v4, 0x8

    const/4 v6, 0x1

    if-eq v3, v4, :cond_5

    const/16 p1, 0xa

    if-eq v3, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean p1, p0, Lk2/e0;->c:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    aget p1, v0, v5

    aget v3, v0, v6

    const/4 v4, 0x2

    aget v0, v0, v4

    iget-wide v6, p0, Lk2/e0;->k:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x1388

    cmp-long v4, v6, v8

    if-gez v4, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget-object v4, Lk2/e0;->n:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    cmpl-float p1, p1, v4

    if-lez p1, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41700000    # 15.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    iget-wide v3, p0, Lk2/e0;->j:J

    sub-long v3, v1, v3

    const-wide/16 v6, 0x3e8

    cmp-long p1, v3, v6

    if-lez p1, :cond_4

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f0705d5

    invoke-static {p1, v0, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->acceptCall()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iput-wide v1, p0, Lk2/e0;->k:J

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0705d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0705db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_4
    iput-wide v1, p0, Lk2/e0;->j:J

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    aget p1, v0, v5

    iget-object v0, p0, Lk2/e0;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    iput-boolean v6, p0, Lk2/e0;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lk2/e0;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseProixmitySensor()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoPrevious()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoNext()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoReadEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->stop()V

    :cond_6
    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAsyncUseProixmitySensor()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncStop()V

    :cond_7
    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseProximityFalseTouchPrevention()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setFalseTouchPrevention(Z)V

    goto :goto_0

    :cond_8
    iput-boolean v5, p0, Lk2/e0;->c:Z

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseProximityFalseTouchPrevention()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lk2/e0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setFalseTouchPrevention(Z)V

    goto :goto_0

    :cond_9
    aget p1, v0, v5

    iput p1, p0, Lk2/e0;->d:F

    :cond_a
    :goto_0
    return-void
.end method
