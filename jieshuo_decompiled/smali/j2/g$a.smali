.class Lj2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/media/SoundPool;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:I

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lj2/g;


# direct methods
.method public constructor <init>(Lj2/g;Ljava/io/File;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lj2/g$a;->h:Lj2/g;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lj2/g$a;->b:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lj2/g$a;->f:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lj2/g$a;->g:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Lj2/g;->b(Lj2/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    const v4, 0x7f070702

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v3, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v3

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/media/SoundPool;

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Landroid/media/SoundPool;-><init>(III)V

    :goto_0
    iput-object v3, v0, Lj2/g$a;->a:Landroid/media/SoundPool;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lj2/g$a;->c:[Ljava/lang/String;

    if-nez v3, :cond_1

    return-void

    :cond_1
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v0, Lj2/g$a;->d:[Ljava/lang/String;

    new-instance v4, Lj2/g$b;

    invoke-direct {v4, v1}, Lj2/g$b;-><init>(Lj2/g;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Lj2/g$a;->c:[Ljava/lang/String;

    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v4, v4, v3

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    const-string v8, ""

    const-string v9, "\\..*$"

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    :goto_2
    const/4 v8, 0x0

    goto :goto_4

    :cond_2
    new-instance v10, Lj2/g$b;

    invoke-direct {v10, v1}, Lj2/g$b;-><init>(Lj2/g;)V

    invoke-static {v7, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    array-length v11, v7

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_3
    array-length v13, v7

    if-ge v12, v13, :cond_3

    aget-object v13, v7, v12

    invoke-virtual {v13, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v12

    iget-object v15, v0, Lj2/g$a;->a:Landroid/media/SoundPool;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v15, v5, v13}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    iget-object v5, v0, Lj2/g$a;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lj2/g$a;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lj2/g$a;->d:[Ljava/lang/String;

    aput-object v5, v6, v3

    iget-object v6, v0, Lj2/g$a;->b:Ljava/util/HashMap;

    iget-object v7, v0, Lj2/g$a;->a:Landroid/media/SoundPool;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method private c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v0, v2, v6

    if-nez v0, :cond_1

    move-object/from16 v7, p1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_3

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, v1, Lj2/g$a;->h:Lj2/g;

    invoke-static {v9}, Lj2/g;->b(Lj2/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "effect:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showText2(Ljava/lang/String;)V

    iget-object v10, v1, Lj2/g$a;->a:Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->soundVolume:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v12, v0, v9

    div-float v13, v0, v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v10 .. v16}, Landroid/media/SoundPool;->play(IFFIIF)I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lj2/g$a;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return v4
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lj2/g$a;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lj2/g$a;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj2/g$a;->h:Lj2/g;

    invoke-static {v0}, Lj2/g;->b(Lj2/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj2/g$a;->h:Lj2/g;

    invoke-static {v1}, Lj2/g;->a(Lj2/g;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget v1, p0, Lj2/g$a;->e:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lj2/g$a;->a:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lj2/g$a;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lj2/g$a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lj2/g$a;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, v0}, Lj2/g$a;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lj2/g$a;->d:[Ljava/lang/String;

    iget-object v1, p0, Lj2/g$a;->b:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1}, Lj2/g$a;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)Z

    return-void
.end method
