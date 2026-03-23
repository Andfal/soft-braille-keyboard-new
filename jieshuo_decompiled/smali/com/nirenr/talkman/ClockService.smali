.class public Lcom/nirenr/talkman/ClockService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static r:Lcom/androlua/LuaTimer;

.field private static s:Lcom/nirenr/talkman/ClockService;


# instance fields
.field private a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:I

.field private c:Ljava/text/SimpleDateFormat;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Landroid/media/SoundPool;

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/androlua/LuaResources;

.field private n:Landroid/app/AlarmManager;

.field private o:Landroid/app/PendingIntent;

.field private p:Z

.field private q:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->b:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/ClockService;->g:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/ClockService;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/ClockService;->b:I

    return v0
.end method

.method public static c()Lcom/nirenr/talkman/ClockService;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/ClockService;->s:Lcom/nirenr/talkman/ClockService;

    return-object v0
.end method

.method private g()V
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

    iget-object v2, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    iget v3, p0, Lcom/nirenr/talkman/ClockService;->i:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSoundClockTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nirenr/talkman/ClockService;->q:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoundClockTime 2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/nirenr/talkman/ClockService;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clock"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h(I)V
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

    iget-object v2, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    iget v3, p0, Lcom/nirenr/talkman/ClockService;->i:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, p1

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/nirenr/talkman/ClockService;->q:J

    return-void
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

    iget-object v2, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    iget v3, p0, Lcom/nirenr/talkman/ClockService;->j:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSoundTickTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nirenr/talkman/ClockService;->q:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoundClockTime 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/nirenr/talkman/ClockService;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clock"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static j(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V
    .locals 1

    const-class v0, Lcom/nirenr/talkman/ClockService;

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


