.class public Lcom/nirenr/talkman/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;
.implements Lcom/nirenr/talkman/speech/RecognizerListener;
.implements Lcom/unisound/client/TextUnderstanderListener;


# static fields
.field private static D:Lcom/nirenr/talkman/d;

.field private static E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final F:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/String;

.field private final a:Lcom/baidu/translate/TransApi;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/media/SoundPool;

.field private final d:Li2/d;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final k:Li2/c;

.field private l:Lcom/unisound/client/TextUnderstander;

.field private final m:Lcom/nirenr/talkman/speech/Recognizer;

.field private n:I

.field private o:Lf2/b;

.field private p:Ljava/lang/String;

.field private q:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Lorg/json/JSONArray;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/d;->E:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/d;->F:Ljava/lang/String;

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

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x3

    iput v0, p0, Lcom/nirenr/talkman/d;->n:I

    const-string v0, "search"

    iput-object v0, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/d;->r:I

    iput v0, p0, Lcom/nirenr/talkman/d;->u:I

    const-string v1, "\u6ca1\u6709\u5185\u5bb9"

    iput-object v1, p0, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/nirenr/talkman/d;->w:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nirenr/talkman/d;->x:Z

    iput-boolean v0, p0, Lcom/nirenr/talkman/d;->y:Z

    iput v0, p0, Lcom/nirenr/talkman/d;->z:I

    iput-boolean v0, p0, Lcom/nirenr/talkman/d;->A:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f0708ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    new-instance v0, Lcom/baidu/translate/TransApi;

    const-string v2, "20170225000039856"

    const-string v3, "3qfku0JExu0Sr_2Ln75Z"

    invoke-direct {v0, v2, v3}, Lcom/baidu/translate/TransApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nirenr/talkman/d;->a:Lcom/baidu/translate/TransApi;

    invoke-virtual {v0, p0}, Lcom/baidu/translate/TransApi;->setOnResultListener(Lcom/baidu/translate/TransApi$OnResultListener;)V

    invoke-static {p0}, Lcom/nirenr/talkman/util/d;->e(Lcom/baidu/translate/TransApi$OnResultListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/d;->b:Ljava/util/HashMap;

    const-string v2, "\u4e2d\u6587"

    const-string v3, "zh"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u82f1\u8bed"

    const-string v3, "en"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u7ca4\u8bed"

    const-string v3, "yue"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u6587\u8a00\u6587"

    const-string v3, "wyw"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u65e5\u8bed"

    const-string v3, "jp"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u97e9\u8bed"

    const-string v3, "kor"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u6cd5\u8bed"

    const-string v3, "fra"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u897f\u73ed\u7259\u8bed"

    const-string v3, "spa"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u6cf0\u8bed"

    const-string v3, "th"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u963f\u62c9\u4f2f\u8bed"

    const-string v3, "ara"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u4fc4\u8bed"

    const-string v3, "ru"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u8461\u8404\u7259\u8bed"

    const-string v3, "pt"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u5fb7\u8bed"

    const-string v3, "de"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u610f\u5927\u5229\u8bed"

    const-string v3, "it"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u5e0c\u814a\u8bed"

    const-string v3, "el"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u8377\u5170\u8bed"

    const-string v3, "nl"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u6ce2\u5170\u8bed"

    const-string v3, "pl"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u4fdd\u52a0\u5229\u4e9a\u8bed"

    const-string v3, "bul"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u7231\u6c99\u5c3c\u4e9a\u8bed"

    const-string v3, "est"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u4e39\u9ea6\u8bed"

    const-string v3, "dan"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u82ac\u5170\u8bed"

    const-string v3, "fin"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u6377\u514b\u8bed"

    const-string v3, "cs"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u7f57\u9a6c\u5c3c\u4e9a\u8bed"

    const-string v3, "rom"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u65af\u6d1b\u6587\u5c3c\u4e9a\u8bed"

    const-string v3, "slo"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u745e\u5178\u8bed"

    const-string v3, "swe"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u5308\u7259\u5229\u8bed"

    const-string v3, "hu"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u7e41\u4f53\u4e2d\u6587"

    const-string v3, "cht"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u8d8a\u5357\u8bed"

    const-string v3, "vie"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nirenr/talkman/d;->m()V

    invoke-virtual {p0}, Lcom/nirenr/talkman/d;->o()V

    :try_start_0
    new-instance v0, Lcom/unisound/client/TextUnderstander;

    const-string v2, "ozuwy6hk6odim5egmcnqopmoi3utdxg6ugdsrtip"

    const-string v3, "e4782b3e978b0ad140f6b744bc148a1c"

    invoke-direct {v0, p1, v2, v3}, Lcom/unisound/client/TextUnderstander;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nirenr/talkman/d;->l:Lcom/unisound/client/TextUnderstander;

    invoke-virtual {v0, p0}, Lcom/unisound/client/TextUnderstander;->setListener(Lcom/unisound/client/TextUnderstanderListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->l:Lcom/unisound/client/TextUnderstander;

    invoke-virtual {v0, v1}, Lcom/unisound/client/TextUnderstander;->init(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Lf2/b;

    invoke-direct {v0, p1, p0}, Lf2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/d;)V

    iput-object v0, p0, Lcom/nirenr/talkman/d;->o:Lf2/b;

    new-instance p1, Li2/b;

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, v0, p0}, Li2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/speech/RecognizerListener;)V

    iput-object p1, p0, Lcom/nirenr/talkman/d;->m:Lcom/nirenr/talkman/speech/Recognizer;

    new-instance p1, Li2/c;

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, v0, p0}, Li2/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/speech/RecognizerListener;)V

    iput-object p1, p0, Lcom/nirenr/talkman/d;->k:Li2/c;

    new-instance p1, Li2/d;

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, v0, p0}, Li2/d;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/speech/RecognizerListener;)V

    iput-object p1, p0, Lcom/nirenr/talkman/d;->d:Li2/d;

    iget-object p1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070557

    const-string v1, "zh_CN"

    invoke-static {p1, v0, v1}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/d;->s(Ljava/lang/String;)V

    sput-object p0, Lcom/nirenr/talkman/d;->D:Lcom/nirenr/talkman/d;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/d;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void
.end method

.method private d()Z
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

    sget-object v1, Lcom/nirenr/talkman/d;->F:Ljava/lang/String;

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

