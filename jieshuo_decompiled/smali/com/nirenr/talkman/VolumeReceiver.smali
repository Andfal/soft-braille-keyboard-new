.class public Lcom/nirenr/talkman/VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final g:Landroid/util/SparseIntArray;

.field private static final h:Landroid/util/SparseIntArray;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Landroid/media/AudioManager;

.field private final c:Landroid/telephony/TelephonyManager;

.field private d:J

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/VolumeReceiver;->g:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/nirenr/talkman/VolumeReceiver;->h:Landroid/util/SparseIntArray;

    const/16 v1, -0x64

    const v2, 0x7f0708b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x0

    const v2, 0x7f0708b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x1

    const v2, 0x7f0708b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const v2, 0x7f0708b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    const v2, 0x7f0708b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    const v2, 0x7f0708b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x5

    const v2, 0x7f0708b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x8

    const v2, 0x7f0708b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0xa

    const v2, 0x7f0708b1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nirenr/talkman/VolumeReceiver;->b:Landroid/media/AudioManager;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->c:Landroid/telephony/TelephonyManager;

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sget-object v1, Lcom/nirenr/talkman/VolumeReceiver;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/VolumeReceiver;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-gtz p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(I)I
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/VolumeReceiver;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/VolumeReceiver;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public d(I)I
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/VolumeReceiver;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public e(III)V
    .locals 11

    iget-object v0, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nirenr/talkman/VolumeReceiver;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onVolumeChanged1"

    invoke-virtual {v0, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/VolumeReceiver;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    iget-object v0, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onVolumeChanged11"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-wide v4, v3, Lcom/nirenr/talkman/TalkManAccessibilityService;->e:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    const/4 v6, -0x1

    cmp-long v7, v0, v4

    if-lez v7, :cond_0

    if-eq p3, v6, :cond_0

    return-void

    :cond_0
    invoke-static {v3}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070837

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/VolumeReceiver;->b:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070595

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070594

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/nirenr/talkman/VolumeReceiver;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/VolumeReceiver;->c(I)I

    move-result v4

    iget-object v5, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/nirenr/talkman/VolumeReceiver;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    sget-object v5, Lcom/nirenr/talkman/VolumeReceiver;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "onVolumeChanged2"

    invoke-virtual {v8, v10, v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne v7, p2, :cond_5

    if-eq p3, v6, :cond_5

    return-void

    :cond_5
    invoke-virtual {v5, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseSingleTTS()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isInLongSpeak()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVolumeChanged:t "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/nirenr/talkman/VolumeReceiver;->d:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/nirenr/talkman/VolumeReceiver;->d:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0x32

    cmp-long p3, v5, v7

    if-gez p3, :cond_8

    return-void

    :cond_8
    iget-object p3, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVolumeChanged:4 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/nirenr/talkman/VolumeReceiver;->d:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/nirenr/talkman/VolumeReceiver;->d:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0x1388

    cmp-long p3, v5, v7

    if-gtz p3, :cond_a

    iget-object p3, p0, Lcom/nirenr/talkman/VolumeReceiver;->f:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_2

    :cond_9
    iget-object p3, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    :goto_2
    iget-object p3, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const v2, 0x7f07065d

    invoke-virtual {p3, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->d:J

    iput-object v1, p0, Lcom/nirenr/talkman/VolumeReceiver;->f:Ljava/lang/String;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/VolumeReceiver;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive"

    invoke-virtual {p1, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    const-string v0, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz p1, :cond_2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1, p2}, Lcom/nirenr/talkman/VolumeReceiver;->e(III)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz p1, :cond_5

    if-ltz v0, :cond_5

    if-gez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, v0, p2}, Lcom/nirenr/talkman/VolumeReceiver;->e(III)V

    :cond_5
    :goto_1
    return-void
.end method