# virtual methods
.method public d()V
    .locals 9

    iget v0, p0, Lcom/nirenr/talkman/ClockService;->i:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/ClockService;->j:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->j:I

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->i:I

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

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

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->k:I

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

    iget v2, p0, Lcom/nirenr/talkman/ClockService;->k:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    const v0, 0x7f070605

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0708ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/ClockService;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f06000c

    const v3, 0x7f060022

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->j:I

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->i:I

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

    iget-object v6, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    invoke-virtual {v6, v5, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/nirenr/talkman/ClockService;->j:I

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

    iget-object v1, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->i:I

    :cond_6
    iget v0, p0, Lcom/nirenr/talkman/ClockService;->i:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->i:I

    :cond_7
    iget v0, p0, Lcom/nirenr/talkman/ClockService;->j:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->h:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/ClockService;->j:I

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

.method public e()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/nirenr/talkman/ClockService;->n:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lcom/nirenr/talkman/ClockService;->n:Landroid/app/AlarmManager;

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v3, v1, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "nextAlarm now"

    invoke-virtual {v3, v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static/range {p0 .. p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const v7, 0x7f070021

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget v7, v1, Lcom/nirenr/talkman/ClockService;->d:I

    :goto_0
    iget v8, v1, Lcom/nirenr/talkman/ClockService;->e:I

    if-gt v7, v8, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_1e

    const v3, 0x7f07085a

    invoke-static {v1, v3, v7}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v3

    const/16 v9, 0x1e

    if-eqz v3, :cond_6

    if-nez v5, :cond_3

    iget-object v3, v1, Lcom/nirenr/talkman/ClockService;->l:Ljava/lang/String;

    const v10, 0x7f0708ae

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {v1, v7}, Lcom/nirenr/talkman/ClockService;->h(I)V

    goto :goto_1

    :cond_3
    if-ne v5, v9, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/ClockService;->g()V

    goto :goto_1

    :cond_5
    iget v3, v1, Lcom/nirenr/talkman/ClockService;->b:I

    rem-int v3, v5, v3

    if-nez v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/ClockService;->i()V

    :cond_6
    :goto_1
    iget v3, v1, Lcom/nirenr/talkman/ClockService;->b:I

    rem-int v3, v5, v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/nirenr/talkman/ClockService;->g:Landroid/os/Handler;

    new-instance v10, Lcom/nirenr/talkman/ClockService$c;

    invoke-direct {v10, v1}, Lcom/nirenr/talkman/ClockService$c;-><init>(Lcom/nirenr/talkman/ClockService;)V

    iget-boolean v11, v1, Lcom/nirenr/talkman/ClockService;->f:Z

    if-eqz v11, :cond_7

    iget-wide v11, v1, Lcom/nirenr/talkman/ClockService;->q:J

    goto :goto_2

    :cond_7
    const-wide/16 v11, 0x3e8

    :goto_2
    invoke-virtual {v3, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iget v3, v1, Lcom/nirenr/talkman/ClockService;->b:I

    const/4 v10, 0x5

    const/16 v12, 0x28

    const/16 v13, 0x2d

    const/16 v14, 0x14

    const/16 v15, 0xf

    const/16 v11, 0xa

    if-eq v3, v10, :cond_13

    if-eq v3, v11, :cond_e

    if-eq v3, v15, :cond_b

    if-eq v3, v9, :cond_a

    const/16 v5, 0x3c

    if-eq v3, v5, :cond_9

    goto/16 :goto_b

    :cond_9
    invoke-virtual {v2, v0, v7}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v2, v4, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_b

    :cond_a
    if-ge v5, v9, :cond_9

    :goto_3
    invoke-virtual {v2, v4, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_b

    :cond_b
    if-ge v5, v15, :cond_c

    :goto_4
    invoke-virtual {v2, v4, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_b

    :cond_c
    if-ge v5, v9, :cond_d

    :goto_5
    goto :goto_3

    :cond_d
    if-ge v5, v13, :cond_9

    :goto_6
    invoke-virtual {v2, v4, v13}, Ljava/util/Calendar;->set(II)V

    goto :goto_b

    :cond_e
    if-ge v5, v11, :cond_f

    :goto_7
    invoke-virtual {v2, v4, v11}, Ljava/util/Calendar;->set(II)V

    goto :goto_b

    :cond_f
    if-ge v5, v14, :cond_10

    :goto_8
    invoke-virtual {v2, v4, v14}, Ljava/util/Calendar;->set(II)V

    goto :goto_b

    :cond_10
    if-ge v5, v9, :cond_11

    goto :goto_3

    :cond_11
    if-ge v5, v12, :cond_12

    :goto_9
    invoke-virtual {v2, v4, v12}, Ljava/util/Calendar;->set(II)V

    goto :goto_b

    :cond_12
    const/16 v3, 0x32

    if-ge v5, v3, :cond_9

    goto :goto_a

    :cond_13
    if-ge v5, v10, :cond_14

    invoke-virtual {v2, v4, v10}, Ljava/util/Calendar;->set(II)V

    goto :goto_b

    :cond_14
    if-ge v5, v11, :cond_15

    goto :goto_7

    :cond_15
    if-ge v5, v15, :cond_16

    goto :goto_4

    :cond_16
    if-ge v5, v14, :cond_17

    goto :goto_8

    :cond_17
    const/16 v3, 0x19

    if-ge v5, v3, :cond_18

    :goto_a
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_b

    :cond_18
    if-ge v5, v9, :cond_19

    goto :goto_5

    :cond_19
    const/16 v3, 0x23

    if-ge v5, v3, :cond_1a

    goto :goto_a

    :cond_1a
    if-ge v5, v12, :cond_1b

    goto :goto_9

    :cond_1b
    if-ge v5, v13, :cond_1c

    goto :goto_6

    :cond_1c
    const/16 v3, 0x32

    if-ge v5, v3, :cond_1d

    goto :goto_a

    :cond_1d
    const/16 v3, 0x37

    if-ge v5, v3, :cond_9

    goto :goto_a

    :cond_1e
    :goto_b
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2, v0, v7}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v2, v4, v8}, Ljava/util/Calendar;->set(II)V

    :cond_1f
    const/16 v0, 0xd

    invoke-virtual {v2, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v3, v1, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "nextAlarm next"

    invoke-virtual {v3, v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_20

    :try_start_0
    iget-object v0, v1, Lcom/nirenr/talkman/ClockService;->n:Landroid/app/AlarmManager;

    new-instance v3, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, v1, Lcom/nirenr/talkman/ClockService;->o:Landroid/app/PendingIntent;

    invoke-direct {v3, v4, v5, v6}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    iget-object v4, v1, Lcom/nirenr/talkman/ClockService;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    iget-object v3, v1, Lcom/nirenr/talkman/ClockService;->n:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v2, v1, Lcom/nirenr/talkman/ClockService;->o:Landroid/app/PendingIntent;

    invoke-virtual {v3, v8, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_c

    :cond_20
    :try_start_1
    iget-object v0, v1, Lcom/nirenr/talkman/ClockService;->n:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/nirenr/talkman/ClockService;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public f()V
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v2, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "nextAlarm now"

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseAlarm()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "nextAlarm now2"

    invoke-virtual {v0, v4, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseAlarm()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/nirenr/talkman/ClockService;->d:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/nirenr/talkman/ClockService;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v4, 0x7f070021

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget v4, p0, Lcom/nirenr/talkman/ClockService;->d:I

    :goto_0
    iget v6, p0, Lcom/nirenr/talkman/ClockService;->e:I

    if-gt v4, v6, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sput-object v5, Lcom/nirenr/talkman/ClockService;->s:Lcom/nirenr/talkman/ClockService;

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/nirenr/talkman/ClockService;->s:Lcom/nirenr/talkman/ClockService;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/nirenr/talkman/ClockService;->d()V

    :cond_4
    sput-object p0, Lcom/nirenr/talkman/ClockService;->s:Lcom/nirenr/talkman/ClockService;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Lcom/nirenr/talkman/ClockService;->b()I

    move-result v2

    rem-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nirenr/talkman/ClockService;->b()I

    move-result v1

    rem-int v1, v0, v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/nirenr/talkman/ClockService;->f:Z

    if-eqz v1, :cond_9

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->l:Ljava/lang/String;

    const v1, 0x7f0708ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/ClockService;->h(I)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/nirenr/talkman/ClockService;->g()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/nirenr/talkman/ClockService;->i()V

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->g:Landroid/os/Handler;

    new-instance v1, Lcom/nirenr/talkman/ClockService$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ClockService$b;-><init>(Lcom/nirenr/talkman/ClockService;)V

    iget-boolean v2, p0, Lcom/nirenr/talkman/ClockService;->f:Z

    if-eqz v2, :cond_a

    iget-wide v2, p0, Lcom/nirenr/talkman/ClockService;->q:J

    goto :goto_2

    :cond_a
    const-wide/16 v2, 0x3e8

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
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
    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->m:Lcom/androlua/LuaResources;

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

    iput-object v1, p0, Lcom/nirenr/talkman/ClockService;->m:Lcom/androlua/LuaResources;

    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ClockService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/nirenr/talkman/ClockService;->s:Lcom/nirenr/talkman/ClockService;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0701d3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/nirenr/talkman/ClockService;->c:Ljava/text/SimpleDateFormat;

    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/nirenr/talkman/ClockService;->n:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/util/AlarmReceiver;

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

    iput-object v0, p0, Lcom/nirenr/talkman/ClockService;->o:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "ClockService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/nirenr/talkman/ClockService;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nirenr/talkman/ClockService;->r:Lcom/androlua/LuaTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/androlua/LuaTimer;->stop()V

    :cond_0
    sput-object v1, Lcom/nirenr/talkman/ClockService;->r:Lcom/androlua/LuaTimer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->n:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/ClockService;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_2
    :goto_0
    sput-object v1, Lcom/nirenr/talkman/ClockService;->s:Lcom/nirenr/talkman/ClockService;

    iput-object v1, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/nirenr/talkman/ClockService;->r:Lcom/androlua/LuaTimer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClockService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/ClockService;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseAlarm()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const p1, 0x7f070026

    const-string v1, "8"

    invoke-static {p0, p1, v1}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/ClockService;->d:I

    const p1, 0x7f07001f

    const-string v1, "23"

    invoke-static {p0, p1, v1}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/ClockService;->e:I

    const p1, 0x7f070023

    const-string v1, "15"

    invoke-static {p0, p1, v1}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/ClockService;->b:I

    const p1, 0x7f07085a

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nirenr/talkman/ClockService;->f:Z

    invoke-virtual {p0}, Lcom/nirenr/talkman/ClockService;->d()V

    iget-boolean p1, p0, Lcom/nirenr/talkman/ClockService;->p:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/nirenr/talkman/ClockService;->r:Lcom/androlua/LuaTimer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/androlua/LuaTimer;->stop()V

    :cond_3
    new-instance p1, Lcom/androlua/LuaTimer;

    new-instance v1, Lcom/nirenr/talkman/ClockService$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ClockService$a;-><init>(Lcom/nirenr/talkman/ClockService;)V

    invoke-direct {p1, v1}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/util/TimerTaskX;)V

    sput-object p1, Lcom/nirenr/talkman/ClockService;->r:Lcom/androlua/LuaTimer;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v1, v2}, Lcom/androlua/LuaTimer;->setPeriod(J)V

    sget-object p1, Lcom/nirenr/talkman/ClockService;->r:Lcom/androlua/LuaTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    rem-long/2addr v3, v1

    sub-long v3, v1, v3

    invoke-virtual {p1, v3, v4, v1, v2}, Lcom/androlua/LuaTimer;->start(JJ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    rem-long/2addr v3, v1

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/nirenr/talkman/ClockService;->e()V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
