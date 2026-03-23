.class public Lcom/nirenr/talkman/util/Music;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/util/Music$h;,
        Lcom/nirenr/talkman/util/Music$g;,
        Lcom/nirenr/talkman/util/Music$MusicCallBack;,
        Lcom/nirenr/talkman/util/Music$f;,
        Lcom/nirenr/talkman/util/Music$PlayList;,
        Lcom/nirenr/talkman/util/Music$i;,
        Lcom/nirenr/talkman/util/Music$e;
    }
.end annotation


# static fields
.field private static c:Lcom/nirenr/talkman/util/Music;

.field private static d:Landroid/media/MediaPlayer;

.field private static e:Z

.field private static final f:Ljava/lang/String;


# instance fields
.field private final a:Lcom/androlua/LuaContext;

.field private b:Lcom/nirenr/talkman/util/Music$PlayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/util/Music;->f:Ljava/lang/String;

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

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/Music;->a:Lcom/androlua/LuaContext;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sput-object p0, Lcom/nirenr/talkman/util/Music;->c:Lcom/nirenr/talkman/util/Music;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nirenr/talkman/util/Music;->e:Z

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/util/Music;)Lcom/nirenr/talkman/util/Music$PlayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/util/Music;)Lcom/androlua/LuaContext;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/Music;->a:Lcom/androlua/LuaContext;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/util/Music;Lcom/nirenr/talkman/util/Music$PlayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    return-void
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/util/Music;->u(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic e()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private f()Z
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

    sget-object v1, Lcom/nirenr/talkman/util/Music;->f:Ljava/lang/String;

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

.method public static g()Lcom/nirenr/talkman/util/Music;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/util/Music;->c:Lcom/nirenr/talkman/util/Music;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nirenr/talkman/util/Music;

    invoke-direct {v0}, Lcom/nirenr/talkman/util/Music;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/util/Music;->c:Lcom/nirenr/talkman/util/Music;

    :cond_1
    sget-object v0, Lcom/nirenr/talkman/util/Music;->c:Lcom/nirenr/talkman/util/Music;

    return-object v0
.end method

.method public static i()Z
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/nirenr/talkman/util/Music;->e:Z

    return v0
.end method

.method public static o()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nirenr/talkman/util/Music;->e:Z

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static t(F)V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/util/Music;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/a;->T(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/Music;->a:Lcom/androlua/LuaContext;

    invoke-interface {v0, p1}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    invoke-interface {v0}, Lcom/nirenr/talkman/util/Music$PlayList;->getNameList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/nirenr/talkman/util/Music$PlayList;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    invoke-interface {v0}, Lcom/nirenr/talkman/util/Music$PlayList;->next()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public k()V
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/util/Music$PlayList;->setIdx(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    invoke-interface {p1}, Lcom/nirenr/talkman/util/Music$PlayList;->next()V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nirenr/talkman/util/Music;->e:Z

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :try_start_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "play"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object p1, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object p1, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/nirenr/talkman/util/Music$b;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/Music$b;-><init>(Lcom/nirenr/talkman/util/Music;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget-object p1, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/nirenr/talkman/util/Music$c;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/Music$c;-><init>(Lcom/nirenr/talkman/util/Music;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u64ad\u653e\u51fa\u9519"

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/util/Music;->u(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/nirenr/talkman/util/Music$PlayList;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    invoke-interface {v0}, Lcom/nirenr/talkman/util/Music$PlayList;->previous()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    instance-of p1, p1, Lcom/nirenr/talkman/util/Music$g;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/Music;->j()Z

    :cond_0
    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const-string p1, "\u641c\u7d22\u6b4c\u66f2\u51fa\u9519"

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/util/Music;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/nirenr/talkman/util/Music$f;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/util/Music$f;-><init>(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    invoke-interface {v0}, Lcom/nirenr/talkman/util/Music$PlayList;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    invoke-interface {p1}, Lcom/nirenr/talkman/util/Music$PlayList;->next()V

    :cond_1
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nirenr/talkman/util/Music$d;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/Music$d;-><init>(Lcom/nirenr/talkman/util/Music;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/nirenr/talkman/util/Music;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain=himalayan&question="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/util/Music$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/Music$a;-><init>(Lcom/nirenr/talkman/util/Music;)V

    const-string v1, "https://www.aicloud.com/dev/ability/nlu.html"

    invoke-static {v1, p1, v0}, Lcom/nirenr/talkman/util/HttpUtil;->g(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void
.end method

.method public r(Lorg/json/JSONArray;)V
    .locals 1

    new-instance v0, Lcom/nirenr/talkman/util/Music$h;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/util/Music$h;-><init>(Lcom/nirenr/talkman/util/Music;Lorg/json/JSONArray;)V

    iput-object v0, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    invoke-interface {v0}, Lcom/nirenr/talkman/util/Music$PlayList;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    invoke-interface {p1}, Lcom/nirenr/talkman/util/Music$PlayList;->next()V

    :cond_0
    return-void
.end method

.method public s(Lcom/nirenr/talkman/util/Music$PlayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/Music;->b:Lcom/nirenr/talkman/util/Music$PlayList;

    return-void
.end method

.method public v()V
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nirenr/talkman/util/Music;->e:Z

    sget-object v0, Lcom/nirenr/talkman/util/Music;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