.method public static j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nirenr/talkman/d;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method private l(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private m()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070702

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v1

    const/16 v2, 0x18

    const/16 v3, 0xb

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-lt v0, v2, :cond_1

    const/16 v0, 0x100

    if-eqz v1, :cond_0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    :goto_0
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/media/SoundPool$Builder;

    if-eqz v1, :cond_2

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    :goto_1
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    return-void
.end method

.method private n(Ljava/lang/String;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getInputMethod()Landroid/accessibilityservice/InputMethod;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/accessibilityservice/InputMethod;->getCurrentInputConnection()Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isVoiceInputAppendMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nirenr/talkman/d;->x:Z

    if-nez v1, :cond_0

    const v1, 0x186a0

    invoke-virtual {v0, v1, v1}, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->deleteSurroundingText(II)V

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private q(I)V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    sget v3, Lcom/nirenr/talkman/TalkManAccessibilityService;->soundVolume:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/d;->D:Lcom/nirenr/talkman/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/nirenr/talkman/d;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private v(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/d;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->allStop()V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->o:Lf2/b;

    invoke-virtual {v0}, Lf2/b;->l()V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoSpeech()Z

    move-result v0

    const-string v1, "input"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07095a

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070302

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/d$a;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/d$a;-><init>(Lcom/nirenr/talkman/d;)V

    const-string v4, ""

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->requestPermissions(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/nirenr/talkman/util/Music;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/Music;->k()V

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onASRStart()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/nirenr/talkman/d;->n:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070658

    const-string v3, "default"

    invoke-static {v0, v2, v3}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "\u542f\u52a8\u8bc6\u522b"

    invoke-virtual {v2, v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0708ae

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/d;->d:Li2/d;

    invoke-virtual {v0}, Li2/d;->startInputting()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/d;->d:Li2/d;

    invoke-virtual {v0}, Li2/d;->startListening()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/d;->k:Li2/c;

    invoke-virtual {v0}, Li2/c;->startInputting()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/d;->k:Li2/c;

    invoke-virtual {v0}, Li2/c;->startListening()V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/d;->m:Lcom/nirenr/talkman/speech/Recognizer;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/Recognizer;->startInputting()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/nirenr/talkman/d;->m:Lcom/nirenr/talkman/speech/Recognizer;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/Recognizer;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070263

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/d;->onError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public B()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->resetStreamVolume()V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0708ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/d;->d:Li2/d;

    invoke-virtual {v0}, Li2/d;->stop()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/d;->k:Li2/c;

    invoke-virtual {v0}, Li2/c;->stop()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->m:Lcom/nirenr/talkman/speech/Recognizer;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/Recognizer;->stop()V

    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/d;->o:Lf2/b;

    invoke-virtual {v0}, Lf2/b;->l()V

    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/d;->d:Li2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li2/d;->updateUserData()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/nirenr/talkman/d;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/nirenr/talkman/d;->E:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :goto_0
    sget-object p1, Lcom/nirenr/talkman/d;->E:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_1

    sget-object p1, Lcom/nirenr/talkman/d;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nirenr/talkman/settings/ChatActivity;->refresh()V

    return-void
.end method

.method public f(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lcom/nirenr/talkman/util/d;->f(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->resetStreamVolume()V

    iget v0, p0, Lcom/nirenr/talkman/d;->n:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onASRStop()V

    iget v0, p0, Lcom/nirenr/talkman/d;->e:I

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/d;->q(I)V

    const-string v0, "search"

    iput-object v0, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    const/4 v0, -0x3

    iput v0, p0, Lcom/nirenr/talkman/d;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/d;->x:Z

    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0708ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/d;->C:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/d;->d:Li2/d;

    invoke-virtual {v0}, Li2/d;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/d;->k:Li2/c;

    invoke-virtual {v0}, Li2/c;->cancel()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->m:Lcom/nirenr/talkman/speech/Recognizer;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/Recognizer;->cancel()V

    :goto_1
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/talkman/d;->D:Lcom/nirenr/talkman/d;

    iget-object v0, p0, Lcom/nirenr/talkman/d;->m:Lcom/nirenr/talkman/speech/Recognizer;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/Recognizer;->destroy()V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->k:Li2/c;

    invoke-virtual {v0}, Li2/c;->destroy()V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->d:Li2/d;

    invoke-virtual {v0}, Li2/d;->destroy()V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->o:Lf2/b;

    invoke-virtual {v0}, Lf2/b;->m()V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "TextUnderstander cmd"

    invoke-virtual {v0, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/nirenr/talkman/d;->w:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07038e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/nirenr/talkman/d;->e(Ljava/lang/String;)V

    const v0, 0x7f070194

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeechEnabled(Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070194

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7f070940

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "\u6ca1\u6709\u5185\u5bb9"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iput-object v5, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    iput-object v5, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    iput-object v4, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    iput-boolean v6, v1, Lcom/nirenr/talkman/d;->A:Z

    const-string v0, "search"

    iput-object v0, v1, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeechEnabled(Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070940

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->o:Lf2/b;

    invoke-virtual {v0}, Lf2/b;->h()V

    return-void

    :cond_2
    const v0, 0x7f070195

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/d;->y()V

    return-void

    :cond_3
    const v0, 0x7f070964

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, v1, Lcom/nirenr/talkman/d;->x:Z

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/d;->y()V

    return-void

    :cond_4
    const v0, 0x7f070945

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v3, v1, Lcom/nirenr/talkman/d;->A:Z

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeechEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070944

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070946

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_5
    const v0, 0x7f070946

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_8

    iput-boolean v6, v1, Lcom/nirenr/talkman/d;->A:Z

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeechEnabled(Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070943

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070251

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/d$c;

    invoke-direct {v3, v1, v0}, Lcom/nirenr/talkman/d$c;-><init>(Lcom/nirenr/talkman/d;Landroid/widget/EditText;)V

    const v0, 0x104000a

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070095

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_7

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_6

    const/16 v3, 0x7f0

    goto :goto_0

    :cond_6
    const/16 v3, 0x7da

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/d$d;

    invoke-direct {v2, v1}, Lcom/nirenr/talkman/d$d;-><init>(Lcom/nirenr/talkman/d;)V

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void

    :cond_8
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v9, "startInput"

    iget-object v10, v1, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    const-string v9, "input"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v9, 0x1a

    const-string v10, " "

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v4, v1, Lcom/nirenr/talkman/d;->x:Z

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v7, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v8, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v11, "android.widget.EditText"

    invoke-virtual {v7, v8, v11}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v7

    if-gez v7, :cond_9

    goto :goto_1

    :cond_9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_a

    iget-object v7, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v7}, Lcom/nirenr/talkman/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_1

    :cond_a
    iget-object v4, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_b
    :goto_1
    move-object v4, v5

    :cond_c
    :goto_2
    if-eqz v4, :cond_d

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_d

    iget-object v7, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v7}, Lcom/nirenr/talkman/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_d
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_f

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_c

    :cond_f
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v4

    if-eqz v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_9

    :cond_10
    iget-object v4, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isVoiceInputAppendMode()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v7, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v8, "com.whatsapp:id/search_input"

    invoke-virtual {v4, v7, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkId(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v7, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v8, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v11, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v12, "android.widget.EditText"

    invoke-virtual {v8, v11, v12}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v8, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v8

    if-gez v8, :cond_11

    goto :goto_5

    :cond_11
    if-lt v4, v9, :cond_12

    iget-object v8, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v8}, Lcom/nirenr/talkman/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_5

    :cond_12
    iget-object v7, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_13
    :goto_5
    move-object v7, v5

    :cond_14
    :goto_6
    if-eqz v7, :cond_15

    if-lt v4, v9, :cond_15

    iget-object v4, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v4}, Lcom/nirenr/talkman/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_7

    :cond_15
    move-object v5, v7

    :goto_7
    if-eqz v5, :cond_17

    iget-object v4, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionEnd()I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v6, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v6

    if-nez v6, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    move-object v6, v2

    :goto_8
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_17
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v4

    if-eqz v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9

    :cond_18
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v4

    if-eqz v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_b
    move-object/from16 v17, v4

    move v4, v0

    move-object/from16 v0, v17

    goto :goto_c

    :cond_19
    move v4, v0

    move-object v0, v2

    :goto_c
    invoke-direct/range {p0 .. p1}, Lcom/nirenr/talkman/d;->n(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v5, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v6, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v6, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v5, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v6, "com.whatsapp:id/search_input"

    invoke-virtual {v0, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkId(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v5, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    add-int/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    goto :goto_d

    :cond_1b
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :goto_d
    invoke-direct/range {p0 .. p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07037b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    :goto_e
    iput-object v2, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->x:Z

    if-nez v0, :cond_1d

    const-string v0, "search"

    iput-object v0, v1, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    :cond_1d
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v2, v1, Lcom/nirenr/talkman/d;->y:Z

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeech(Z)V

    return-void

    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/d;->d()Z

    move-result v0

    const-string v11, "/"

    const-string v12, "%"

    if-eqz v0, :cond_2a

    const-string v0, "\u8bf4\u660e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :try_start_1
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v13, 0x7f07095e

    invoke-static {v0, v13, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    iget-object v13, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v14, 0x7f0701f4

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_21

    new-instance v14, Lk2/p;

    invoke-direct {v14}, Lk2/p;-><init>()V

    invoke-static {v13, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v14, v13

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v14, :cond_21

    aget-object v9, v13, v15

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1f

    new-instance v9, Ljava/io/File;

    const-string v7, "main.lua"

    invoke-direct {v9, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v9

    :cond_1f
    iget-object v7, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doBooleanFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_20

    return-void

    :cond_20
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x3e8

    const/16 v9, 0x1a

    goto :goto_f

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_21
    invoke-static/range {p1 .. p1}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_2
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v7, 0x7f07094b

    invoke-static {v0, v7, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_24

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/androlua/LuaApplication;->getGesturesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_24

    array-length v9, v8

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v9, :cond_24

    aget-object v14, v8, v13

    invoke-static {v14}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_23

    iget-object v8, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    iget-boolean v7, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v7, :cond_22

    iget-object v7, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v13, 0x7f0701f3

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_22
    return-void

    :cond_23
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    :try_start_3
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v7, 0x7f070958

    invoke-static {v0, v7, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getGesturePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v7, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v8, 0x7f0708ae

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/androlua/LuaApplication;->getGesturesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_28

    array-length v9, v8

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v9, :cond_28

    aget-object v14, v8, v13

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-le v15, v3, :cond_25

    invoke-virtual {v14, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_12

    :cond_25
    move-object v15, v14

    :goto_12
    invoke-static {v15}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27

    iget-object v5, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    iget-boolean v5, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v5, :cond_26

    iget-object v5, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v9, 0x7f0701f3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_26
    return-void

    :cond_27
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_28
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070956

    invoke-static {v0, v5, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/androlua/LuaService;->checkCmdPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->cmd(Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_29

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0701f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void

    :cond_2a
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070956

    invoke-static {v0, v5, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->getCmdDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v2}, Lcom/androlua/LuaService;->checkCmdPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    if-eqz v0, :cond_2b

    array-length v0, v0

    const/16 v3, 0xb

    if-ge v0, v3, :cond_2b

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->cmd(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_13

    :cond_2b
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703e7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_2c
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f07095c

    invoke-static {v0, v5, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/androlua/LuaService;->checkPluginPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->plugin(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0701f9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-void

    :cond_2e
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070960

    invoke-static {v0, v5, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->tool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0701fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-void

    :cond_30
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getButton1()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/16 v5, 0x10

    if-eqz v0, :cond_32

    iget-object v7, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-direct/range {p0 .. p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    return-void

    :cond_32
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getButton2()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v7, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-direct/range {p0 .. p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_33

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void

    :cond_34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v7, "\u53d6\u6d88"

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v11, 0x2

    sparse-switch v0, :sswitch_data_0

    :goto_14
    const/4 v0, -0x1

    goto/16 :goto_15

    :sswitch_0
    const-string v0, "\u542f\u7528\u89e6\u6478\u6d4f\u89c8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_14

    :cond_35
    const/16 v0, 0x30

    goto/16 :goto_15

    :sswitch_1
    const-string v0, "\u964d\u4f4e\u97f3\u91cf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_14

    :cond_36
    const/16 v0, 0x2f

    goto/16 :goto_15

    :sswitch_2
    const-string v0, "\u9501\u5b9a\u5c4f\u5e55"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_14

    :cond_37
    const/16 v0, 0x2e

    goto/16 :goto_15

    :sswitch_3
    const-string v0, "\u9010\u5b57\u6d4f\u89c8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_14

    :cond_38
    const/16 v0, 0x2d

    goto/16 :goto_15

    :sswitch_4
    const-string v0, "\u8ffd\u52a0\u590d\u5236"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_14

    :cond_39
    const/16 v0, 0x2c

    goto/16 :goto_15

    :sswitch_5
    const-string v0, "\u8f93\u5165\u5185\u5bb9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_14

    :cond_3a
    const/16 v0, 0x2b

    goto/16 :goto_15

    :sswitch_6
    const-string v0, "\u8bed\u97f3\u52a9\u624b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_14

    :cond_3b
    const/16 v0, 0x2a

    goto/16 :goto_15

    :sswitch_7
    const-string v0, "\u8282\u70b9\u6d4f\u89c8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_14

    :cond_3c
    const/16 v0, 0x29

    goto/16 :goto_15

    :sswitch_8
    const-string v0, "\u81ea\u52a8\u6717\u8bfb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_14

    :cond_3d
    const/16 v0, 0x28

    goto/16 :goto_15

    :sswitch_9
    const-string v0, "\u70b9\u51fb\u6d4f\u89c8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_14

    :cond_3e
    const/16 v0, 0x27

    goto/16 :goto_15

    :sswitch_a
    const-string v0, "\u6dfb\u52a0\u6807\u7b7e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_14

    :cond_3f
    const/16 v0, 0x26

    goto/16 :goto_15

    :sswitch_b
    const-string v0, "\u6682\u505c\u53cd\u9988"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_14

    :cond_40
    const/16 v0, 0x25

    goto/16 :goto_15

    :sswitch_c
    const-string v0, "\u6269\u5c55\u63d2\u4ef6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_14

    :cond_41
    const/16 v0, 0x24

    goto/16 :goto_15

    :sswitch_d
    const-string v0, "\u6062\u590d\u53cd\u9988"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_14

    :cond_42
    const/16 v0, 0x23

    goto/16 :goto_15

    :sswitch_e
    const-string v0, "\u5f53\u524d\u4eae\u5ea6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_14

    :cond_43
    const/16 v0, 0x22

    goto/16 :goto_15

    :sswitch_f
    const-string v0, "\u590d\u5236\u7ed3\u679c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_14

    :cond_44
    const/16 v0, 0x21

    goto/16 :goto_15

    :sswitch_10
    const-string v0, "\u589e\u52a0\u97f3\u91cf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_14

    :cond_45
    const/16 v0, 0x20

    goto/16 :goto_15

    :sswitch_11
    const-string v0, "\u542c\u5199\u6a21\u5f0f"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_14

    :cond_46
    const/16 v0, 0x1f

    goto/16 :goto_15

    :sswitch_12
    const-string v0, "\u5217\u8868\u6d4f\u89c8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_14

    :cond_47
    const/16 v0, 0x1e

    goto/16 :goto_15

    :sswitch_13
    const-string v0, "\u518d\u8bf4\u4e00\u6b21"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_14

    :cond_48
    const/16 v0, 0x1d

    goto/16 :goto_15

    :sswitch_14
    const-string v0, "\u52a0\u5927\u97f3\u91cf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_14

    :cond_49
    const/16 v0, 0x1c

    goto/16 :goto_15

    :sswitch_15
    const-string v0, "\u51cf\u5c0f\u97f3\u91cf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_14

    :cond_4a
    const/16 v0, 0x1b

    goto/16 :goto_15

    :sswitch_16
    const-string v0, "\u5168\u6587\u9009\u53d6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_14

    :cond_4b
    const/16 v0, 0x1a

    goto/16 :goto_15

    :sswitch_17
    const-string v0, "\u5168\u6587\u6d4f\u89c8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_14

    :cond_4c
    const/16 v0, 0x19

    goto/16 :goto_15

    :sswitch_18
    const-string v0, "\u5168\u5c4f\u6717\u8bfb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_14

    :cond_4d
    const/16 v0, 0x18

    goto/16 :goto_15

    :sswitch_19
    const-string v0, "\u901a\u77e5\u680f"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_14

    :cond_4e
    const/16 v0, 0x17

    goto/16 :goto_15

    :sswitch_1a
    const-string v0, "\u526a\u5207\u677f"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_14

    :cond_4f
    const/16 v0, 0x16

    goto/16 :goto_15

    :sswitch_1b
    const-string v0, "\u4e3b\u5c4f\u5e55"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_14

    :cond_50
    const/16 v0, 0x15

    goto/16 :goto_15

    :sswitch_1c
    const-string v0, "\u4e0b\u4e00\u9996"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_14

    :cond_51
    const/16 v0, 0x14

    goto/16 :goto_15

    :sswitch_1d
    const-string v0, "\u4e0a\u4e00\u9996"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_14

    :cond_52
    const/16 v0, 0x13

    goto/16 :goto_15

    :sswitch_1e
    const-string v0, "\u4e0b\u4e00\u66f2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_14

    :cond_53
    const/16 v0, 0x12

    goto/16 :goto_15

    :sswitch_1f
    const-string v0, "\u4e0a\u4e00\u66f2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_14

    :cond_54
    const/16 v0, 0x11

    goto/16 :goto_15

    :sswitch_20
    const-string v0, "\u4e0b\u4e00\u4e2a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_14

    :cond_55
    const/16 v0, 0x10

    goto/16 :goto_15

    :sswitch_21
    const-string v0, "\u4e0a\u4e00\u4e2a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_14

    :cond_56
    const/16 v0, 0xf

    goto/16 :goto_15

    :sswitch_22
    const-string v0, "\u957f\u6309"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_14

    :cond_57
    const/16 v0, 0xe

    goto/16 :goto_15

    :sswitch_23
    const-string v0, "\u8fd4\u56de"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_14

    :cond_58
    const/16 v0, 0xd

    goto/16 :goto_15

    :sswitch_24
    const-string v0, "\u7ffb\u8bd1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_14

    :cond_59
    const/16 v0, 0xc

    goto/16 :goto_15

    :sswitch_25
    const-string v0, "\u7c98\u8d34"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_14

    :cond_5a
    const/16 v0, 0xb

    goto/16 :goto_15

    :sswitch_26
    const-string v0, "\u786e\u5b9a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_14

    :cond_5b
    const/16 v0, 0xa

    goto/16 :goto_15

    :sswitch_27
    const-string v0, "\u70b9\u51fb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_14

    :cond_5c
    const/16 v0, 0x9

    goto/16 :goto_15

    :sswitch_28
    const-string v0, "\u6253\u5f00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_14

    :cond_5d
    const/16 v0, 0x8

    goto :goto_15

    :sswitch_29
    const-string v0, "\u590d\u5236"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_14

    :cond_5e
    const/4 v0, 0x7

    goto :goto_15

    :sswitch_2a
    const-string v0, "\u53d1\u9001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_14

    :cond_5f
    const/4 v0, 0x6

    goto :goto_15

    :sswitch_2b
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_14

    :cond_60
    const/4 v0, 0x5

    goto :goto_15

    :sswitch_2c
    const-string v0, "\u5220\u9664"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_14

    :cond_61
    const/4 v0, 0x4

    goto :goto_15

    :sswitch_2d
    const-string v0, "\u518d\u89c1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_14

    :cond_62
    const/4 v0, 0x3

    goto :goto_15

    :sswitch_2e
    const-string v0, "\u5207\u6362\u8bed\u97f3\u5e93"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_14

    :cond_63
    const/4 v0, 0x2

    goto :goto_15

    :sswitch_2f
    const-string v0, "\u6682\u505c\u89e6\u6478\u6d4f\u89c8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_14

    :cond_64
    const/4 v0, 0x1

    goto :goto_15

    :sswitch_30
    const-string v0, "\u6253\u5f00\u901a\u77e5\u680f"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_14

    :cond_65
    const/4 v0, 0x0

    :goto_15
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_1
    const-string v0, "\u9501\u5b9a\u5c4f\u5e55"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->keyLock()V

    goto/16 :goto_32

    :pswitch_2
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCharMode()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setCharMode(Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCharMode()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u9010\u5b57\u6d4f\u89c8"

    goto/16 :goto_1b

    :pswitch_3
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendCopy()Z

    const-string v0, "\u5df2\u8ffd\u52a0"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :goto_16
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/d;->y()V

    goto/16 :goto_32

    :pswitch_5
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeechEnabled(Z)V

    const-string v0, "\u8bed\u97f3\u52a9\u624b"

    goto/16 :goto_1b

    :pswitch_6
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseNode()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNode(Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseNode()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u8282\u70b9\u6d4f\u89c8"

    goto/16 :goto_1b

    :cond_66
    const-string v0, "\u7126\u70b9\u6d4f\u89c8"

    goto/16 :goto_1b

    :pswitch_7
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNext()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoNext(Z)V

    goto/16 :goto_32

    :pswitch_8
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTapMode()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTapMode(Z)V

    goto/16 :goto_32

    :pswitch_9
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    const-string v0, "\u8be5\u8282\u70b9\u6709\u6587\u5b57\u8bf4\u660e\uff0c\u4e0d\u9700\u8981\u6dfb\u52a0\u6807\u7b7e"

    goto/16 :goto_1b

    :cond_67
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setNodeLabel(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "\u8be5\u8282\u70b9\u4e0d\u80fd\u6dfb\u52a0\u6807\u7b7e"

    goto/16 :goto_1b

    :pswitch_a
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEnabled(Z)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_17

    :pswitch_b
    new-instance v0, Lh2/p;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v2}, Lh2/p;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh2/p;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_32

    :pswitch_c
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEnabled(Z)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_17
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    :pswitch_d
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getLight()F

    move-result v0

    float-to-int v0, v0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_68

    const-string v2, "\u975e\u5e38\u523a\u773c"

    goto :goto_19

    :cond_68
    const/16 v2, 0x3e8

    if-le v0, v2, :cond_69

    const-string v2, "\u975e\u5e38\u660e\u4eae"

    goto :goto_19

    :cond_69
    const/16 v2, 0x32

    if-le v0, v2, :cond_6a

    const-string v2, "\u660e\u4eae"

    goto :goto_19

    :cond_6a
    const/16 v2, 0xa

    if-le v0, v2, :cond_6b

    const-string v2, "\u660f\u6697"

    goto :goto_19

    :cond_6b
    const/4 v2, 0x5

    if-le v0, v2, :cond_6c

    const-string v2, "\u975e\u5e38\u660f\u6697"

    goto :goto_19

    :cond_6c
    const-string v2, "\u9ed1\u6697"

    :goto_19
    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    aput-object v2, v4, v3

    const-string v0, "\u5f53\u524d\u4eae\u5ea6 %d %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_e
    iget-object v0, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    :goto_1a
    const-string v0, "\u5df2\u590d\u5236"

    goto :goto_1b

    :cond_6d
    invoke-direct {v1, v4}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    goto/16 :goto_32

    :pswitch_f
    iput-boolean v3, v1, Lcom/nirenr/talkman/d;->x:Z

    goto/16 :goto_16

    :pswitch_10
    new-instance v0, Lh2/c;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v2}, Lh2/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v0}, Lh2/c;->t()V

    goto/16 :goto_32

    :pswitch_11
    iget-object v0, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    :goto_1b
    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    goto/16 :goto_32

    :pswitch_12
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->raiseVolume()V

    const-string v0, "\u589e\u52a0\u97f3\u91cf"

    goto :goto_1b

    :pswitch_13
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->lowerVolume()V

    const-string v0, "\u964d\u4f4e\u97f3\u91cf"

    goto :goto_1b

    :pswitch_14
    new-instance v0, Lcom/nirenr/talkman/dialog/f;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v2}, Lcom/nirenr/talkman/dialog/f;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/f;->q()V

    goto/16 :goto_32

    :pswitch_15
    new-instance v0, Lh2/d;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v2}, Lh2/d;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v0}, Lh2/d;->c()V

    goto/16 :goto_32

    :pswitch_16
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllTextList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_17
    new-instance v0, Lcom/nirenr/talkman/dialog/b;

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/nirenr/talkman/dialog/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/b;->q()V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_18
    const-string v0, "\u4e3b\u5c4f\u5e55"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toHome()V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_19
    invoke-static {}, Lcom/nirenr/talkman/util/Music;->i()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/Music;->j()Z

    move-result v0

    if-nez v0, :cond_c0

    goto :goto_1c

    :cond_6e
    :pswitch_1a
    invoke-static {}, Lcom/nirenr/talkman/util/Music;->i()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/Music;->n()Z

    move-result v0

    if-nez v0, :cond_c0

    :goto_1c
    const-string v0, "\u6ca1\u6709\u4e0b\u4e00\u66f2"

    goto/16 :goto_1b

    :cond_6f
    :goto_1d
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoSpeechEnabled()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-direct/range {p0 .. p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    :cond_70
    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :cond_71
    const v4, 0x7f070105

    invoke-direct {v1, v4}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "%s|*%s*|#%s"

    const v12, 0x7f070403

    if-eqz v0, :cond_7f

    invoke-direct {v1, v4}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v2, :cond_72

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1e

    :cond_72
    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByPinyin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_73
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v13, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v13, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    if-eqz v13, :cond_74

    move-object v10, v13

    :cond_74
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v13

    if-eqz v13, :cond_73

    invoke-virtual {v10, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v4}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v2, :cond_75

    iget-object v2, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    return-void

    :cond_76
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v10, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v10, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v10

    if-eqz v10, :cond_77

    invoke-virtual {v8, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v4}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v2, :cond_78

    iget-object v2, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    return-void

    :cond_79
    iget-boolean v2, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v2, :cond_7a

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v6

    aput-object v0, v8, v3

    aput-object v0, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1f

    :cond_7a
    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v6

    aput-object v0, v8, v3

    aput-object v0, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByPinyin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v6, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    if-eqz v6, :cond_7c

    move-object v3, v6

    :cond_7c
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v4}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v2, :cond_7d

    iget-object v2, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*|#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    return-void

    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_24

    :cond_7f
    const v0, 0x7f070095

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703ae

    :goto_20
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    :cond_80
    const v0, 0x7f070934

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v13, "android.permission.READ_CONTACTS"

    const v14, 0x7f0703ac

    const-wide/16 v15, 0x0

    if-eqz v0, :cond_84

    const v0, 0x7f070934

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_21

    :catch_4
    nop

    move-wide v2, v15

    :goto_21
    cmp-long v4, v2, v15

    if-eqz v4, :cond_81

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/androlua/LuaService;->callPhone(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_22
    iget-object v4, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V

    goto/16 :goto_32

    :cond_81
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_82

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_82

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->requestPermissions(Ljava/lang/String;)V

    return-void

    :cond_82
    invoke-static {}, Lk2/e;->a()Lk2/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lk2/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_83

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v2}, Lcom/androlua/LuaService;->callPhone(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_23
    iget-object v5, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V

    goto/16 :goto_32

    :cond_83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24
    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    :cond_84
    const v0, 0x7f070931

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    const v0, 0x7f070931

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_26

    :catch_5
    nop

    move-wide v2, v15

    :goto_26
    cmp-long v4, v2, v15

    if-eqz v4, :cond_85

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/androlua/LuaService;->callPhone(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_22

    :cond_85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_86

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_86

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->requestPermissions(Ljava/lang/String;)V

    return-void

    :cond_86
    invoke-static {}, Lk2/e;->a()Lk2/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lk2/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_87

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v2}, Lcom/androlua/LuaService;->callPhone(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_23

    :cond_87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_24

    :cond_88
    const v0, 0x7f070936

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    return-void

    :cond_89
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/d$e;

    invoke-direct {v2, v1}, Lcom/nirenr/talkman/d$e;-><init>(Lcom/nirenr/talkman/d;)V

    :goto_27
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_32

    :cond_8a
    const v13, 0x7f070017

    invoke-direct {v1, v13}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8d

    const v0, 0x7f070017

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703a3

    goto/16 :goto_20

    :cond_8b
    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setNodeLabel(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0703f2

    :goto_28
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_25

    :cond_8c
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703f7

    goto/16 :goto_20

    :cond_8d
    const v13, 0x7f07050b

    invoke-direct {v1, v13}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8f

    invoke-direct {v1, v13}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startAppExtend(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v13}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v2, :cond_c0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">"

    :goto_29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    :cond_8e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_24

    :cond_8f
    const-string v14, "\u7ffb\u8bd1\u4e3a"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_ae

    const-string v14, "\u7ffb\u8bd1\u6210"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_90

    goto/16 :goto_2d

    :cond_90
    const v14, 0x7f070939

    invoke-direct {v1, v14}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_92

    const v0, 0x7f070939

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->deleteApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070939

    invoke-direct {v1, v3}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_25

    :cond_91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_24

    :cond_92
    const v12, 0x7f070933

    invoke-direct {v1, v12}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_94

    const v0, 0x7f070933

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->installApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07042d

    goto/16 :goto_28

    :cond_93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07042c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    invoke-direct {v1, v2}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->openUrl(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_94
    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_96

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_95

    return-void

    :cond_95
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/d$f;

    invoke-direct {v2, v1}, Lcom/nirenr/talkman/d$f;-><init>(Lcom/nirenr/talkman/d;)V

    goto/16 :goto_27

    :cond_96
    const v0, 0x7f070932

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    const v0, 0x7f070932

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Ljava/lang/String;)Z

    iget-boolean v2, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v2, :cond_c0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%\u8f93\u5165/"

    goto/16 :goto_29

    :cond_97
    const v0, 0x7f070935

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const v0, 0x7f070935

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070935

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_99

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_98

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07042c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->openUrl(Ljava/lang/String;)V

    return-void

    :cond_98
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    const v0, 0x7f070935

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    :cond_99
    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07042c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2a

    :cond_9a
    const-string v0, "\u901f\u5ea6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    :try_start_6
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v8, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->p(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSSpeed(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u8bed\u901f\u5df2\u8bbe\u7f6e\u4e3a"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_32

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9b
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v8, 0x7f070953

    invoke-static {v0, v8, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-static {}, Lcom/nirenr/talkman/settings/ChatActivity;->isShow()Z

    move-result v0

    if-nez v0, :cond_a8

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_9c

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2b

    :cond_9c
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static/range {p1 .. p1}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByPinyin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v14, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v14, v12}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    if-eqz v14, :cond_9e

    move-object v12, v14

    :cond_9e
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v14

    if-eqz v14, :cond_9d

    invoke-virtual {v12, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0703b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_9f

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9f
    return-void

    :cond_a0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v12, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v12, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v12

    if-eqz v12, :cond_a1

    invoke-virtual {v8, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v4}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_a2

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    return-void

    :cond_a3
    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_a4

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v2, v4, v3

    aput-object v2, v4, v11

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2c

    :cond_a4
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v2, v4, v3

    aput-object v2, v4, v11

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByPinyin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v7, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-eqz v7, :cond_a6

    move-object v4, v7

    :cond_a6
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_a5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0703b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_a7

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*|#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a7
    return-void

    :cond_a8
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07094a

    invoke-static {v0, v4, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startApp2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v13}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    :cond_a9
    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_aa

    const-string v0, "\u65e0\u6548\u6307\u4ee4\uff0c\u8bf7\u91cd\u65b0\u8bf4\u51fa\u6307\u4ee4\uff0c\u5982\u9700\u7ed3\u675f\uff0c\u8bf7\u8bf4\uff0c\u7ed3\u675f\u5f55\u5236"

    goto/16 :goto_1b

    :cond_aa
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070951

    invoke-static {v0, v4, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_ab

    return-void

    :cond_ab
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07094f

    invoke-static {v0, v3, v6}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, v1, Lcom/nirenr/talkman/d;->o:Lf2/b;

    if-eqz v0, :cond_ac

    invoke-virtual {v0, v2}, Lf2/b;->k(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_ac
    iget-object v0, v1, Lcom/nirenr/talkman/d;->l:Lcom/unisound/client/TextUnderstander;

    if-eqz v0, :cond_ad

    invoke-virtual {v0, v2}, Lcom/unisound/client/TextUnderstander;->setText(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_ad
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->openUrl(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_ae
    :goto_2d
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/d;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0d\u652f\u6301\u7ffb\u8bd1\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_af
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b8

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/d;->f(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    goto/16 :goto_32

    :pswitch_1b
    invoke-static {}, Lcom/nirenr/talkman/util/Music;->i()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/Music;->j()Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "\u6ca1\u6709\u4e0b\u4e00\u4e2a\u4e86"

    goto/16 :goto_1b

    :cond_b0
    iget-object v0, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    if-eqz v0, :cond_b3

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeech(Z)V

    :try_start_7
    iget v0, v1, Lcom/nirenr/talkman/d;->u:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/nirenr/talkman/d;->u:I

    iget-object v2, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_b1

    const-string v0, "\u5df2\u7ecf\u662f\u7b2c1\u4e2a\u4e86"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/nirenr/talkman/d;->u:I

    goto/16 :goto_32

    :cond_b1
    iget-object v0, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    iget v2, v1, Lcom/nirenr/talkman/d;->u:I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    const-string v2, "detailurl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    const-string v2, "\u7b2c%d\u4e2a: %s,%s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nirenr/talkman/d;->u:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_b2
    const-string v2, "article"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    const-string v2, "detailurl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    const-string v2, "\u7b2c%d\u4e2a: %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget v5, v1, Lcom/nirenr/talkman/d;->u:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "article"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_2e

    :catch_7
    move-exception v0

    const-string v2, "\u51fa\u9519\u4e86\uff0c\u8bd5\u8bd5\u522b\u7684\u5427"

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_32

    :cond_b3
    const-string v0, "\u4e0b\u4e00\u4e2a"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNext()Z

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_1c
    invoke-static {}, Lcom/nirenr/talkman/util/Music;->i()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/Music;->n()Z

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/Music;->j()Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "\u6ca1\u6709\u4e0a\u4e00\u4e2a\u4e86"

    goto/16 :goto_1b

    :cond_b4
    iget-object v0, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    if-eqz v0, :cond_b7

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeech(Z)V

    :try_start_8
    iget v0, v1, Lcom/nirenr/talkman/d;->u:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/nirenr/talkman/d;->u:I

    if-gez v0, :cond_b5

    const-string v0, "\u5df2\u7ecf\u662f\u7b2c1\u4e2a\u4e86"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iput v6, v1, Lcom/nirenr/talkman/d;->u:I

    goto/16 :goto_32

    :cond_b5
    iget-object v2, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    const-string v2, "detailurl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    const-string v2, "\u7b2c%d\u4e2a: %s,%s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v1, Lcom/nirenr/talkman/d;->u:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_b6
    const-string v2, "article"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    const-string v2, "detailurl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    const-string v2, "\u7b2c%d\u4e2a: %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget v5, v1, Lcom/nirenr/talkman/d;->u:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "article"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_2f

    :cond_b7
    const-string v0, "\u4e0a\u4e00\u4e2a"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPrevious()Z

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_1d
    const-string v0, "\u957f\u6309"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toLongClick()V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_1e
    const-string v0, "\u8fd4\u56de"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toBack()V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_1f
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b8

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/d;->f(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :cond_b8
    const-string v0, "\u6ca1\u6709\u5185\u5bb9\u53ef\u4ee5\u7ffb\u8bd1"

    goto/16 :goto_1b

    :pswitch_20
    const-string v0, "\u7c98\u8d34"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_32

    :pswitch_21
    iget-object v0, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    if-eqz v0, :cond_b9

    goto :goto_30

    :cond_b9
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_ba

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    const-string v0, "\u786e\u5b9a"

    goto/16 :goto_1b

    :cond_ba
    const-string v0, "\u672a\u627e\u5230\u786e\u5b9a\u6309\u94ae"

    goto/16 :goto_1b

    :pswitch_22
    const-string v0, "\u70b9\u51fb"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick()V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_23
    iget-object v0, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    if-eqz v0, :cond_bb

    :goto_30
    const-string v0, "\u5728\u6d4f\u89c8\u5668\u6253\u5f00"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->openUrl(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_31
    iput-object v2, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    goto/16 :goto_32

    :cond_bb
    const-string v0, "\u70b9\u51fb"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick()V

    goto/16 :goto_32

    :pswitch_24
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy()Z

    move-result v0

    if-eqz v0, :cond_6d

    goto/16 :goto_1a

    :pswitch_25
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "\u53d1\u9001"

    invoke-virtual {v0, v2, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_bc

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    const-string v0, "\u5df2\u53d1\u9001"

    goto/16 :goto_1b

    :cond_bc
    const-string v0, "\u672a\u627e\u5230\u53d1\u9001\u6309\u94ae"

    goto/16 :goto_1b

    :pswitch_26
    iget-object v0, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    if-eqz v0, :cond_bd

    invoke-direct {v1, v7}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    goto :goto_31

    :cond_bd
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v7, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_be

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    invoke-direct {v1, v7}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    goto :goto_32

    :cond_be
    const-string v0, "\u672a\u627e\u5230\u53d6\u6d88\u6309\u94ae"

    goto/16 :goto_1b

    :pswitch_27
    const-string v0, "\u5220\u9664"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_bf

    const-string v0, "\u672a\u627e\u5230\u8f93\u5165\u6846"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_bf
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/high16 v3, 0x200000

    invoke-virtual {v2, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    goto :goto_32

    :pswitch_28
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/nirenr/talkman/d;->t:Lorg/json/JSONArray;

    iput-object v2, v1, Lcom/nirenr/talkman/d;->s:Ljava/lang/String;

    iput-object v4, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeechEnabled(Z)V

    const-string v0, "\u518d\u89c1"

    goto/16 :goto_1b

    :pswitch_29
    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->useAppTTS:Z

    xor-int/2addr v0, v3

    sput-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->useAppTTS:Z

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAppTTS(Z)V

    const-string v0, "\u5207\u6362\u8bed\u97f3\u5e93"

    goto/16 :goto_1b

    :pswitch_2a
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_2b
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNotifications()V

    iget-boolean v0, v1, Lcom/nirenr/talkman/d;->A:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/nirenr/talkman/d;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :cond_c0
    :goto_32
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6913dfc9 -> :sswitch_30
        -0x673b91bb -> :sswitch_2f
        -0x4cc8b66e -> :sswitch_2e
        0xa69d4 -> :sswitch_2d
        0xa8844 -> :sswitch_2c
        0xa9472 -> :sswitch_2b
        0xab650 -> :sswitch_2a
        0xb1ac9 -> :sswitch_29
        0xc470d -> :sswitch_28
        0xdf862 -> :sswitch_27
        0xef0ec -> :sswitch_26
        0xfa39c -> :sswitch_25
        0x100b36 -> :sswitch_24
        0x11c18a -> :sswitch_23
        0x127d6a -> :sswitch_22
        0x12eb3b4 -> :sswitch_21
        0x12eb775 -> :sswitch_20
        0x12ecc7c -> :sswitch_1f
        0x12ed03d -> :sswitch_1e
        0x12eff20 -> :sswitch_1d
        0x12f02e1 -> :sswitch_1c
        0x1313761 -> :sswitch_1b
        0x13fb642 -> :sswitch_1a
        0x22bde64 -> :sswitch_19
        0x2668e1eb -> :sswitch_18
        0x268c3bb8 -> :sswitch_17
        0x26903a4c -> :sswitch_16
        0x269cb45c -> :sswitch_15
        0x26f0cd03 -> :sswitch_14
        0x27296368 -> :sswitch_13
        0x275eb74a -> :sswitch_12
        0x2782b4bb -> :sswitch_11
        0x29919d7e -> :sswitch_10
        0x29bf4fb2 -> :sswitch_f
        0x2c93d492 -> :sswitch_e
        0x2d293586 -> :sswitch_d
        0x2e231970 -> :sswitch_c
        0x2fd15af5 -> :sswitch_b
        0x3341cb1c -> :sswitch_a
        0x347f2e3b -> :sswitch_9
        0x3c518e42 -> :sswitch_8
        0x3d084310 -> :sswitch_7
        0x41e01ce8 -> :sswitch_6
        0x427faa86 -> :sswitch_5
        0x42b5584c -> :sswitch_4
        0x42e15de0 -> :sswitch_3
        0x451f285f -> :sswitch_2
        0x458f569d -> :sswitch_1
        0x5a6fe384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_2b
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_13
        :pswitch_0
    .end packed-switch
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/d;->n:I

    return v0
.end method

.method public o()V
    .locals 4

    iget v0, p0, Lcom/nirenr/talkman/d;->g:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/d;->g:I

    iget v1, p0, Lcom/nirenr/talkman/d;->h:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_1
    iput v0, p0, Lcom/nirenr/talkman/d;->h:I

    iget v1, p0, Lcom/nirenr/talkman/d;->i:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_2
    iput v0, p0, Lcom/nirenr/talkman/d;->i:I

    iget v1, p0, Lcom/nirenr/talkman/d;->f:I

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_3
    iput v0, p0, Lcom/nirenr/talkman/d;->f:I

    iget v1, p0, Lcom/nirenr/talkman/d;->e:I

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_4
    iput v0, p0, Lcom/nirenr/talkman/d;->e:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f060001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/d;->e:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f060002

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/d;->f:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f060003

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/d;->g:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f060004

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/d;->h:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f060005

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/d;->i:I

    return-void
.end method

.method public onBegin()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/d;->n:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u5f00\u59cb\u8bf4\u8bdd"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    return-void
.end method

.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->resetStreamVolume()V

    iget v0, p0, Lcom/nirenr/talkman/d;->i:I

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/d;->q(I)V

    iget v0, p0, Lcom/nirenr/talkman/d;->n:I

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/nirenr/talkman/d;->n:I

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u8bc6\u522b\u5b8c\u6210"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "TextUnderstander onError"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u8bc6\u522b\u51fa\u9519"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nirenr/talkman/d;->f:I

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/d;->q(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onASREnd(Ljava/lang/String;)Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/nirenr/talkman/d;->n:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoSpeechEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nirenr/talkman/d;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nirenr/talkman/d;->r:I

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget v0, p0, Lcom/nirenr/talkman/d;->r:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/d;->r:I

    invoke-virtual {p0}, Lcom/nirenr/talkman/d;->g()V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeechEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f0703ab

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(I)V
    .locals 0

    return-void
.end method

.method public onReady()V
    .locals 4

    iget v0, p0, Lcom/nirenr/talkman/d;->g:I

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/d;->q(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/d;->n:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/d$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/d$b;-><init>(Lcom/nirenr/talkman/d;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u8bf7\u8bf4\u6307\u4ee4"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "header"

    const-string v3, ""

    const/4 v4, -0x1

    iput v4, v1, Lcom/nirenr/talkman/d;->n:I

    iget-object v5, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "TextUnderstander t"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "TextUnderstander s"

    invoke-virtual {v5, v6, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "service"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v7, "cn.yunzhisheng.setting"

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_1
    const-string v6, "cn.yunzhisheng.chat"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_2
    const-string v6, "cn.yunzhisheng.weather"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_3
    const-string v6, "cn.yunzhisheng.music"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v6, "cn.yunzhisheng.audio"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_5
    const-string v6, "cn.yunzhisheng.broadcast"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v6, -0x1

    :goto_1
    const-string v14, "intent"

    const-string v15, "semantic"

    const-string v4, "text"

    const-string v13, "general"

    if-eqz v6, :cond_c

    const-string v8, "\u6b63\u5728\u641c\u7d22"

    if-eq v6, v12, :cond_a

    const-string v12, "data"

    if-eq v6, v11, :cond_8

    if-eq v6, v10, :cond_6

    const-string v3, "TextUnderstander"

    if-eq v6, v9, :cond_5

    const/4 v8, 0x5

    if-eq v6, v8, :cond_2

    :try_start_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v0, :cond_1

    :try_start_3
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    :cond_1
    :try_start_4
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "normalHeader"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :try_start_5
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    iget-object v2, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->openUrl(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    :try_start_6
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/nirenr/talkman/d;->o:Lf2/b;

    if-eqz v0, :cond_11

    iget-object v2, v1, Lcom/nirenr/talkman/d;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lf2/b;->k(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07094f

    const/4 v6, 0x0

    invoke-static {v0, v2, v6}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/nirenr/talkman/d;->o:Lf2/b;

    if-eqz v0, :cond_3

    iget-object v2, v1, Lcom/nirenr/talkman/d;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lf2/b;->k(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    return-void

    :cond_3
    :try_start_7
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/nirenr/talkman/d;->o:Lf2/b;

    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/nirenr/talkman/d;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lf2/b;->k(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07069c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/d;->d()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "\u4ec5\u9650\u4f1a\u5458\u4f7f\u7528\u97f3\u4e50\u641c\u7d22"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/util/Music;->p(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/d;->d()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "\u4ec5\u9650\u4f1a\u5458\u4f7f\u7528\u6709\u58f0\u8bfb\u7269\u641c\u7d22"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-direct {v1, v8}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "playlist"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/util/Music;->r(Lorg/json/JSONArray;)V

    return-void

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/d;->d()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\u4ec5\u9650\u4f1a\u5458\u4f7f\u7528\u4f7f\u7528\u5e7f\u64ad\u641c\u7d22"

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-direct {v1, v8}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/util/Music;->q(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v6, 0x0

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "operands"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v7, -0x23eca875

    if-eq v3, v7, :cond_d

    goto :goto_3

    :cond_d
    const-string v3, "OBJ_VOLUMN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v16, 0x0

    goto :goto_4

    :cond_e
    :goto_3
    const/16 v16, -0x1

    :goto_4
    if-eqz v16, :cond_f

    goto :goto_5

    :cond_f
    const-string v2, "operator"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ACT_INCREASE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->raiseVolume()V

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v2, "ACT_DECREASE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->lowerVolume()V

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_5
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/nirenr/talkman/d;->o:Lf2/b;

    if-eqz v0, :cond_12

    iget-object v2, v1, Lcom/nirenr/talkman/d;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lf2/b;->k(Ljava/lang/String;)V

    :cond_12
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x61cff9d0 -> :sswitch_5
        -0x56f6373b -> :sswitch_4
        -0x564ce4ec -> :sswitch_3
        -0x1ef1add -> :sswitch_2
        0x2b83bb7f -> :sswitch_1
        0x79118c89 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/nirenr/talkman/d;->h:I

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/d;->q(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/d;->r:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/d;->n:I

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u8bc6\u522b\u7ed3\u679c"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onASREnd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "search"

    iput-object p1, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070429

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/d;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onTransResult(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirenr/talkman/d;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07093e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/nirenr/talkman/d;->o()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0701fb

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/d;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "config"

    invoke-virtual {v3, p1, v4}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "recognition_start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "value_none"

    const-string v5, "value_default"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nirenr/talkman/d;->g:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->g:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v7, p0, Lcom/nirenr/talkman/d;->g:I

    invoke-virtual {v2, v7}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->g:I

    iget-object v2, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/d;->g:I

    :cond_2
    :goto_0
    const-string v1, "recognition_success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nirenr/talkman/d;->h:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->h:I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v7, p0, Lcom/nirenr/talkman/d;->h:I

    invoke-virtual {v2, v7}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->h:I

    iget-object v2, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/d;->h:I

    :cond_5
    :goto_1
    const-string v1, "recognition_end"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nirenr/talkman/d;->i:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->i:I

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v7, p0, Lcom/nirenr/talkman/d;->i:I

    invoke-virtual {v2, v7}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->i:I

    iget-object v2, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/d;->i:I

    :cond_8
    :goto_2
    const-string v1, "recognition_error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nirenr/talkman/d;->f:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->f:I

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v7, p0, Lcom/nirenr/talkman/d;->f:I

    invoke-virtual {v2, v7}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->f:I

    iget-object v2, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/d;->f:I

    :cond_b
    :goto_3
    const-string v1, "recognition_cancel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object p1, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v0, p0, Lcom/nirenr/talkman/d;->e:I

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->e:I

    goto :goto_4

    :cond_d
    iget-object v2, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    iget v4, p0, Lcom/nirenr/talkman/d;->e:I

    invoke-virtual {v2, v4}, Landroid/media/SoundPool;->unload(I)Z

    iput v6, p0, Lcom/nirenr/talkman/d;->e:I

    iget-object v2, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/d;->e:I

    :cond_e
    :goto_4
    return-void

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/d;->m:Lcom/nirenr/talkman/speech/Recognizer;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/speech/Recognizer;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/d;->w:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method public u(Z)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/d;->c:Landroid/media/SoundPool;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/d;->m()V

    return-void
.end method

.method public w(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07024b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nirenr/talkman/d;->y:Z

    const-string p1, "input"

    iput-object p1, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nirenr/talkman/d;->A()V

    return-void
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/d;->y:Z

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeech(Z)V

    invoke-virtual {p0}, Lcom/nirenr/talkman/d;->A()V

    const-string v0, "input"

    iput-object v0, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07024b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/d;->y:Z

    iget-object v1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeech(Z)V

    const-string v0, "input"

    iput-object v0, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043b

    goto :goto_0
.end method

.method public z(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/nirenr/talkman/d;->q:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/d;->j:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07024b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/d;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nirenr/talkman/d;->x:Z

    iput-boolean p1, p0, Lcom/nirenr/talkman/d;->y:Z

    const-string p1, "input"

    iput-object p1, p0, Lcom/nirenr/talkman/d;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nirenr/talkman/d;->A()V

    return-void
.end method
