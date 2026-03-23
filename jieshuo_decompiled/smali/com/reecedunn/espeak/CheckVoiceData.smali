.class public Lcom/reecedunn/espeak/CheckVoiceData;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final BASE_RESOURCES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "eSpeakTTS"


# instance fields
.field private final mSynthReadyCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "version"

    const-string v1, "intonations"

    const-string v2, "phondata"

    const-string v3, "phonindex"

    const-string v4, "phontab"

    const-string v5, "en_dict"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/reecedunn/espeak/CheckVoiceData;->BASE_RESOURCES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/reecedunn/espeak/CheckVoiceData$1;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/CheckVoiceData$1;-><init>(Lcom/reecedunn/espeak/CheckVoiceData;)V

    iput-object v0, p0, Lcom/reecedunn/espeak/CheckVoiceData;->mSynthReadyCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;

    return-void
.end method

.method public static canUpgradeResources(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/reecedunn/espeak/FileUtils;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/reecedunn/espeak/CheckVoiceData;->getDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v2, "version"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/reecedunn/espeak/FileUtils;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getDataPath(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "espeak-ng-data"

    const/4 v3, 0x0

    const-string v4, "voices"

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/iflytek/msc/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasBaseResources(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Lcom/reecedunn/espeak/CheckVoiceData;->getDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sget-object v0, Lcom/reecedunn/espeak/CheckVoiceData;->BASE_RESOURCES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing base resource: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "eSpeakTTS"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private returnResults(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "availableVoices"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p2, "unavailableVoices"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/reecedunn/espeak/CheckVoiceData;->hasBaseResources(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/reecedunn/espeak/CheckVoiceData;->canUpgradeResources(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v2, p0, Lcom/reecedunn/espeak/CheckVoiceData;->mSynthReadyCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;

    invoke-direct {v1, p0, v2}, Lcom/reecedunn/espeak/SpeechSynthesis;-><init>(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;)V

    invoke-virtual {v1}, Lcom/reecedunn/espeak/SpeechSynthesis;->getAvailableVoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/reecedunn/espeak/Voice;

    invoke-virtual {v2}, Lcom/reecedunn/espeak/Voice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1, p1, v0}, Lcom/reecedunn/espeak/CheckVoiceData;->returnResults(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
