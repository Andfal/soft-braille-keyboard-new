.class public Lcom/nirenr/talkman/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeakListener;


# static fields
.field private static A:Ljava/lang/String;

.field private static B:F

.field private static C:F

.field private static final D:Ljava/lang/String;

.field public static final t:[Ljava/lang/String;

.field private static u:Lcom/nirenr/talkman/a;

.field private static v:Z

.field private static w:Z

.field private static x:Z

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field public a:[Lcom/nirenr/talkman/tts/TextToSpeak;

.field public b:[Ljava/lang/String;

.field private c:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/nirenr/talkman/tts/b;

.field private l:Lcom/nirenr/talkman/tts/a;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:Ljava/lang/String;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "main"

    const-string v1, "async"

    const-string v2, "main"

    const-string v3, "async"

    const-string v4, "main"

    const-string v5, "main"

    const-string v6, "main"

    const-string v7, "system"

    const-string v8, "main"

    const-string v9, "main"

    const-string v10, "main"

    const-string v11, "async"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/a;->t:[Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/nirenr/talkman/a;->y:Ljava/lang/String;

    sput-object v0, Lcom/nirenr/talkman/a;->z:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/nirenr/talkman/a;->B:F

    sput v0, Lcom/nirenr/talkman/a;->C:F

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/a;->D:Ljava/lang/String;

    return-void

    nop

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

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/nirenr/talkman/tts/TextToSpeak;

    iput-object v1, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/a;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/a;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/a;->f:Z

    iput-boolean v0, p0, Lcom/nirenr/talkman/a;->g:Z

    iput-boolean v0, p0, Lcom/nirenr/talkman/a;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/a;->j:Ljava/util/ArrayList;

    const-string v0, "\u95ee\u53f7"

    iput-object v0, p0, Lcom/nirenr/talkman/a;->n:Ljava/lang/String;

    const-string v0, "\u53f9\u53f7"

    iput-object v0, p0, Lcom/nirenr/talkman/a;->o:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/nirenr/talkman/a;->q:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nirenr/talkman/a;->s:J

    iput-object p1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sput-object p0, Lcom/nirenr/talkman/a;->u:Lcom/nirenr/talkman/a;

    invoke-direct {p0, p2}, Lcom/nirenr/talkman/a;->p(Z)V

    return-void
.end method

.method public static N(Z)V
    .locals 0

    sput-boolean p0, Lcom/nirenr/talkman/a;->v:Z

    return-void
.end method

.method public static O(Z)V
    .locals 0

    sput-boolean p0, Lcom/nirenr/talkman/a;->w:Z

    return-void
.end method

.method public static P(Z)V
    .locals 0

    sput-boolean p0, Lcom/nirenr/talkman/a;->x:Z

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method private b()Z
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

    sget-object v1, Lcom/nirenr/talkman/a;->D:Ljava/lang/String;

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

.method public static l()Lcom/nirenr/talkman/a;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/a;->u:Lcom/nirenr/talkman/a;

    return-object v0
.end method

.method private p(Z)V
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nirenr/talkman/a;->m:Z

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07064f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070654

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "50"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v0, v2

    float-to-double v3, v0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    sput v0, Lcom/nirenr/talkman/a;->C:F

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070651

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v2

    sput v0, Lcom/nirenr/talkman/a;->B:F

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07069f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0706a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/a;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070046

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/a;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07067f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/a;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07070c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/nirenr/talkman/a;->v:Z

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0707d6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/nirenr/talkman/a;->w:Z

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07084b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/nirenr/talkman/a;->x:Z

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706b1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/a;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x32

    iput p1, p0, Lcom/nirenr/talkman/a;->i:I

    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "initialTts"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nirenr/talkman/a;->b()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/nirenr/talkman/a;->y:Ljava/lang/String;

    const-string v0, "iflytek"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "system"

    if-eqz p1, :cond_1

    sput-object v1, Lcom/nirenr/talkman/a;->y:Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/nirenr/talkman/a;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sput-object v1, Lcom/nirenr/talkman/a;->z:Ljava/lang/String;

    :cond_2
    new-instance p1, Lcom/nirenr/talkman/tts/b;

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sget-object v1, Lcom/nirenr/talkman/a;->y:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Lcom/nirenr/talkman/tts/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object p1, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    new-instance p1, Lcom/nirenr/talkman/tts/a;

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sget-object v1, Lcom/nirenr/talkman/a;->z:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/nirenr/talkman/tts/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-direct {p0}, Lcom/nirenr/talkman/a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nirenr/talkman/a;->e:Z

    iget-object p1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "initialTts end"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nirenr/talkman/a;->x()V

    return-void
.end method

.method private v(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-boolean v0, Lcom/nirenr/talkman/a;->w:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_5

    const-string v0, "\\d\\d\\d\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v3, v5, v4

    const/16 v6, 0xf

    if-le v3, v6, :cond_1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1
    :goto_1
    if-ge v4, v5, :cond_3

    aget-char v3, v1, v4

    iget-boolean v6, p0, Lcom/nirenr/talkman/a;->m:Z

    if-eqz v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v3, 0x4e5d

    goto :goto_2

    :pswitch_1
    const/16 v3, 0x516b

    goto :goto_2

    :pswitch_2
    const/16 v3, 0x4e03

    goto :goto_2

    :pswitch_3
    const/16 v3, 0x516d

    goto :goto_2

    :pswitch_4
    const/16 v3, 0x4e94

    goto :goto_2

    :pswitch_5
    const/16 v3, 0x56db

    goto :goto_2

    :pswitch_6
    const/16 v3, 0x4e09

    goto :goto_2

    :pswitch_7
    const/16 v3, 0x4e8c

    goto :goto_2

    :pswitch_8
    const/16 v3, 0x4e00

    goto :goto_2

    :pswitch_9
    const v3, 0x96f6

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    move v3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 3

    sput-object p1, Lcom/nirenr/talkman/a;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/a;->destroy()V

    :cond_2
    new-instance v0, Lcom/nirenr/talkman/tts/a;

    iget-object v1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1, p1}, Lcom/nirenr/talkman/tts/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    return-void
.end method

.method public B(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/a;->setTtsPitch(I)V

    return-void
.end method

.method public C(F)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/a;->setTtsScale(F)V

    return-void
.end method

.method public D(F)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/a;->setTtsVolume(F)V

    return-void
.end method

.method public E(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/a;->setUseAccessibilityVolume(Z)V

    return-void
.end method

.method public F(I)V
    .locals 1

    iput p1, p0, Lcom/nirenr/talkman/a;->i:I

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->setTtsSpeed(I)V

    return-void
.end method

.method public G(I)V
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/a;->q:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/nirenr/talkman/a;->q:I

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->setStreamType(I)V

    return-void
.end method

.method public H(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 3

    sput-object p1, Lcom/nirenr/talkman/a;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/b;->destroy()V

    :cond_2
    new-instance v0, Lcom/nirenr/talkman/tts/b;

    iget-object v1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1, p1, p0}, Lcom/nirenr/talkman/tts/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    return-void
.end method

.method public J(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->setTtsPitch(I)V

    return-void
.end method

.method public K(F)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->setTtsScale(F)V

    return-void
.end method

.method public L(F)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->setTtsVolume(F)V

    return-void
.end method

.method public M(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->setUseAccessibilityVolume(Z)V

    return-void
.end method

.method public Q(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "slowSpeak"

    invoke-virtual {v0, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/nirenr/talkman/tts/TextToSpeak;->slowSpeak(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/tts/TextToSpeak;->slowSpeak(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-virtual {p0, p2}, Lcom/nirenr/talkman/a;->R(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAsyncSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "slowSpeak"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseSingleTTS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->slowSpeak(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/a;->slowSpeak(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAsyncSpeak(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public S(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speak "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->b:[Ljava/lang/String;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/nirenr/talkman/tts/TextToSpeak;->speak(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/tts/TextToSpeak;->speak(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-virtual {p0, p2}, Lcom/nirenr/talkman/a;->T(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/a;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v0, "\u200b"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/nirenr/talkman/a;->w:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "speak"

    sget-object v2, Lcom/nirenr/talkman/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/nirenr/talkman/a;->x:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/nirenr/talkman/a;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/h0;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Lk2/h0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/a;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Lk2/h0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/a;->o:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/a;->p:Z

    :cond_1
    const-string v0, "[?\uff1f]"

    iget-object v1, p0, Lcom/nirenr/talkman/a;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[!\uff01]"

    iget-object v1, p0, Lcom/nirenr/talkman/a;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->speak(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    return-void
.end method

.method public V()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/b;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onTTSEnd()V

    return-void
.end method

.method public W(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->stop()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/b;->stop()V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/a;->stop()V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/nirenr/talkman/tts/TextToSpeak;->stop()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendSpeak "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/tts/TextToSpeak;->appendSpeak(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->appendSpeak(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/b;->appendSpeak(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public g(ILjava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/a;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nirenr/talkman/a;->d(ILjava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseSingleTTS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/a;->T(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/nirenr/talkman/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/a;->speak(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAsyncSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseSingleTTS()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/a;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/nirenr/talkman/tts/TextToSpeak;->stop()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public j()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/b;->destroy()V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/a;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/a;->x()V

    invoke-static {}, Lj2/d;->w()V

    return-void
.end method

.method public k(I)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->stop()V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aput-object v1, v0, p1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->stop()V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aput-object v1, v0, p1

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->stop()V

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aput-object v1, v0, p1

    :cond_3
    return-void
.end method

.method public m(I)Lcom/nirenr/talkman/tts/TextToSpeak;
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    return-object p1

    :cond_0
    aget-object v0, v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x7

    const-string v1, "async"

    const-string v2, "main"

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07067f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nirenr/talkman/a;->t:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-object v1, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    aput-object v1, v0, p1

    return-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-object v1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseSingleTTS()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    :goto_0
    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object p1, v0, p1

    return-object p1

    :cond_3
    iget-object v1, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    new-instance v2, Lcom/nirenr/talkman/tts/a;

    iget-object v3, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/nirenr/talkman/tts/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;I)V

    aput-object v2, v1, p1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object p1, v0, p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f07064f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nirenr/talkman/a;->t:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-object v1, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    aput-object v1, v0, p1

    return-object v1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-object v1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseSingleTTS()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    :goto_1
    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object p1, v0, p1

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    new-instance v1, Lcom/nirenr/talkman/tts/b;

    iget-object v2, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Lcom/nirenr/talkman/a$a;

    invoke-direct {v3, p0, p1}, Lcom/nirenr/talkman/a$a;-><init>(Lcom/nirenr/talkman/a;I)V

    invoke-direct {v1, v2, p1, v3}, Lcom/nirenr/talkman/tts/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ILcom/nirenr/talkman/tts/TextToSpeakListener;)V

    aput-object v1, v0, p1

    :cond_8
    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public o()F
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/b;->b()F

    move-result v0

    return v0
.end method

.method public onEnd()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onTTSEnd()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onError"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onTTSStop()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onTTSStart()V

    return-void
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/a;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/a;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->isSpeaking()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/tts/b;->isSpeaking()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public t(I)Z
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->isSpeaking()Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public u(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/a;->k:Lcom/nirenr/talkman/tts/b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public w(Z)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nirenr/talkman/a;->s:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/nirenr/talkman/a;->s:J

    iget-object v0, p0, Lcom/nirenr/talkman/a;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nirenr.talkman.ACTION_INIT_SYSTEM_TTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.nirenr.talkman.EXTRA_TEXT_DATA"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/a;->a:[Lcom/nirenr/talkman/tts/TextToSpeak;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/a;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/a;->c(Z)V

    return-void
.end method

.method public z(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/a;->l:Lcom/nirenr/talkman/tts/a;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/tts/a;->setTtsSpeed(I)V

    return-void
.end method
