.class public Lcom/nirenr/talkman/TimerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static y:Lcom/nirenr/talkman/TimerService;


# instance fields
.field private a:Lcom/androlua/LuaTimer;

.field private b:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private c:Landroid/os/Vibrator;

.field private d:I

.field private e:J

.field private f:I

.field private g:Ljava/text/SimpleDateFormat;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/PowerManager;

.field private j:Landroid/os/PowerManager$WakeLock;

.field private k:Landroid/os/PowerManager$WakeLock;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:Landroid/media/SoundPool;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Lcom/androlua/LuaResources;

.field private u:Landroid/app/AlarmManager;

.field private v:Landroid/app/PendingIntent;

.field private w:Z

.field private x:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->h:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->l:Ljava/util/ArrayList;

    const v0, 0x5265c00

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->n:I

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/TimerService;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/TimerService;->m:I

    return p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method public static c()Lcom/nirenr/talkman/TimerService;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/TimerService;->y:Lcom/nirenr/talkman/TimerService;

    return-object v0
.end method

.method private f()Z
    .locals 2

    const v0, 0x7f070671

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 9

    const v0, 0x7f07061e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "60"

    invoke-static {p0, v0, v1}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v5, v0, v1

    iget-object v2, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    iget v3, p0, Lcom/nirenr/talkman/TimerService;->q:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSoundClockTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nirenr/talkman/TimerService;->x:J

    return-void
.end method

.method private j(I)V
    .locals 9

    const v0, 0x7f07061e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "60"

    invoke-static {p0, v0, v1}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v5, v0, v1

    iget-object v2, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    iget v3, p0, Lcom/nirenr/talkman/TimerService;->q:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, p1

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/nirenr/talkman/TimerService;->x:J

    return-void
.end method

.method private k()V
    .locals 9

    const v0, 0x7f07061e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "60"

    invoke-static {p0, v0, v1}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v5, v0, v1

    iget-object v2, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    iget v3, p0, Lcom/nirenr/talkman/TimerService;->r:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSoundTickTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nirenr/talkman/TimerService;->x:J

    return-void
.end method

