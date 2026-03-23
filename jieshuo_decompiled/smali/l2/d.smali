.class public Ll2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/d$b;
    }
.end annotation


# static fields
.field private static volatile d:Ll2/d;

.field private static e:Landroid/content/res/AssetManager;

.field private static f:Z


# instance fields
.field private a:Ll2/h;

.field private b:Lm2/a;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll2/d;->c:Z

    invoke-static {p1}, Lm2/a;->b(Landroid/content/res/AssetManager;)Lm2/a;

    move-result-object v0

    iput-object v0, p0, Ll2/d;->b:Lm2/a;

    invoke-static {p1}, Ll2/h;->c(Landroid/content/res/AssetManager;)Ll2/h;

    move-result-object p1

    iput-object p1, p0, Ll2/d;->a:Ll2/h;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll2/d;->c:Z

    return-void
.end method

.method static bridge synthetic a(Landroid/content/res/AssetManager;)V
    .locals 0

    sput-object p0, Ll2/d;->e:Landroid/content/res/AssetManager;

    return-void
.end method

.method static bridge synthetic b(Z)V
    .locals 0

    sput-boolean p0, Ll2/d;->f:Z

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ll2/f<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ll2/f;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Ll2/f;-><init>(Ljava/lang/Object;D)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Ll2/d;->a:Ll2/h;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ll2/h;->b(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll2/f;

    iget-object v7, v7, Ll2/f;->b:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    if-nez v3, :cond_1

    new-instance v3, Ll2/f;

    invoke-direct {v3, v4, v5, v6}, Ll2/f;-><init>(Ljava/lang/Object;D)V

    goto :goto_1

    :cond_1
    iget-object v7, v3, Ll2/f;->b:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v9, v7, v5

    if-gez v9, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v3, Ll2/f;->b:Ljava/lang/Double;

    iput-object v4, v3, Ll2/f;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private d(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Ll2/d;->a:Ll2/h;

    invoke-virtual {v1}, Ll2/h;->e()Ll2/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_5

    sub-int v6, v5, v4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, p1, v4, v6}, Ll2/b;->c([CII)Ll2/c;

    move-result-object v6

    invoke-virtual {v6}, Ll2/c;->b()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ll2/c;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v6}, Ll2/c;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_0

    goto :goto_1

    :cond_5
    :goto_4
    if-ge v3, v2, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    return-object v0
.end method

.method public static f()Ll2/d;
    .locals 7

    sget-object v0, Ll2/d;->e:Landroid/content/res/AssetManager;

    if-nez v0, :cond_1

    const-string v0, "logtag"

    const-string v1, "Call init first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Ll2/d;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-static {v0}, Ll2/d;->g(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ll2/d;->d:Ll2/d;

    if-nez v2, :cond_3

    const-class v2, Ll2/d;

    monitor-enter v2

    :try_start_0
    sget-object v3, Ll2/d;->d:Ll2/d;

    if-nez v3, :cond_2

    new-instance v3, Ll2/d;

    sget-object v4, Ll2/d;->e:Landroid/content/res/AssetManager;

    invoke-direct {v3, v4}, Ll2/d;-><init>(Landroid/content/res/AssetManager;)V

    sput-object v3, Ll2/d;->d:Ll2/d;

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "logtag"

    const-string v5, "init complete takes:%d ms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ll2/d;->d:Ll2/d;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Ll2/d;->f:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ll2/d$a;

    invoke-direct {v1, p0}, Ll2/d$a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private i(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0, p1}, Ll2/d;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Ll2/d;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll2/f;

    iget-object v6, v6, Ll2/f;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sub-int v4, v6, v4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v5, :cond_1

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v5, p0, Ll2/d;->a:Ll2/h;

    invoke-virtual {v5, v3}, Ll2/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Ll2/d;->b:Lm2/a;

    invoke-virtual {v5, v3, v0}, Lm2/a;->a(Ljava/lang/String;Ljava/util/List;)V

    :goto_2
    move-object v3, v4

    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move v4, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_5

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    iget-object v1, p0, Ll2/d;->a:Ll2/h;

    invoke-virtual {v1, p1}, Ll2/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, p0, Ll2/d;->b:Lm2/a;

    invoke-virtual {v1, p1, v0}, Lm2/a;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_7
    :goto_5
    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Ll2/d;->c:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ll2/d$b;->b:Ll2/d$b;

    invoke-virtual {p0, p1, v2}, Ll2/d;->h(Ljava/lang/String;Ll2/d$b;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string v0, "getDivideList takes %d ms"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "logtag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll2/g;

    iget-object v1, v1, Ll2/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public h(Ljava/lang/String;Ll2/d$b;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ll2/d$b;",
            ")",
            "Ljava/util/List<",
            "Ll2/g;",
            ">;"
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Ll2/d;->c:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ge v3, v5, :cond_a

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ll2/a;->f(C)C

    move-result v5

    invoke-static {v5}, Ll2/a;->a(C)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_8

    sget-object v5, Ll2/d$b;->b:Ll2/d$b;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ll2/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-ne p2, v5, :cond_2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ll2/g;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-direct {v6, v5, v4, v7}, Ll2/g;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_2

    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v7, :cond_4

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_4

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ll2/d;->a:Ll2/h;

    invoke-virtual {v10, v9}, Ll2/h;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ll2/g;

    add-int v11, v4, v8

    add-int/lit8 v12, v11, 0x2

    invoke-direct {v10, v9, v11, v12}, Ll2/g;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_6

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    if-ge v8, v9, :cond_6

    add-int/lit8 v9, v8, 0x3

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ll2/d;->a:Ll2/h;

    invoke-virtual {v10, v9}, Ll2/h;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ll2/g;

    add-int v11, v4, v8

    add-int/lit8 v12, v11, 0x3

    invoke-direct {v10, v9, v11, v12}, Ll2/g;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    new-instance v8, Ll2/g;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    invoke-direct {v8, v5, v4, v9}, Ll2/g;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v9

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v3

    :cond_8
    iget-object v5, p0, Ll2/d;->a:Ll2/h;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ll2/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ll2/g;

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-direct {v5, v6, v4, v7}, Ll2/g;-><init>(Ljava/lang/String;II)V

    goto :goto_6

    :cond_9
    new-instance v5, Ll2/g;

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-direct {v5, v6, v4, v7}, Ll2/g;-><init>(Ljava/lang/String;II)V

    :goto_6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v7

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_10

    sget-object p1, Ll2/d$b;->b:Ll2/d$b;

    if-ne p2, p1, :cond_b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ll2/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v1, Ll2/g;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {v1, p2, v4, v2}, Ll2/g;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_8

    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ll2/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_d

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_d

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Ll2/d;->a:Ll2/h;

    invoke-virtual {v5, v3}, Ll2/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Ll2/g;

    add-int v8, v4, v1

    add-int/lit8 v9, v8, 0x2

    invoke-direct {v5, v3, v8, v9}, Ll2/g;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_f

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    if-ge v1, v3, :cond_f

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Ll2/d;->a:Ll2/h;

    invoke-virtual {v5, v3}, Ll2/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Ll2/g;

    add-int v8, v4, v1

    add-int/lit8 v9, v8, 0x3

    invoke-direct {v5, v3, v8, v9}, Ll2/g;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_f
    new-instance v1, Ll2/g;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v1, p2, v4, v3}, Ll2/g;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_9

    :cond_10
    return-object v0
.end method
