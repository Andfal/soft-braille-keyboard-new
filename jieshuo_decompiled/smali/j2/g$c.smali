.class public Lj2/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/media/SoundPool;

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:[J

.field private final f:[J

.field private final g:[I

.field private final h:[I

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:[J

.field private final k:[I

.field private l:J

.field private m:I

.field private n:Landroid/media/MediaPlayer;

.field final synthetic o:Lj2/g;


# direct methods
.method public constructor <init>(Lj2/g;Ljava/io/File;)V
    .locals 12

    iput-object p1, p0, Lj2/g$c;->o:Lj2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Lj2/g$c;->b:[I

    const/16 v1, 0x19

    new-array v2, v1, [I

    iput-object v2, p0, Lj2/g$c;->c:[I

    const/16 v2, 0x3c

    new-array v3, v2, [I

    iput-object v3, p0, Lj2/g$c;->d:[I

    new-array v3, v1, [J

    iput-object v3, p0, Lj2/g$c;->e:[J

    new-array v3, v2, [J

    iput-object v3, p0, Lj2/g$c;->f:[J

    new-array v3, v0, [I

    iput-object v3, p0, Lj2/g$c;->g:[I

    new-array v3, v1, [I

    iput-object v3, p0, Lj2/g$c;->h:[I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lj2/g$c;->i:Ljava/util/HashMap;

    new-array v1, v1, [J

    iput-object v1, p0, Lj2/g$c;->j:[J

    new-array v1, v2, [I

    iput-object v1, p0, Lj2/g$c;->k:[I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lj2/g$c;->l:J

    const/4 v1, -0x1

    iput v1, p0, Lj2/g$c;->m:I

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lj2/g$c;->n:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lj2/g;->b(Lj2/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v1, 0x7f07085e

    const-string v2, "3"

    invoke-static {p1, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p1, Landroid/media/SoundPool$Builder;

    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v2, p1, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "now."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "now"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :try_start_0
    iget-object v5, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lj2/g$c;->m:I

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lj2/g$c;->e(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lj2/g$c;->l:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    new-instance p1, Ljava/io/File;

    const-string v0, "hour"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, ""

    const-string v4, "\\..*$"

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v5, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_6

    aget-object v7, v0, v6

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lj2/g$c;->c:[I

    array-length v9, v9

    if-lt v8, v9, :cond_5

    goto :goto_5

    :cond_5
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lj2/g$c;->c:[I

    iget-object v10, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    invoke-virtual {v10, v7, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v10

    aput v10, v9, v8

    iget-object v9, p0, Lj2/g$c;->e:[J

    invoke-direct {p0, v7}, Lj2/g$c;->e(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v9, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/io/File;

    const-string v0, "minute"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v5, v0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_8

    aget-object v7, v0, v6

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lj2/g$c;->d:[I

    array-length v9, v9

    if-lt v8, v9, :cond_7

    goto :goto_7

    :cond_7
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lj2/g$c;->d:[I

    iget-object v10, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    invoke-virtual {v10, v7, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v7

    aput v7, v9, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/io/File;

    const-string v0, "hourly"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v5, v0

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_b

    aget-object v7, v0, v6

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_9

    div-int/lit8 v8, v8, 0x64

    :cond_9
    iget-object v9, p0, Lj2/g$c;->h:[I

    array-length v9, v9

    if-lt v8, v9, :cond_a

    goto :goto_9

    :cond_a
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lj2/g$c;->h:[I

    iget-object v10, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    invoke-virtual {v10, v7, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v7

    aput v7, v9, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    new-instance p1, Ljava/io/File;

    const-string v0, "voice"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    array-length v0, p2

    :goto_a
    if-ge v1, v0, :cond_c

    aget-object v5, p2, v1

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lj2/g$c;->i:Ljava/util/HashMap;

    iget-object v8, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    invoke-virtual {v8, v5, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_c
    return-void
.end method

.method static bridge synthetic a(Lj2/g$c;)[I
    .locals 0

    iget-object p0, p0, Lj2/g$c;->c:[I

    return-object p0
.end method

.method static bridge synthetic b(Lj2/g$c;)[I
    .locals 0

    iget-object p0, p0, Lj2/g$c;->d:[I

    return-object p0
.end method

.method static bridge synthetic c(Lj2/g$c;)Landroid/media/SoundPool;
    .locals 0

    iget-object p0, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    return-object p0
.end method

.method static bridge synthetic d(Lj2/g$c;)[J
    .locals 0

    iget-object p0, p0, Lj2/g$c;->e:[J

    return-object p0
.end method

.method private e(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lj2/g$c;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lj2/g$c;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lj2/g$c;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p1, p0, Lj2/g$c;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method


# virtual methods
.method public f(II)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "%02d%02d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lj2/g$c;->o:Lj2/g;

    invoke-static {v4}, Lj2/g;->b(Lj2/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timer:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showText2(Ljava/lang/String;)V

    iget-object v4, v0, Lj2/g$c;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lj2/g$c;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v8, v0, Lj2/g$c;->a:Landroid/media/SoundPool;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v14}, Landroid/media/SoundPool;->play(IFFIIF)I

    return v7

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, v0, Lj2/g$c;->h:[I

    aget v9, v3, v1

    if-eqz v9, :cond_1

    iget-object v8, v0, Lj2/g$c;->a:Landroid/media/SoundPool;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v14}, Landroid/media/SoundPool;->play(IFFIIF)I

    return v7

    :cond_1
    iget-object v3, v0, Lj2/g$c;->c:[I

    aget v9, v3, v1

    if-eqz v9, :cond_4

    iget-object v3, v0, Lj2/g$c;->d:[I

    aget v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v11, v0, Lj2/g$c;->m:I

    const/4 v3, -0x1

    if-eq v11, v3, :cond_3

    iget-object v10, v0, Lj2/g$c;->a:Landroid/media/SoundPool;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v10 .. v16}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v3, v0, Lj2/g$c;->o:Lj2/g;

    invoke-static {v3}, Lj2/g;->c(Lj2/g;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lj2/g$c$a;

    invoke-direct {v4, v0, v1, v2}, Lj2/g$c$a;-><init>(Lj2/g$c;II)V

    iget-wide v1, v0, Lj2/g$c;->l:J

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v7

    :cond_3
    iget-object v8, v0, Lj2/g$c;->a:Landroid/media/SoundPool;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v14}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v3, v0, Lj2/g$c;->o:Lj2/g;

    invoke-static {v3}, Lj2/g;->c(Lj2/g;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lj2/g$c$b;

    invoke-direct {v4, v0, v2}, Lj2/g$c$b;-><init>(Lj2/g$c;I)V

    iget-object v2, v0, Lj2/g$c;->e:[J

    aget-wide v1, v2, v1

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v7

    :cond_4
    :goto_0
    return v6
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lj2/g$c;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method