.method public static n(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V
    .locals 1

    const-class v0, Lcom/nirenr/talkman/TimerService;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method private p()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimerService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f07066a

    const-string v3, "10"

    invoke-static {p0, v0, v3}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->f:I

    const v0, 0x7f07067e

    invoke-static {p0, v0}, Lk2/b0;->e(Landroid/content/Context;I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/nirenr/talkman/TimerService;->e:J

    const/4 v0, 0x1

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    const-string v4, ""

    const v5, 0x7f0701b5

    invoke-static {p0, v5, v4}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/nirenr/talkman/TimerService;->s:Z

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/nirenr/talkman/TimerService;->m:I

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_2

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lcom/nirenr/talkman/TimerService;->l:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const v3, 0x5265c00

    iput v3, p0, Lcom/nirenr/talkman/TimerService;->m:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nirenr/talkman/TimerService;->l:Ljava/util/ArrayList;

    :goto_2
    iget-wide v3, p0, Lcom/nirenr/talkman/TimerService;->e:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/nirenr/talkman/TimerService;->g()V

    iget-boolean v3, p0, Lcom/nirenr/talkman/TimerService;->w:Z

    const-wide/32 v4, 0xea60

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/androlua/LuaTimer;->stop()V

    :cond_4
    new-instance v3, Lcom/androlua/LuaTimer;

    new-instance v6, Lcom/nirenr/talkman/TimerService$a;

    invoke-direct {v6, p0}, Lcom/nirenr/talkman/TimerService$a;-><init>(Lcom/nirenr/talkman/TimerService;)V

    invoke-direct {v3, v6}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/util/TimerTaskX;)V

    iput-object v3, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v6, v7}, Lcom/androlua/LuaTimer;->setPeriod(J)V

    iget-object v3, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/nirenr/talkman/TimerService;->e:J

    sub-long/2addr v8, v10

    invoke-virtual {p0}, Lcom/nirenr/talkman/TimerService;->e()J

    move-result-wide v10

    sub-long/2addr v8, v10

    rem-long/2addr v8, v4

    sub-long v8, v4, v8

    invoke-virtual {v3, v8, v9, v6, v7}, Lcom/androlua/LuaTimer;->start(JJ)V

    iget-object v3, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    invoke-direct {p0}, Lcom/nirenr/talkman/TimerService;->f()Z

    move-result v6

    xor-int/2addr v6, v0

    invoke-virtual {v3, v6}, Lcom/androlua/LuaTimer;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/TimerService;->l(Z)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/nirenr/talkman/TimerService;->f()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/nirenr/talkman/TimerService;->h()V

    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v6, p0, Lcom/nirenr/talkman/TimerService;->e:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/nirenr/talkman/TimerService;->e:J

    sub-long/2addr v6, v8

    rem-long/2addr v6, v4

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private q()V
    .locals 3

    const-string v0, "TimerService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/nirenr/talkman/TimerService;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/androlua/LuaTimer;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->u:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/TimerService;->v:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_2
    :goto_0
    const v0, 0x7f070860

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3
    return-void

    :array_0
    .array-data 8
        0x64
        0x64
        0x64
        0x64
    .end array-data
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v2, v0, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    if-nez v2, :cond_0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, v0, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    :cond_0
    iget-object v2, v0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v3, v0, Lcom/nirenr/talkman/TimerService;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nextTimer timerInterval"

    invoke-virtual {v2, v4, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "nextTimer now"

    invoke-virtual {v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/nirenr/talkman/TimerService;->e:J

    sub-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/TimerService;->e()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    mul-long v1, v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/TimerService;->e()J

    div-long v3, v1, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    long-to-int v4, v3

    rem-int/lit8 v3, v4, 0xa

    div-int/lit8 v4, v4, 0xa

    rem-int/lit8 v4, v4, 0x6

    iget-boolean v3, v0, Lcom/nirenr/talkman/TimerService;->s:Z

    const v4, 0x7f0701d6

    const v5, 0x7f0701d5

    const v6, 0x7f0701d7

    const-wide/32 v7, 0x36ee80

    const-wide/32 v9, 0xea60

    const-string v11, "GTM+0"

    if-eqz v3, :cond_8

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v12, "0"

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "cur_timer_speak"

    invoke-interface {v13, v14, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    const-string v14, " "

    if-nez v12, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_1
    cmp-long v12, v1, v9

    if-gez v12, :cond_2

    new-instance v12, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    :cond_2
    cmp-long v12, v1, v7

    if-gez v12, :cond_3

    new-instance v12, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v12, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v12, "1"

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v0, Lcom/nirenr/talkman/TimerService;->m:I

    int-to-long v4, v3

    sub-long/2addr v4, v1

    cmp-long v1, v4, v9

    if-gez v1, :cond_5

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_3

    :cond_5
    cmp-long v1, v4, v7

    if-gez v1, :cond_6

    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0701d6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0701d5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f070675

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_8
    cmp-long v3, v1, v9

    if-gez v3, :cond_9

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_5

    :cond_9
    cmp-long v3, v1, v7

    if-gez v3, :cond_a

    new-instance v3, Ljava/text/SimpleDateFormat;

    const v4, 0x7f0701d6

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    new-instance v3, Ljava/text/SimpleDateFormat;

    const v4, 0x7f0701d5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public e()J
    .locals 6

    invoke-direct {p0}, Lcom/nirenr/talkman/TimerService;->f()Z

    move-result v0

    const v1, 0x7f070673

    if-eqz v0, :cond_0

    const v0, 0x7f070672

    invoke-static {p0, v0}, Lk2/b0;->e(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-static {p0, v1}, Lk2/b0;->e(Landroid/content/Context;I)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v4

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {p0, v1}, Lk2/b0;->e(Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()V
    .locals 9

    iget v0, p0, Lcom/nirenr/talkman/TimerService;->q:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/TimerService;->r:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->r:I

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->q:I

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_2
    const v0, 0x7f07085e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-static {p0, v0, v1}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->n:I

    const/16 v1, 0xa

    const/4 v2, 0x4

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v2, p0, Lcom/nirenr/talkman/TimerService;->n:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    const v0, 0x7f070605

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0708ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->p:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f06000c

    const v3, 0x7f060022

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->r:I

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->q:I

    return-void

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0701fb

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v7

    const-string v8, "config"

    invoke-virtual {v7, v0, v8}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "tick"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v6

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    invoke-virtual {v6, v5, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/nirenr/talkman/TimerService;->r:I

    :cond_5
    const-string v5, "clock"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v6

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->q:I

    :cond_6
    iget v0, p0, Lcom/nirenr/talkman/TimerService;->q:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->q:I

    :cond_7
    iget v0, p0, Lcom/nirenr/talkman/TimerService;->r:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->o:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/TimerService;->r:I

    :cond_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 5

    invoke-static {}, Lcom/androlua/LuaResources;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->t:Lcom/androlua/LuaResources;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/androlua/LuaResources;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v1, Lcom/androlua/LuaResources;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/androlua/LuaResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/nirenr/talkman/TimerService;->t:Lcom/androlua/LuaResources;

    return-object v1
.end method

.method public h()V
    .locals 22

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iput-object v0, v7, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    :cond_0
    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/nirenr/talkman/TimerService;->l(Z)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, v7, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    if-nez v1, :cond_2

    const-string v1, "vibrator"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, v7, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextTimer timerInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/nirenr/talkman/TimerService;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "TimerService"

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextTimer now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/TimerService;->e()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v7, Lcom/nirenr/talkman/TimerService;->e:J

    sub-long/2addr v1, v3

    sub-long/2addr v1, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v7, Lcom/nirenr/talkman/TimerService;->e:J

    sub-long/2addr v3, v5

    sub-long/2addr v3, v11

    const-wide/16 v5, 0x3e8

    div-long v5, v1, v5

    const-wide/16 v13, 0x3c

    div-long/2addr v5, v13

    long-to-int v13, v5

    rem-int/lit8 v5, v13, 0xa

    div-int/lit8 v6, v13, 0xa

    const/4 v14, 0x6

    rem-int/2addr v6, v14

    if-nez v6, :cond_3

    const/4 v6, 0x6

    :cond_3
    const/4 v15, 0x2

    mul-int/lit8 v6, v6, 0x2

    new-array v15, v6, [J

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v6, :cond_4

    const-wide/16 v16, 0x1f4

    aput-wide v16, v15, v14

    add-int/lit8 v16, v14, 0x1

    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getVibrateIntensity()I

    move-result v0

    move-wide/from16 v18, v11

    int-to-long v11, v0

    aput-wide v11, v15, v16

    add-int/lit8 v14, v14, 0x2

    move-wide/from16 v11, v18

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move-wide/from16 v18, v11

    const v0, 0x7f070860

    const/4 v6, 0x1

    invoke-static {v7, v0, v6}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    if-eqz v0, :cond_8

    const/16 v6, 0x19

    const/4 v11, -0x1

    if-eq v13, v6, :cond_6

    const/16 v6, 0x37

    if-eq v13, v6, :cond_6

    const/16 v6, 0x55

    if-eq v13, v6, :cond_6

    const/16 v6, 0x73

    if-eq v13, v6, :cond_6

    if-nez v5, :cond_5

    iget v5, v7, Lcom/nirenr/talkman/TimerService;->d:I

    if-eq v5, v13, :cond_8

    invoke-virtual {v0, v15, v11}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    :cond_5
    iget-object v5, v7, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getVibrateIntensity()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    :cond_6
    iget v5, v7, Lcom/nirenr/talkman/TimerService;->d:I

    if-ne v5, v13, :cond_7

    goto :goto_1

    :cond_7
    const/4 v5, 0x6

    new-array v5, v5, [J

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5, v11}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_8
    :goto_1
    iget v0, v7, Lcom/nirenr/talkman/TimerService;->m:I

    if-lez v0, :cond_9

    int-to-long v5, v0

    cmp-long v0, v1, v5

    if-ltz v0, :cond_9

    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerMode(Z)V

    return-void

    :cond_9
    const-wide/32 v11, 0xea60

    if-lez v13, :cond_19

    iget v0, v7, Lcom/nirenr/talkman/TimerService;->d:I

    if-eq v0, v13, :cond_19

    iget v0, v7, Lcom/nirenr/talkman/TimerService;->f:I

    rem-int v0, v13, v0

    if-nez v0, :cond_19

    const v0, 0x7f07085a

    const/4 v5, 0x1

    invoke-static {v7, v0, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    rem-int/lit8 v0, v13, 0x3c

    if-nez v0, :cond_a

    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->p:Ljava/lang/String;

    const v6, 0x7f0708ae

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {v7, v5}, Lcom/nirenr/talkman/TimerService;->j(I)V

    goto :goto_2

    :cond_a
    rem-int/lit8 v0, v13, 0x1e

    if-nez v0, :cond_c

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/TimerService;->i()V

    goto :goto_2

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/TimerService;->k()V

    :cond_d
    :goto_2
    const v0, 0x7f07085c

    const/4 v5, 0x1

    invoke-static {v7, v0, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, v7, Lcom/nirenr/talkman/TimerService;->s:Z

    const-wide/32 v20, 0x36ee80

    const-string v15, "GTM+0"

    if-eqz v0, :cond_16

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v14, "cur_timer_speak"

    invoke-interface {v5, v14, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v14, " "

    if-nez v6, :cond_e

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_e
    cmp-long v6, v1, v11

    if-gez v6, :cond_f

    new-instance v6, Ljava/text/SimpleDateFormat;

    const v11, 0x7f0701d7

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_4

    :cond_f
    cmp-long v6, v1, v20

    if-gez v6, :cond_10

    new-instance v6, Ljava/text/SimpleDateFormat;

    const v11, 0x7f0701d8

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    new-instance v6, Ljava/text/SimpleDateFormat;

    const v11, 0x7f0701d5

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v6, "1"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget v6, v7, Lcom/nirenr/talkman/TimerService;->m:I

    int-to-long v11, v6

    sub-long/2addr v11, v1

    const-wide/16 v1, 0x3a98

    add-long/2addr v11, v1

    const-wide/32 v1, 0xea60

    div-long/2addr v11, v1

    mul-long v11, v11, v1

    cmp-long v6, v11, v1

    if-gez v6, :cond_12

    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0701d7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_6

    :cond_12
    cmp-long v1, v11, v20

    if-gez v1, :cond_13

    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0701d8

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0701d5

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f070675

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v1, "2"

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, ""

    const/4 v11, 0x0

    aput-object v6, v2, v11

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v2, v6

    const v1, 0x7f070662

    invoke-virtual {v7, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->h:Landroid/os/Handler;

    new-instance v11, Lcom/nirenr/talkman/TimerService$b;

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/nirenr/talkman/TimerService$b;-><init>(Lcom/nirenr/talkman/TimerService;JLjava/util/Set;Ljava/lang/String;)V

    iget-wide v1, v7, Lcom/nirenr/talkman/TimerService;->x:J

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_16
    move-wide v5, v11

    cmp-long v0, v1, v5

    if-gez v0, :cond_17

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v5, 0x7f0701d7

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_8

    :cond_17
    cmp-long v0, v1, v20

    if-gez v0, :cond_18

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v5, 0x7f0701d8

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v5, 0x7f0701d5

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_8
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/nirenr/talkman/TimerService;->h:Landroid/os/Handler;

    new-instance v2, Lcom/nirenr/talkman/TimerService$c;

    invoke-direct {v2, v7, v3, v4, v0}, Lcom/nirenr/talkman/TimerService$c;-><init>(Lcom/nirenr/talkman/TimerService;JLjava/lang/String;)V

    iget-wide v3, v7, Lcom/nirenr/talkman/TimerService;->x:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_9
    iput v13, v7, Lcom/nirenr/talkman/TimerService;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextTimer start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v7, Lcom/nirenr/talkman/TimerService;->e:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, v7, Lcom/nirenr/talkman/TimerService;->e:J

    sub-long/2addr v0, v2

    sub-long v0, v0, v18

    iget v2, v7, Lcom/nirenr/talkman/TimerService;->f:I

    int-to-long v3, v2

    const-wide/32 v5, 0xea60

    mul-long v3, v3, v5

    int-to-long v11, v2

    mul-long v11, v11, v5

    rem-long/2addr v0, v11

    sub-long/2addr v3, v0

    long-to-int v0, v3

    const/16 v1, 0xe

    invoke-virtual {v9, v1, v0}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/nirenr/talkman/TimerService;->e:J

    sub-long/2addr v2, v4

    sub-long v2, v2, v18

    iget v0, v7, Lcom/nirenr/talkman/TimerService;->m:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1a

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/nirenr/talkman/TimerService;->e:J

    sub-long/2addr v2, v4

    sub-long v2, v2, v18

    iget v0, v7, Lcom/nirenr/talkman/TimerService;->m:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    long-to-int v0, v2

    neg-int v0, v0

    invoke-virtual {v9, v1, v0}, Ljava/util/GregorianCalendar;->add(II)V

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextTimer next "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v7, Lcom/nirenr/talkman/TimerService;->w:Z

    if-nez v0, :cond_1b

    :try_start_0
    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->u:Landroid/app/AlarmManager;

    new-instance v1, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, v7, Lcom/nirenr/talkman/TimerService;->v:Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3, v4}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    iget-object v2, v7, Lcom/nirenr/talkman/TimerService;->v:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v7, Lcom/nirenr/talkman/TimerService;->u:Landroid/app/AlarmManager;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, v7, Lcom/nirenr/talkman/TimerService;->v:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1b
    :goto_a
    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data
.end method

.method public l(Z)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/nirenr/talkman/TimerService;->y:Lcom/nirenr/talkman/TimerService;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSpeaking()Z

    :cond_2
    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/TimerService;->f:I

    return-void
.end method

.method public o(Z)V
    .locals 9

    const v0, 0x7f070671

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    const-string v0, "setTimerModePause "

    const-string v1, "TimerService"

    const v2, 0x7f070672

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v2

    const v3, 0x7f070456

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/a;->U(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lk2/b0;->e(Landroid/content/Context;I)J

    move-result-wide v2

    const v4, 0x7f070673

    invoke-static {p0, v4}, Lk2/b0;->e(Landroid/content/Context;I)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v2

    const v3, 0x7f070457

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/a;->U(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nirenr/talkman/TimerService;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/nirenr/talkman/TimerService;->p()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/TimerService;->q()V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "TimerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/nirenr/talkman/TimerService;->y:Lcom/nirenr/talkman/TimerService;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0701d3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->g:Ljava/text/SimpleDateFormat;

    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->u:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/util/TimerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->v:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "TimerService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/nirenr/talkman/TimerService;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/androlua/LuaTimer;->stop()V

    :cond_0
    iput-object v1, p0, Lcom/nirenr/talkman/TimerService;->a:Lcom/androlua/LuaTimer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService;->u:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/TimerService;->v:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_2
    :goto_0
    sput-object v1, Lcom/nirenr/talkman/TimerService;->y:Lcom/nirenr/talkman/TimerService;

    iput-object v1, p0, Lcom/nirenr/talkman/TimerService;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/TimerService;->l(Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    if-nez p1, :cond_0

    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    :cond_0
    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/nirenr/talkman/TimerService;->i:Landroid/os/PowerManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-6"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/TimerService;->j:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TimerService;->i:Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/TimerService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/nirenr/talkman/TimerService;->p()V

    const p1, 0x7f070860

    invoke-static {p0, p1, v0}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/TimerService;->c:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
