.class public Lj2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/d$e;
    }
.end annotation


# static fields
.field private static I:Lj2/d; = null

.field private static J:Z = false

.field private static K:Z = false

.field private static L:Ljava/lang/String; = null

.field private static M:Z = false

.field private static N:Ljava/lang/String; = "xiaoyan"

.field private static final O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/ArrayList<",
            "[B>;>;>;>;"
        }
    .end annotation
.end field

.field private static P:I

.field private static final Q:[B

.field private static final R:[B


# instance fields
.field private A:C

.field private B:C

.field private C:C

.field private D:C

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:I

.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/iflytek/msc/MscSynthesizer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private d:Lcom/iflytek/msc/MscSynthesizer;

.field private e:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private f:Z

.field private g:Lj2/d$e;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/nirenr/talkman/TextToSpeakListener;

.field private n:Z

.field private o:F

.field private p:F

.field private q:Z

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Landroid/os/Handler;

.field private u:Lh4/a;

.field private v:Z

.field private final w:Ljava/lang/Object;

.field private final x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/ArrayList<",
            "[B>;>;>;"
        }
    .end annotation
.end field

.field private y:C

.field private z:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lj2/d;->O:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lj2/d;->P:I

    const/16 v0, 0xc80

    new-array v0, v0, [B

    sput-object v0, Lj2/d;->Q:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    sput-object v0, Lj2/d;->R:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj2/d;->b:Ljava/util/HashMap;

    const/16 v0, 0x64

    iput v0, p0, Lj2/d;->h:I

    const/4 v1, 0x3

    iput v1, p0, Lj2/d;->i:I

    iput v0, p0, Lj2/d;->j:I

    const-string v1, "xiaoyan"

    iput-object v1, p0, Lj2/d;->k:Ljava/lang/String;

    const/16 v1, 0x32

    iput v1, p0, Lj2/d;->l:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lj2/d;->o:F

    iput v1, p0, Lj2/d;->p:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj2/d;->r:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lj2/d;->t:Landroid/os/Handler;

    new-instance v1, Lh4/a;

    const/16 v2, 0x3e80

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lh4/a;-><init>(II)V

    iput-object v1, p0, Lj2/d;->u:Lh4/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lj2/d;->v:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lj2/d;->w:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lj2/d;->x:Ljava/util/HashMap;

    const/16 v2, 0x61

    iput-char v2, p0, Lj2/d;->y:C

    iput-char v0, p0, Lj2/d;->z:C

    const/16 v0, 0x66

    iput-char v0, p0, Lj2/d;->A:C

    const/16 v0, 0x38

    iput-char v0, p0, Lj2/d;->B:C

    const/16 v0, 0x30

    iput-char v0, p0, Lj2/d;->C:C

    const/16 v0, 0x31

    iput-char v0, p0, Lj2/d;->D:C

    const-string v0, "engine"

    iput-object v0, p0, Lj2/d;->E:Ljava/lang/String;

    const-string v0, "mode"

    iput-object v0, p0, Lj2/d;->F:Ljava/lang/String;

    iput-boolean v1, p0, Lj2/d;->G:Z

    iput-object p1, p0, Lj2/d;->a:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0, p1, p2}, Lj2/d;->A(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sput-object p0, Lj2/d;->I:Lj2/d;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Lj2/d;->c:Z

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lj2/d;->c:Z

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ZLandroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj2/d;->b:Ljava/util/HashMap;

    const/16 v0, 0x64

    iput v0, p0, Lj2/d;->h:I

    const/4 v1, 0x3

    iput v1, p0, Lj2/d;->i:I

    iput v0, p0, Lj2/d;->j:I

    const-string v1, "xiaoyan"

    iput-object v1, p0, Lj2/d;->k:Ljava/lang/String;

    const/16 v1, 0x32

    iput v1, p0, Lj2/d;->l:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lj2/d;->o:F

    iput v1, p0, Lj2/d;->p:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj2/d;->r:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lj2/d;->t:Landroid/os/Handler;

    new-instance v1, Lh4/a;

    const/16 v2, 0x3e80

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lh4/a;-><init>(II)V

    iput-object v1, p0, Lj2/d;->u:Lh4/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lj2/d;->v:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lj2/d;->w:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lj2/d;->x:Ljava/util/HashMap;

    const/16 v2, 0x61

    iput-char v2, p0, Lj2/d;->y:C

    iput-char v0, p0, Lj2/d;->z:C

    const/16 v0, 0x66

    iput-char v0, p0, Lj2/d;->A:C

    const/16 v0, 0x38

    iput-char v0, p0, Lj2/d;->B:C

    const/16 v0, 0x30

    iput-char v0, p0, Lj2/d;->C:C

    const/16 v0, 0x31

    iput-char v0, p0, Lj2/d;->D:C

    const-string v0, "engine"

    iput-object v0, p0, Lj2/d;->E:Ljava/lang/String;

    const-string v0, "mode"

    iput-object v0, p0, Lj2/d;->F:Ljava/lang/String;

    iput-boolean v1, p0, Lj2/d;->G:Z

    iput-object p1, p0, Lj2/d;->a:Landroid/content/Context;

    iput-object p1, p0, Lj2/d;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-boolean p2, p0, Lj2/d;->f:Z

    :try_start_0
    invoke-direct {p0, p1, p3}, Lj2/d;->A(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sput-object p0, Lj2/d;->I:Lj2/d;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Lj2/d;->c:Z

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lj2/d;->c:Z

    :goto_1
    return-void
.end method

.method private A(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 5

    const v0, 0x7f07098c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070292

    invoke-static {p1, v1, v0}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj2/d;->k:Ljava/lang/String;

    sput-object v0, Lj2/d;->N:Ljava/lang/String;

    const v0, 0x7f07028e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    sput-boolean v0, Lj2/d;->J:Z

    const v0, 0x7f07028f

    invoke-static {p1, v0, v1}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    sput-boolean v0, Lj2/d;->K:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lj2/d;->K:Z

    const-string v3, ""

    if-eqz v2, :cond_0

    const-string v2, "[i1]"

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lj2/d;->J:Z

    if-eqz v2, :cond_1

    const-string v3, "[n1]"

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj2/d;->L:Ljava/lang/String;

    sget-boolean v0, Lj2/d;->J:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    sget-boolean v0, Lj2/d;->K:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Lj2/d;->M:Z

    new-instance v0, Lcom/iflytek/msc/Speaker;

    invoke-direct {v0}, Lcom/iflytek/msc/Speaker;-><init>()V

    iget-object v3, p0, Lj2/d;->k:Ljava/lang/String;

    iput-object v3, v0, Lcom/iflytek/msc/Speaker;->code:Ljava/lang/String;

    const-string v4, "5ef02a7c,77070006"

    iput-object v4, v0, Lcom/iflytek/msc/Speaker;->param:Ljava/lang/String;

    iput-short v2, v0, Lcom/iflytek/msc/Speaker;->type:S

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, v0, Lcom/iflytek/msc/Speaker;->volume:F

    iput v2, v0, Lcom/iflytek/msc/Speaker;->speed:F

    iput-object v3, v0, Lcom/iflytek/msc/Speaker;->id:Ljava/lang/String;

    new-instance v2, Lcom/iflytek/msc/MscSynthesizer;

    invoke-direct {v2, p1, v0}, Lcom/iflytek/msc/MscSynthesizer;-><init>(Landroid/content/Context;Lcom/iflytek/msc/Speaker;)V

    iput-object v2, p0, Lj2/d;->d:Lcom/iflytek/msc/MscSynthesizer;

    iget-object p1, p0, Lj2/d;->b:Ljava/util/HashMap;

    iget-object v0, p0, Lj2/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    return-void
.end method

.method public static C(Z)V
    .locals 2

    sput-boolean p0, Lj2/d;->J:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lj2/d;->K:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "[i1]"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lj2/d;->J:Z

    if-eqz v0, :cond_1

    const-string v1, "[n1]"

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lj2/d;->L:Ljava/lang/String;

    sget-boolean p0, Lj2/d;->J:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lj2/d;->K:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    sput-boolean p0, Lj2/d;->M:Z

    if-nez p0, :cond_4

    sget-object p0, Lj2/d;->I:Lj2/d;

    if-eqz p0, :cond_4

    const-string v0, "[d]"

    invoke-virtual {p0, v0}, Lj2/d;->R(Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static D(Z)V
    .locals 2

    sput-boolean p0, Lj2/d;->K:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lj2/d;->K:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "[i1]"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lj2/d;->J:Z

    if-eqz v0, :cond_1

    const-string v1, "[n1]"

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lj2/d;->L:Ljava/lang/String;

    sget-boolean p0, Lj2/d;->J:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lj2/d;->K:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    sput-boolean p0, Lj2/d;->M:Z

    if-nez p0, :cond_4

    sget-object p0, Lj2/d;->I:Lj2/d;

    if-eqz p0, :cond_4

    const-string v0, "[d]"

    invoke-virtual {p0, v0}, Lj2/d;->R(Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private H(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lj2/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj2/d;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object p1, p0, Lj2/d;->k:Ljava/lang/String;

    new-instance p1, Lcom/iflytek/msc/Speaker;

    invoke-direct {p1}, Lcom/iflytek/msc/Speaker;-><init>()V

    iget-object v0, p0, Lj2/d;->k:Ljava/lang/String;

    iput-object v0, p1, Lcom/iflytek/msc/Speaker;->code:Ljava/lang/String;

    const-string v1, "5ef02a7c,77070006"

    iput-object v1, p1, Lcom/iflytek/msc/Speaker;->param:Ljava/lang/String;

    const/4 v1, 0x1

    iput-short v1, p1, Lcom/iflytek/msc/Speaker;->type:S

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p1, Lcom/iflytek/msc/Speaker;->volume:F

    iput v1, p1, Lcom/iflytek/msc/Speaker;->speed:F

    iput-object v0, p1, Lcom/iflytek/msc/Speaker;->id:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/msc/MscSynthesizer;

    iget-object v1, p0, Lj2/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/iflytek/msc/MscSynthesizer;-><init>(Landroid/content/Context;Lcom/iflytek/msc/Speaker;)V

    iput-object v0, p0, Lj2/d;->d:Lcom/iflytek/msc/MscSynthesizer;

    iget-object p1, p0, Lj2/d;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lj2/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private V(Ljava/lang/String;)I
    .locals 9

    iget-boolean v0, p0, Lj2/d;->c:Z

    invoke-static {v0, p1}, Lk2/t;->b(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-boolean v5, p0, Lj2/d;->c:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, p0, Lj2/d;->r:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, 0x40

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lj2/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lj2/d;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lj2/d;->U(Ljava/lang/String;)I

    return v1
.end method

.method static bridge synthetic a(Lj2/d;)F
    .locals 0

    iget p0, p0, Lj2/d;->p:F

    return p0
.end method

.method static bridge synthetic b(Lj2/d;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/d;->G:Z

    return p0
.end method

.method static bridge synthetic c(Lj2/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lj2/d;->t:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic d(Lj2/d;)Lcom/nirenr/talkman/TextToSpeakListener;
    .locals 0

    iget-object p0, p0, Lj2/d;->m:Lcom/nirenr/talkman/TextToSpeakListener;

    return-object p0
.end method

.method static bridge synthetic e(Lj2/d;)I
    .locals 0

    iget p0, p0, Lj2/d;->l:I

    return p0
.end method

.method static bridge synthetic f(Lj2/d;)F
    .locals 0

    iget p0, p0, Lj2/d;->o:F

    return p0
.end method

.method static bridge synthetic g(Lj2/d;)Lh4/a;
    .locals 0

    iget-object p0, p0, Lj2/d;->u:Lh4/a;

    return-object p0
.end method

.method static bridge synthetic h(Lj2/d;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lj2/d;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic i(Lj2/d;)I
    .locals 0

    iget p0, p0, Lj2/d;->h:I

    return p0
.end method

.method static bridge synthetic j(Lj2/d;)I
    .locals 0

    iget p0, p0, Lj2/d;->H:I

    return p0
.end method

.method static bridge synthetic k(Lj2/d;)Lcom/iflytek/msc/MscSynthesizer;
    .locals 0

    iget-object p0, p0, Lj2/d;->d:Lcom/iflytek/msc/MscSynthesizer;

    return-object p0
.end method

.method static bridge synthetic l(Lj2/d;)I
    .locals 0

    iget p0, p0, Lj2/d;->i:I

    return p0
.end method

.method static bridge synthetic m(Lj2/d;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/d;->n:Z

    return p0
.end method

.method static bridge synthetic n(Lj2/d;)I
    .locals 0

    iget p0, p0, Lj2/d;->j:I

    return p0
.end method

.method static bridge synthetic o(Lj2/d;Z)V
    .locals 0

    iput-boolean p1, p0, Lj2/d;->G:Z

    return-void
.end method

.method static bridge synthetic p(Lj2/d;Z)V
    .locals 0

    iput-boolean p1, p0, Lj2/d;->q:Z

    return-void
.end method

.method static bridge synthetic q(Lj2/d;Lj2/d$e;)V
    .locals 0

    iput-object p1, p0, Lj2/d;->g:Lj2/d$e;

    return-void
.end method

.method static bridge synthetic r(Lj2/d;I)V
    .locals 0

    iput p1, p0, Lj2/d;->H:I

    return-void
.end method

.method static bridge synthetic s(Lj2/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lj2/d;->H(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic t()[B
    .locals 1

    sget-object v0, Lj2/d;->Q:[B

    return-object v0
.end method

.method static bridge synthetic u()[B
    .locals 1

    sget-object v0, Lj2/d;->R:[B

    return-object v0
.end method

.method static bridge synthetic v()I
    .locals 1

    sget v0, Lj2/d;->P:I

    return v0
.end method

.method public static w()V
    .locals 0

    return-void
.end method

.method public static y()Lj2/d;
    .locals 1

    sget-object v0, Lj2/d;->I:Lj2/d;

    return-object v0
.end method

.method public static z(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Lj2/d;
    .locals 2

    new-instance v0, Lj2/d;

    new-instance v1, Lj2/d$a;

    invoke-direct {v1, p1}, Lj2/d$a;-><init>(Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-direct {v0, p0, v1}, Lj2/d;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Lj2/d;->d:Lcom/iflytek/msc/MscSynthesizer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lj2/d;->q:Z

    return v0
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Lj2/d;->l:I

    iget-object p1, p0, Lj2/d;->x:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lj2/d;->E(I)V

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 2

    sput-object p1, Lj2/d;->N:Ljava/lang/String;

    iget-object v0, p0, Lj2/d;->t:Landroid/os/Handler;

    new-instance v1, Lj2/d$b;

    invoke-direct {v1, p0, p1}, Lj2/d$b;-><init>(Lj2/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public I(I)V
    .locals 0

    iput p1, p0, Lj2/d;->h:I

    iget-object p1, p0, Lj2/d;->x:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lj2/d;->I(I)V

    return-void
.end method

.method public K(I)V
    .locals 1

    iget-object v0, p0, Lj2/d;->d:Lcom/iflytek/msc/MscSynthesizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    :cond_1
    iget v0, p0, Lj2/d;->i:I

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lj2/d;->i:I

    return-void
.end method

.method public L(Lcom/nirenr/talkman/TextToSpeakListener;)V
    .locals 0

    iput-object p1, p0, Lj2/d;->m:Lcom/nirenr/talkman/TextToSpeakListener;

    return-void
.end method

.method public M(F)V
    .locals 0

    iput p1, p0, Lj2/d;->o:F

    return-void
.end method

.method public N(Z)V
    .locals 0

    iput-boolean p1, p0, Lj2/d;->n:Z

    const/4 p1, 0x3

    iput p1, p0, Lj2/d;->i:I

    return-void
.end method

.method public O(F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v1, p1, v0

    iput v1, p0, Lj2/d;->p:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    :goto_0
    iput p1, p0, Lj2/d;->j:I

    iget-object p1, p0, Lj2/d;->x:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lj2/d;->O(F)V

    return-void
.end method

.method public Q(Ljava/lang/String;)I
    .locals 2

    sget-boolean v0, Lj2/d;->M:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lj2/d;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0xa0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    sget v0, Lj2/d;->P:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lj2/d;->P:I

    iget-object v0, p0, Lj2/d;->m:Lcom/nirenr/talkman/TextToSpeakListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/TextToSpeakListener;->onSpeakStart()V

    new-instance v0, Lj2/d$c;

    invoke-direct {v0, p0, p1}, Lj2/d$c;-><init>(Lj2/d;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method

.method public R(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lj2/d;->m:Lcom/nirenr/talkman/TextToSpeakListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/TextToSpeakListener;->onSpeakStart()V

    invoke-virtual {p0}, Lj2/d;->W()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lj2/d;->V(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lj2/d;->U(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public S(Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;)I
    .locals 8

    iget-object v0, p0, Lj2/d;->u:Lh4/a;

    iget v1, p0, Lj2/d;->o:F

    invoke-virtual {v0, v1}, Lh4/a;->B(F)V

    iget-object v2, p0, Lj2/d;->d:Lcom/iflytek/msc/MscSynthesizer;

    iget v3, p0, Lj2/d;->h:I

    iget v4, p0, Lj2/d;->j:I

    iget v5, p0, Lj2/d;->l:I

    new-instance v7, Lj2/d$d;

    invoke-direct {v7, p0, p2}, Lj2/d$d;-><init>(Lj2/d;Landroid/speech/tts/SynthesisCallback;)V

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/iflytek/msc/MscSynthesizer;->synthesize(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I

    move-result p1

    return p1
.end method

.method public T(Ljava/lang/String;Z)I
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lj2/d;->R(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lj2/d;->B()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lj2/d;->r:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lj2/d;->R(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    iget-object p2, p0, Lj2/d;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public U(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj2/d;->s:Z

    sget-boolean v1, Lj2/d;->M:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lj2/d;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0xa0

    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    sget v1, Lj2/d;->P:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lj2/d;->P:I

    iget-boolean v1, p0, Lj2/d;->G:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj2/d;->g:Lj2/d$e;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lj2/d;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v2, p0, Lj2/d;->G:Z

    new-instance v2, Lj2/d$e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lj2/d$e;-><init>(Lj2/d;Lj2/e;)V

    iput-object v2, p0, Lj2/d;->g:Lj2/d$e;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v1, p0, Lj2/d;->g:Lj2/d$e;

    invoke-virtual {v1, p1}, Lj2/d$e;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lj2/d;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lj2/d;->f:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak2(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAsyncSpeak2(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public W()V
    .locals 1

    iget-object v0, p0, Lj2/d;->g:Lj2/d$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj2/d$e;->g()V

    :cond_0
    sget v0, Lj2/d;->P:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lj2/d;->P:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj2/d;->q:Z

    iget-object v0, p0, Lj2/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj2/d;->G:Z

    iget-object v1, p0, Lj2/d;->d:Lcom/iflytek/msc/MscSynthesizer;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lj2/d;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget v1, p0, Lj2/d;->H:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj2/d;->H:I

    iput-boolean v0, p0, Lj2/d;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lj2/d;->d:Lcom/iflytek/msc/MscSynthesizer;

    return-void
.end method
