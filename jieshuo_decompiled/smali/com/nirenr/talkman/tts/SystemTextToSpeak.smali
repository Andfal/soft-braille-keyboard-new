.class public Lcom/nirenr/talkman/tts/SystemTextToSpeak;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeak;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;,
        Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;
    }
.end annotation


# static fields
.field private static final d0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;"
        }
    .end annotation
.end field

.field private static final e0:Ljava/lang/String;

.field private static final f0:[B


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:I

.field private I:I

.field private J:Z

.field private K:Ljava/util/concurrent/atomic/AtomicLong;

.field private L:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final M:Landroid/os/Handler;

.field private N:I

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:I

.field private R:Z

.field private S:Ljava/lang/String;

.field private T:J

.field private U:Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;

.field private V:I

.field private W:Z

.field private X:I

.field private Y:F

.field private Z:I

.field private final a:Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;

.field private b:Ljava/io/File;

.field private b0:Ljava/lang/Runnable;

.field private c:F

.field private c0:Ljava/lang/Runnable;

.field private final d:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final e:Landroid/content/ContentResolver;

.field private f:F

.field private g:F

.field private h:I

.field private final i:Lcom/nirenr/talkman/tts/TextToSpeakListener;

.field private final j:La/f;

.field private final k:Z

.field private l:I

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Landroid/speech/tts/TextToSpeech;

.field private s:Ljava/lang/String;

.field private t:Landroid/database/ContentObserver;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:Lcom/nirenr/talkman/tts/c;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e0:Ljava/lang/String;

    const/16 v0, 0xc80

    new-array v0, v0, [B

    sput-object v0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f0:[B

    return-void

    :array_0
    .array-data 2
        0x5fs
        0x59s
        0x6fs
        0x75s
        0x54s
        0x75s
        0x5fs
        0x4bs
        0x65s
        0x79s
    .end array-data
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {p0 .. p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    iput v9, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    new-instance v10, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;-><init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/os/Handler;)V

    iput-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t:Landroid/database/ContentObserver;

    const-string v10, "0"

    iput-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    const/4 v10, 0x0

    iput v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    iput-boolean v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->C:Z

    new-instance v12, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v12, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->K:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v12, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v12, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    new-instance v12, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;

    invoke-direct {v12, v1, v11}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;-><init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Lj2/f;)V

    iput-object v12, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->U:Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;

    const/4 v11, -0x1

    iput v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->V:I

    const/16 v11, 0x40

    iput v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->X:I

    iput v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Z:I

    new-instance v11, Lcom/nirenr/talkman/tts/SystemTextToSpeak$c;

    invoke-direct {v11, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$c;-><init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)V

    iput-object v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b0:Ljava/lang/Runnable;

    new-instance v11, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;

    invoke-direct {v11, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;-><init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)V

    iput-object v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c0:Ljava/lang/Runnable;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SystemTextToSpeak: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "tts"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    iput-object v2, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-object/from16 v12, p3

    iput-object v12, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    const-string v12, "initSystemTTS engine"

    invoke-virtual {v2, v12, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iput-object v13, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e:Landroid/content/ContentResolver;

    const-string v14, "tts_default_synth"

    invoke-static {v14}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iget-object v15, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t:Landroid/database/ContentObserver;

    invoke-virtual {v13, v14, v10, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    const/16 v10, 0x32

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object/from16 p3, v12

    int-to-double v11, v5

    mul-double v11, v11, v15

    div-double/2addr v11, v13

    if-ge v5, v10, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    :goto_0
    double-to-float v11, v11

    iput v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f:F

    int-to-float v8, v8

    mul-float v8, v8, v9

    const/high16 v11, 0x42480000    # 50.0f

    div-float/2addr v8, v11

    iput v8, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g:F

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    iput v7, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    iput v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->h:I

    iput v6, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    iput-boolean v4, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R:Z

    cmpl-float v4, v7, v9

    if-lez v4, :cond_1

    cmpl-float v4, v6, v9

    if-nez v4, :cond_1

    const v4, 0x3f8147ae    # 1.01f

    iput v4, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_2

    iput v9, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    :cond_2
    iput-boolean v3, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->k:Z

    new-instance v3, La/f;

    invoke-direct {v3}, La/f;-><init>()V

    iput-object v3, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    iget v4, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    invoke-virtual {v3, v4}, La/f;->o(F)V

    iget v4, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    invoke-virtual {v3, v4}, La/f;->k(F)V

    iget-boolean v3, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v3, :cond_3

    move-object/from16 v3, p3

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-direct {v1, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y(Ljava/lang/String;)V

    new-instance v0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;

    invoke-direct {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;-><init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)V

    iput-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;

    :try_start_0
    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "SystemTextToSpeak registerReceiver"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->J:Z

    :cond_4
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b:Ljava/io/File;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_5

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b:Ljava/io/File;

    :cond_5
    return-void
.end method

.method static bridge synthetic A(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->D:Z

    return-void
.end method

.method static bridge synthetic B(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    return-void
.end method

.method static bridge synthetic C(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->x:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic D(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic E(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    return-void
.end method

.method static bridge synthetic F(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    return-void
.end method

.method static bridge synthetic G(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    return-void
.end method

.method static bridge synthetic H(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic I(Lcom/nirenr/talkman/tts/SystemTextToSpeak;J)V
    .locals 0

    iput-wide p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->T:J

    return-void
.end method

.method static bridge synthetic J(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    return-void
.end method

.method static bridge synthetic K(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f:F

    return-void
.end method

.method static bridge synthetic L(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y:F

    return-void
.end method

.method static bridge synthetic M(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method static bridge synthetic N(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    return-void
.end method

.method static bridge synthetic O(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->T()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic P(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->X(Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic Q(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic R(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a0(F)V

    return-void
.end method

.method static bridge synthetic S(Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    invoke-static {p0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0(Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method

.method private T()Z
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e0:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private U(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->A:Z

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    add-int/lit16 v4, v2, 0x7d0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e0(Ljava/lang/String;)Z

    return-void
.end method

.method private V(Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->J:Z

    invoke-static {v0, p1}, Lk2/t;->b(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->A:Z

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-boolean v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->J:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    iget v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->X:I

    add-int/2addr v7, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->X:I

    add-int/2addr v5, v6

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e0(Ljava/lang/String;)Z

    return-void
.end method

.method public static W()V
    .locals 3

    sget-object v0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0(Landroid/speech/tts/TextToSpeech;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private X(Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-class v0, Landroid/speech/tts/TextToSpeech;

    const-string v1, "getCurrentEngine"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    return-object p1
.end method

.method private Y(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    iget-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->n:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "initSystemTTS engine"

    invoke-virtual {v1, v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->T()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "initSystemTTS vip"

    invoke-virtual {v1, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Z:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Z:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->I:I

    iput-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->n:Z

    iput-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->q:Z

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e:Landroid/content/ContentResolver;

    const-string v3, "tts_default_synth"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const-string v5, "system"

    if-lt v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->k:Z

    if-eqz v3, :cond_3

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->l:I

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->l:I

    :goto_0
    iget-boolean v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    const-string v4, ";"

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSystemTTS mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->l:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_4
    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->T()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    const-string v6, "nirenr"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->q:Z

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    :cond_6
    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "initSystemTTS is ready"

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_7
    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    :cond_8
    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    return-void

    :cond_9
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    if-eqz p1, :cond_c

    if-nez v2, :cond_c

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "initSystemTTS is system"

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_a
    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    :cond_b
    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    return-void

    :cond_c
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0(Landroid/speech/tts/TextToSpeech;)V

    iput-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    :cond_d
    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Z:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "initSystemTTS"

    invoke-virtual {p1, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    if-eqz v2, :cond_f

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    iget p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Z:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_f

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->T:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x2710

    cmp-long v1, v5, v7

    if-lez v1, :cond_f

    iput-wide v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->T:J

    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_1
    const/4 p1, 0x0

    :try_start_1
    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y:F

    new-instance p1, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;

    invoke-direct {v3, p0, v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;-><init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    invoke-direct {p1, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0(Landroid/speech/tts/TextToSpeech;)V

    iput-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    :goto_2
    iput-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S:Ljava/lang/String;

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->z:J

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    return p0
.end method

.method private a0(F)V
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Z:I

    return p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->D:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)La/f;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    return-object p0
.end method

.method private static d0(Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->q:Z

    return p0
.end method

.method private e0(Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    const v2, 0xf4240

    if-le v0, v2, :cond_1

    iput v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    :cond_1
    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->V:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getMode()I

    move-result v0

    :goto_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isRingMode()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x3

    :cond_3
    iget-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "audioMode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    const-string v5, "SystemSpeak"

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isLoad()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    iget-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v5, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->P:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->k:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak2(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAsyncSpeak2(Ljava/lang/String;)V

    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "utteranceId"

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "volume"

    iget v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "streamType"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "jieshuo"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f:F

    invoke-direct {p0, v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a0(F)V

    iget v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-nez v5, :cond_b

    iget v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    if-eq v5, v0, :cond_a

    if-ne v0, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b0(Z)V

    :cond_a
    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->l:I

    iget-object v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_b
    :try_start_1
    iput-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->C:Z

    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    if-eq v3, v0, :cond_c

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v0}, La/f;->l(I)V

    :cond_c
    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b:Ljava/io/File;

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-direct {v3, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v3, v5}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->C:Z

    :try_start_2
    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    iget v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->l:I

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v3, p1, v5, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    if-nez v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    :goto_4
    return v1
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    return-object p0
.end method

.method private f0(Ljava/lang/String;I)Z
    .locals 10

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    const-string v1, "SystemSpeak"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->A:Z

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-nez v2, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    if-eqz v3, :cond_5

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    :cond_5
    :goto_0
    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    iput v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x20

    if-le v3, v5, :cond_6

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->V(Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v5

    if-le v3, v5, :cond_7

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->U(Ljava/lang/String;)V

    return v2

    :cond_7
    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    const v5, 0xf4240

    if-le v3, v5, :cond_8

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    :cond_8
    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->V:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_9

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getMode()I

    move-result v3

    :goto_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_a

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isRingMode()Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v3, 0x3

    :cond_a
    iget-boolean v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v8, "audioMode1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    iget-boolean v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v8, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->V:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "audioMode2"

    invoke-virtual {v7, v9, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v8, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isLoad()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    invoke-virtual {v7, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->P:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->k:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak2(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAsyncSpeak2(Ljava/lang/String;)V

    :goto_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "utteranceId"

    iget-object v9, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "volume"

    iget v9, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v8, "streamType"

    invoke-virtual {v7, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "jieshuo"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v8, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f:F

    invoke-direct {p0, v8}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a0(F)V

    iget v8, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    cmpl-float v4, v8, v4

    if-nez v4, :cond_12

    iget v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    if-eq v4, v3, :cond_11

    if-ne v3, v6, :cond_10

    const/4 v4, 0x1

    goto :goto_3

    :cond_10
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b0(Z)V

    :cond_11
    iput v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    :try_start_0
    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, v7, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_12
    :try_start_1
    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->C:Z

    iget v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    if-eq v4, v3, :cond_14

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    if-eqz v4, :cond_14

    if-eq v3, v6, :cond_13

    iget-boolean v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R:Z

    if-eqz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_4

    :cond_13
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v4, v3, v6}, La/f;->m(IZ)V

    :cond_14
    iput v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b:Ljava/io/File;

    iget-object v8, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v3, p1, v7, v4, v6}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->C:Z

    :try_start_2
    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, v7, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    if-nez v5, :cond_16

    const/4 v0, 0x1

    :cond_16
    :goto_6
    return v0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    return-object p0
.end method

.method private g0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    return p0
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)J
    .locals 2

    iget-wide v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->T:J

    return-wide v0
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->k:Z

    return p0
.end method

.method static bridge synthetic m(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    return p0
.end method

.method static bridge synthetic p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g:F

    return p0
.end method

.method static bridge synthetic r(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f:F

    return p0
.end method

.method static bridge synthetic s(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->P:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    return p0
.end method

.method static bridge synthetic x(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    return-void
.end method

.method static bridge synthetic y(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Z:I

    return-void
.end method

.method static bridge synthetic z(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->n:Z

    return-void
.end method


# virtual methods
.method public Z(Z)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->z:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-void

    :cond_0
    const-string v1, "system"

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    :try_start_0
    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ";"

    if-nez v2, :cond_3

    :try_start_1
    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->x:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->X(Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "re initSystemTTS 1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->x:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iput-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->x:Ljava/lang/String;

    :cond_3
    iget-boolean v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "re initSystemTTS 2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->x:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    if-eqz p1, :cond_6

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->n:Z

    :cond_6
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_0
    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "re initSystemTTS end"

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_8
    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    return-void
.end method

.method public appendSpeak(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f:F

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a0(F)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    iget v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    invoke-virtual {v0, v1}, La/f;->k(F)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f0(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/c;->appendSpeak(Ljava/lang/String;)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b0(Z)V
    .locals 6

    const/16 v0, 0x100

    const/4 v1, 0x0

    const v2, 0x7f0706a5

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    goto :goto_4

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-boolean v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R:Z

    if-eqz v5, :cond_2

    const/16 v5, 0xb

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    goto :goto_1

    :goto_4
    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p1, v0}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    invoke-virtual {v0, p1}, La/f;->o(F)V

    iget p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    const v0, 0x3f8147ae    # 1.01f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iput v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0(Landroid/speech/tts/TextToSpeech;)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    invoke-virtual {v0}, La/f;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/c;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public isSpeaking()Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/c;->isSpeaking()Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onAudioAvailable(Ljava/lang/String;[B)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->C:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    if-lt v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    array-length v1, p2

    invoke-virtual {v0, p2, v1}, La/f;->writeData([BI)I

    move-result p2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    if-lt p1, v0, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    array-length p2, p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_4
    return-void
.end method

.method public onBeginSynthesis(Ljava/lang/String;III)V
    .locals 2

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SystemSpeak onBeginSynthesis"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    mul-int/lit8 p1, p2, 0x2

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->N:I

    const/16 p1, 0x3e80

    if-le p2, p1, :cond_1

    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x40

    :goto_0
    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->X:I

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isLoad()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    invoke-virtual {p1, p2, p3, p4}, La/f;->g(III)I

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 7

    const-string v0, "SystemSpeak onDone"

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isLoad()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->N:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->N:I

    div-int/2addr v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    iget-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "SystemSpeak onDone to fast"

    invoke-virtual {v1, v6, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->U:Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->U:Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->U:Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;

    sub-long/2addr v4, v2

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e0(Ljava/lang/String;)Z

    :cond_4
    return-void

    :cond_5
    iget v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    if-lt v1, v3, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, La/f;->closeAudioOut()V

    :cond_7
    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    if-lt v1, v3, :cond_9

    :cond_8
    iput-boolean v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_0
    iget-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "SystemSpeak onError"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e0(Ljava/lang/String;)Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isLoad()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSpeaking2()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g0()V

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/tts/c;->speak(Ljava/lang/String;)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "SystemSpeak onStart"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isLoad()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onStart()V

    iget p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->I:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->I:I

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 1

    iget-boolean p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "SystemSpeak onStop"

    invoke-virtual {p2, v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    if-lt p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, La/f;->closeAudioOut()V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bed\u97f3\u5e93 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppNameAndVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u52a0\u8f7d\u51fa\u9519"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->P:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/tts/c;->speak(Ljava/lang/String;)Z

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    :cond_2
    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->V:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    invoke-virtual {v0, p1}, La/f;->l(I)V

    return-void
.end method

.method public setTtsPitch(I)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr p1, v1

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g:F

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :cond_0
    return-void
.end method

.method public setTtsScale(F)V
    .locals 2

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    const v0, 0x3f8147ae    # 1.01f

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    invoke-virtual {v0, p1}, La/f;->k(F)V

    return-void
.end method

.method public setTtsSpeed(I)V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    int-to-double v5, p1

    mul-double v5, v5, v3

    div-double/2addr v5, v1

    if-ge p1, v0, :cond_0

    double-to-float p1, v5

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    :goto_0
    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y:F

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a0(F)V

    :cond_1
    return-void
.end method

.method public setTtsVolume(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c0(Ljava/lang/String;)V

    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H:I

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->V:I

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    invoke-virtual {v0, p1}, La/f;->n(Z)V

    iput-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R:Z

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const v3, 0x7f0706a5

    invoke-static {v1, v3, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    return-void
.end method

.method public slowSpeak(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, La/f;->k(F)V

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a0(F)V

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->l:I

    invoke-direct {p0, p1, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f0(Ljava/lang/String;I)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/c;->slowSpeak(Ljava/lang/String;)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public speak(Ljava/lang/String;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SystemSpeak "

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->P:Ljava/lang/String;

    :cond_1
    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemSpeak mError"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    const-string v1, "SystemTextToSpeak UniTextToSpeak"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    const/4 v5, 0x5

    if-le v0, v5, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q:I

    if-le v6, v5, :cond_7

    add-int/2addr v0, v4

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->W:Z

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Lcom/nirenr/talkman/tts/c;

    iget-object v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->k:Z

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-direct {v0, v5, v6, v7}, Lcom/nirenr/talkman/tts/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->W:Z

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G:Z

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/c;->speak(Ljava/lang/String;)Z

    :cond_5
    iput-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0(Landroid/speech/tts/TextToSpeech;)V

    iput-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/c;->speak(Ljava/lang/String;)Z

    :cond_6
    iput-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G:Z

    return v2

    :cond_7
    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/c;->stop()V

    :cond_8
    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f:F

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a0(F)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j:La/f;

    iget v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m:F

    invoke-virtual {v0, v1}, La/f;->k(F)V

    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->l:I

    invoke-direct {p0, p1, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->I:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->I:I

    if-gez p1, :cond_9

    iput v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->I:I

    :cond_9
    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "SystemSpeak mOk"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_a
    iput v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    :cond_b
    iget-boolean p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/nirenr/talkman/tts/c;->destroy()V

    iput-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    :cond_c
    iput-boolean v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G:Z

    iput-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    return v4

    :cond_d
    iget v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E:I

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_e

    iput-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G:Z

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/c;->speak(Ljava/lang/String;)Z

    :cond_e
    iput-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S:Ljava/lang/String;

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d0(Landroid/speech/tts/TextToSpeech;)V

    iput-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y(Ljava/lang/String;)V

    return v2

    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->W:Z

    if-nez v0, :cond_10

    :try_start_1
    new-instance v0, Lcom/nirenr/talkman/tts/c;

    iget-object v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v6, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->k:Z

    iget-object v7, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-direct {v0, v5, v6, v7}, Lcom/nirenr/talkman/tts/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v5, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->W:Z

    :cond_10
    :goto_2
    iput-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/c;->speak(Ljava/lang/String;)Z

    :cond_11
    iput-boolean v4, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G:Z

    return v2
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O:Z

    iget-boolean v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "SystemSpeak stop"

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->A:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B:I

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y:Lcom/nirenr/talkman/tts/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/c;->stop()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g0()V

    return-void
.end method
