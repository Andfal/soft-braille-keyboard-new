.class public Lo1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo1/c;


# direct methods
.method public constructor <init>(Lo1/c;)V
    .locals 0

    iput-object p1, p0, Lo1/c$a;->a:Lo1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lo1/c$a;->a:Lo1/c;

    invoke-static {v2}, Lo1/c;->g(Lo1/c;)Li1/a;

    move-result-object v2

    invoke-virtual {v2}, Li1/a;->r()Ljava/util/Map;

    move-result-object v2

    const-string v3, "listId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo1/c$a;->a:Lo1/c;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lo1/c;->b(Lo1/c;I)I

    iget-object v3, p0, Lo1/c$a;->a:Lo1/c;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lo1/c;->e(Lo1/c;I)I

    :cond_0
    iget-object v2, p0, Lo1/c$a;->a:Lo1/c;

    invoke-static {v2}, Lo1/c;->g(Lo1/c;)Li1/a;

    move-result-object v2

    invoke-virtual {v2}, Li1/a;->r()Ljava/util/Map;

    move-result-object v2

    const-string v3, "list"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    :try_start_0
    const-string v2, "deviceInfo"

    iget-object v4, p0, Lo1/c$a;->a:Lo1/c;

    invoke-static {v4}, Lo1/c;->h(Lo1/c;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo1/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appinfo"

    iget-object v4, p0, Lo1/c$a;->a:Lo1/c;

    invoke-static {v4}, Lo1/c;->h(Lo1/c;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo1/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "methodinfo"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "UploadStatistics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StatisticsData= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    invoke-static {v0}, Lq1/a;->i(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 4

    new-instance v0, Lk1/b;

    invoke-direct {v0}, Lk1/b;-><init>()V

    sget-object v1, Lb1/o;->e:Lb1/o;

    invoke-virtual {v1}, Lb1/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lo1/c$a;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo1/d;

    invoke-direct {v3}, Lo1/d;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lk1/b;->e(Ljava/lang/String;Ljava/lang/String;Lk1/g;)V

    invoke-virtual {v3}, Lo1/d;->k()I

    move-result v0

    iget-object v1, p0, Lo1/c$a;->a:Lo1/c;

    iget-object v1, v1, Lo1/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lo1/c$a$a;

    invoke-direct {v2, p0, v0}, Lo1/c$a$a;-><init>(Lo1/c$a;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo1/c$a;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
