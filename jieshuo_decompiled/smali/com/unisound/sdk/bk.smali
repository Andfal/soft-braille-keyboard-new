.class public Lcom/unisound/sdk/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Z = false

.field public static final e:I = 0x0

.field public static final f:I = 0x12c

.field public static final g:I = 0x32

.field public static final h:I = 0x32

.field public static final i:I = 0x32

.field public static final j:Ljava/lang/String; = "xiaoli"

.field public static final k:I = 0x3e80

.field public static final l:Z = false

.field public static final m:I = 0x64

.field public static final n:I = 0x64

.field public static final o:I = 0x2

.field public static final p:Z = false

.field public static final q:Z = false

.field private static s:Lcom/unisound/sdk/bk;


# instance fields
.field private A:I

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/Integer;

.field private G:I

.field private H:Ljava/lang/Boolean;

.field private I:I

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/unisound/sdk/b;

.field private r:Lcom/unisound/common/a;

.field private t:Ljava/lang/Boolean;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/common/a;

    const/16 v1, 0x50

    const-string v2, "117.121.49.41"

    const-string v3, "ttsv3.hivoice.cn"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/bk;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/sdk/bk;->b:Ljava/lang/String;

    new-instance v1, Lcom/unisound/sdk/b;

    invoke-direct {v1}, Lcom/unisound/sdk/b;-><init>()V

    iput-object v1, p0, Lcom/unisound/sdk/bk;->c:Lcom/unisound/sdk/b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/unisound/sdk/bk;->t:Ljava/lang/Boolean;

    const/16 v2, 0x12c

    iput v2, p0, Lcom/unisound/sdk/bk;->v:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/unisound/sdk/bk;->w:I

    iput v2, p0, Lcom/unisound/sdk/bk;->x:I

    iput v2, p0, Lcom/unisound/sdk/bk;->y:I

    const-string v2, "xiaoli"

    iput-object v2, p0, Lcom/unisound/sdk/bk;->z:Ljava/lang/String;

    const/16 v2, 0x3e80

    iput v2, p0, Lcom/unisound/sdk/bk;->A:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/unisound/sdk/bk;->B:Ljava/util/List;

    const/4 v2, 0x3

    iput v2, p0, Lcom/unisound/sdk/bk;->C:I

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/unisound/sdk/bk;->F:Ljava/lang/Integer;

    iput v0, p0, Lcom/unisound/sdk/bk;->G:I

    iput-object v1, p0, Lcom/unisound/sdk/bk;->H:Ljava/lang/Boolean;

    const/16 v1, 0x64

    iput v1, p0, Lcom/unisound/sdk/bk;->I:I

    iput v1, p0, Lcom/unisound/sdk/bk;->J:I

    iput-boolean v0, p0, Lcom/unisound/sdk/bk;->K:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/bk;->L:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bk;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/bk;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/bk;->O:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "TTSParams checkParams: value < 0"

    invoke-static {p1}, Lcom/unisound/common/r;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const-string p1, "TTSParams checkParams: value > 100"

    invoke-static {p1}, Lcom/unisound/common/r;->d(Ljava/lang/String;)V

    return v0

    :cond_1
    return p1
.end method

.method public static a()Lcom/unisound/sdk/bk;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/bk;->s:Lcom/unisound/sdk/bk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/sdk/bk;

    invoke-direct {v0}, Lcom/unisound/sdk/bk;-><init>()V

    sput-object v0, Lcom/unisound/sdk/bk;->s:Lcom/unisound/sdk/bk;

    :cond_0
    sget-object v0, Lcom/unisound/sdk/bk;->s:Lcom/unisound/sdk/bk;

    return-object v0
.end method

