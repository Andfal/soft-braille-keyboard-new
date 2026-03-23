.class public Ll2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static j:Ll2/h;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ll2/b;

.field private c:Ljava/lang/Double;

.field private d:Ljava/lang/Double;

.field private e:Ljava/lang/StringBuilder;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll2/h;->a:Ljava/util/Map;

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ll2/h;->c:Ljava/lang/Double;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ll2/h;->d:Ljava/lang/Double;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ll2/h;->e:Ljava/lang/StringBuilder;

    const-string v0, "\t"

    iput-object v0, p0, Ll2/h;->f:Ljava/lang/String;

    const-string v0, "#"

    iput-object v0, p0, Ll2/h;->g:Ljava/lang/String;

    const-string v0, "/"

    iput-object v0, p0, Ll2/h;->h:Ljava/lang/String;

    const-string v0, "$"

    iput-object v0, p0, Ll2/h;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Ll2/h;->d(Landroid/content/res/AssetManager;)Ljava/util/List;

    move-result-object p1

    const-string v2, "logtag"

    if-nez p1, :cond_0

    const-string p1, "getStrArrayFromFile failed, stop"

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Ll2/b;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-direct {v3, v5}, Ll2/b;-><init>(Ljava/lang/Character;)V

    iput-object v3, p0, Ll2/h;->b:Ll2/b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Ll2/h;->b:Ll2/b;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3, p1, v4}, Ll2/h;->f(Ljava/util/ArrayList;Ljava/util/List;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "restoreElement takes %d ms"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static c(Landroid/content/res/AssetManager;)Ll2/h;
    .locals 2

    sget-object v0, Ll2/h;->j:Ll2/h;

    if-nez v0, :cond_1

    const-class v0, Ll2/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ll2/h;->j:Ll2/h;

    if-nez v1, :cond_0

    new-instance v1, Ll2/h;

    invoke-direct {v1, p0}, Ll2/h;-><init>(Landroid/content/res/AssetManager;)V

    sput-object v1, Ll2/h;->j:Ll2/h;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Ll2/h;->j:Ll2/h;

    return-object p0
.end method

.method private f(Ljava/util/ArrayList;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ll2/b;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll2/b;

    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    aget-object v5, v3, v1

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v6, v4, Ll2/b;->e:I

    iput v1, v4, Ll2/b;->d:I

    goto :goto_3

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ll2/b;->a:Ljava/util/Map;

    const/4 v5, 0x0

    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_3

    aget-object v7, v3, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    new-instance v9, Ljava/lang/Character;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {v9, v7}, Ljava/lang/Character;-><init>(C)V

    new-instance v7, Ll2/b;

    invoke-direct {v7, v9}, Ll2/b;-><init>(Ljava/lang/Character;)V

    iput v8, v7, Ll2/b;->e:I

    iget-object v8, v4, Ll2/b;->a:Ljava/util/Map;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, v4, Ll2/b;->d:I

    add-int/2addr v8, v6

    iput v8, v4, Ll2/b;->d:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, p2, p3}, Ll2/h;->f(Ljava/util/ArrayList;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ll2/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    invoke-virtual {p0, p1}, Ll2/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll2/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    :cond_0
    iget-object p1, p0, Ll2/h;->c:Ljava/lang/Double;

    return-object p1
.end method

.method public d(Landroid/content/res/AssetManager;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\t"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "jieba/dict_processed.txt"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "logtag"

    const-string v0, "Load asset file error:jieba/dict_processed.txt"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Ll2/h;->c:Ljava/lang/Double;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Ll2/h$a;

    invoke-direct {v6, p0, v4, v0}, Ll2/h$a;-><init>(Ll2/h;ILjava/util/List;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public e()Ll2/b;
    .locals 1

    iget-object v0, p0, Ll2/h;->b:Ll2/b;

    return-object v0
.end method
