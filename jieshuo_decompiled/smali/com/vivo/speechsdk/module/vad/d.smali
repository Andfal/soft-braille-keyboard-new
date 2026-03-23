.class public Lcom/vivo/speechsdk/module/vad/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/vad/a;


# static fields
.field private static final b:Ljava/lang/String; = "VadWrapper"

.field private static volatile c:Z = false

.field private static final d:Ljava/lang/String; = "denoise"

.field private static final e:Ljava/lang/String; = "normal"

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field private static h:I = 0x0

.field private static i:Z = false

.field private static j:I = 0x1

.field private static k:Lcom/vivo/speechsdk/module/vad/a;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const-string v4, "denoise"

    const-string v5, "normal"

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    invoke-interface {v2, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    array-length v3, v2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    aget-object v6, v2, v0

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    aget-object v4, v2, v0

    aget-object v2, v2, v6

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/vad/a;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/String;ZIZ)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    sput-boolean p2, Lcom/vivo/speechsdk/module/vad/d;->i:Z

    sput p3, Lcom/vivo/speechsdk/module/vad/d;->j:I

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/vad/d;->a(Ljava/lang/String;)V

    sget-boolean p1, Lcom/vivo/speechsdk/module/vad/d;->i:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c()Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->b()I

    move-result p1

    sput p1, Lcom/vivo/speechsdk/module/vad/d;->h:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/vivo/speechsdk/module/vad/Denoise;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/vad/Denoise;-><init>()V

    sput-object p1, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    const-string p2, "denoise"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance p1, Lcom/vivo/speechsdk/module/vad/VadCheck;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/vad/VadCheck;-><init>()V

    sput-object p1, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    const-string p2, "normal"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/vivo/speechsdk/module/vad/VadCheck;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/vad/VadCheck;-><init>()V

    sput-object p1, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/vad/d;->a:Ljava/util/Map;

    const-string p2, "normal"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "normal"

    :cond_3
    invoke-virtual {p0, p1, p3, p4}, Lcom/vivo/speechsdk/module/vad/d;->init(Ljava/lang/String;IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/vad/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 3

    sget-boolean v0, Lcom/vivo/speechsdk/module/vad/d;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget v0, Lcom/vivo/speechsdk/module/vad/d;->h:I

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    sget v0, Lcom/vivo/speechsdk/module/vad/d;->j:I

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public check([SLcom/vivo/speechsdk/module/vad/VadAudio;)V
    .locals 1

    sget-boolean v0, Lcom/vivo/speechsdk/module/vad/d;->c:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/vivo/speechsdk/module/vad/d;->i:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/vivo/speechsdk/module/vad/d;->h:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c()Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->a([S)[S

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/module/vad/VadAudio;->setVadData([S)V

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/vad/a;->check([SLcom/vivo/speechsdk/module/vad/VadAudio;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/vivo/speechsdk/module/vad/d;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c()Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->e()V

    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/vad/a;->clear()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/speechsdk/module/vad/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVadInnerDelay()I
    .locals 1

    sget-boolean v0, Lcom/vivo/speechsdk/module/vad/d;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/vad/a;->getVadInnerDelay()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/vad/a;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized init(Ljava/lang/String;IZ)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/speechsdk/module/vad/VadCheck;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/vad/VadCheck;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    :cond_0
    sget-boolean v0, Lcom/vivo/speechsdk/module/vad/d;->c:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/vad/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/vivo/speechsdk/module/vad/a;->init(Ljava/lang/String;IZ)Z

    move-result p1

    sput-boolean p1, Lcom/vivo/speechsdk/module/vad/d;->c:Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/vivo/speechsdk/module/vad/d;->k:Lcom/vivo/speechsdk/module/vad/a;

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/vad/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " load failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VadWrapper"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/vivo/speechsdk/module/vad/d;->c:Z

    :cond_2
    :goto_0
    sget-boolean p1, Lcom/vivo/speechsdk/module/vad/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