.method private b(I)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    const-string p1, "TTSParams checkSilenceTime: silence > 1000 invoked silence = 1000"

    invoke-static {p1}, Lcom/unisound/common/r;->d(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    :cond_0
    if-gez p1, :cond_1

    const-string p1, "TTSParams checkSilenceTime: silence < 0 invoked silence = 0"

    invoke-static {p1}, Lcom/unisound/common/r;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "TTSParams isNumberUseable: value is empty or unusable"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private f(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TTSParams isStringUseable: value is empty"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 3

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bk;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TTSParams checkAddress: ip unusable"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "TTSParams checkAddress: port unusable"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return v2

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private i(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const v1, 0xffff

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "TTSParams checkPort: port Illegal"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "TTSParams checkPort: port changeTo integer exception"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return v0
.end method

.method private x(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "TTSParams object2Boolean: obj is null"

    :goto_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "TTSParams object2Boolean: obj is not change to boolean"

    goto :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->D:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->E:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->F:Ljava/lang/Integer;

    return-object v0
.end method

.method public D()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_VoiceSpeed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_VoicePitch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_VoiceVolume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_SampleRate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_VoiceName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_ServerAddress"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_PlayStartBufferTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_StreamType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_IsDebug"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tts_ServiceMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/bk;->N:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bk;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    invoke-virtual {v0, p2}, Lcom/unisound/common/a;->a(I)V

    iget-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    invoke-virtual {p1, p2}, Lcom/unisound/common/a;->b(I)V

    return-void
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/unisound/sdk/b;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->c:Lcom/unisound/sdk/b;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/bk;->M:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bk;->D:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/bk;->O:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bk;->E:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->c()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->x(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisound/sdk/bk;->L:Z

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->e()V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->x(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisound/sdk/bk;->K:Z

    return-void
.end method

.method public f()Lcom/unisound/common/a;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->r:Lcom/unisound/common/a;

    return-object v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->x(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/bk;->H:Ljava/lang/Boolean;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->N:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->b(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/unisound/sdk/bk;->I:I

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->M:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->b(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/unisound/sdk/bk;->J:I

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->O:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/unisound/sdk/bk;->G:I

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->x(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/bk;->t:Ljava/lang/Boolean;

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "TTSParams setDebugDir: mDebugDir is null"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/unisound/sdk/bk;->u:Ljava/lang/String;

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bk;->L:Z

    return v0
.end method

.method public l(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "TTSParams setVoiceName: voiceName is null"

    :goto_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "TTSParams setVoiceName: voiceName unusable"

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/unisound/sdk/bk;->z:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bk;->K:Z

    return v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->H:Ljava/lang/Boolean;

    return-object v0
.end method

.method public m(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->a(Ljava/lang/Integer;)I

    move-result p1

    iput p1, p0, Lcom/unisound/sdk/bk;->w:I

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->I:I

    return v0
.end method

.method public n(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->a(Ljava/lang/Integer;)I

    move-result p1

    iput p1, p0, Lcom/unisound/sdk/bk;->x:I

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->J:I

    return v0
.end method

.method public o(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->a(Ljava/lang/Integer;)I

    move-result p1

    iput p1, p0, Lcom/unisound/sdk/bk;->y:I

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->G:I

    return v0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3a98

    if-le v0, v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTSParams setPlayStartBufferTime: playStartBufferTime > 15000 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTSParams setPlayStartBufferTime: playStartBufferTime < 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/unisound/sdk/bk;->v:I

    return-void
.end method

.method public q()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->t:Ljava/lang/Boolean;

    return-object v0
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "TTSParams object2String: obj is null"

    :goto_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, "TTSParams object2String: obj can not change to String"

    goto :goto_0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->u:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "TTSParams setSampleRate: mSampleRate is null"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "TTSParams setSampleRate: mSampleRate unusable"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0xbb80

    if-eq p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/unisound/sdk/bk;->A:I

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->z:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "TTSParams addField: value is null"

    :goto_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->B:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "TTSParams addField: value can not change to integer"

    goto :goto_0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->w:I

    return v0
.end method

.method public t(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TTSParams setServerAddress: address unusable"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/sdk/bk;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->x:I

    return v0
.end method

.method public u(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/unisound/sdk/bk;->C:I

    return-void

    :cond_1
    :goto_0
    const-string p1, "TTSParams setStreamType: mStreamType unusable"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->y:I

    return v0
.end method

.method public v(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "TTSParams object2Integer: obj is null"

    :goto_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_1
    const-string p1, "TTSParams object2Integer: obj can not change to integer"

    goto :goto_0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->v:I

    return v0
.end method

.method public w(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bk;->v(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "TTSParams setMode: mMode unusable"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/unisound/sdk/bk;->F:Ljava/lang/Integer;

    return-void
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->A:I

    return v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/bk;->B:Ljava/util/List;

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bk;->C:I

    return v0
.end method
