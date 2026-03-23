.class public Li1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lz0/d;

.field private c:Lz0/g;

.field private d:Lj1/i;

.field private e:Lw0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Li1/a;->s()V

    return-void
.end method

.method private s()V
    .locals 1

    new-instance v0, Lz0/d;

    invoke-direct {v0, p0}, Lz0/d;-><init>(Li1/a;)V

    iput-object v0, p0, Li1/a;->b:Lz0/d;

    new-instance v0, Lz0/g;

    invoke-direct {v0, p0}, Lz0/g;-><init>(Li1/a;)V

    iput-object v0, p0, Li1/a;->c:Lz0/g;

    new-instance v0, Lj1/i;

    invoke-direct {v0, p0}, Lj1/i;-><init>(Li1/a;)V

    iput-object v0, p0, Li1/a;->d:Lj1/i;

    new-instance v0, Lw0/d;

    invoke-direct {v0}, Lw0/d;-><init>()V

    iput-object v0, p0, Li1/a;->e:Lw0/d;

    invoke-virtual {v0, p0}, Lw0/d;->d(Li1/a;)V

    iget-object v0, p0, Li1/a;->e:Lw0/d;

    invoke-virtual {v0}, Lw0/d;->c()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    iget-object v0, p0, Li1/a;->c:Lz0/g;

    invoke-virtual {v0, p1, p2}, Lz0/g;->a(II)I

    move-result p1

    return p1
.end method

.method public b(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li1/a;->d:Lj1/i;

    invoke-virtual {v0, p1}, Lj1/i;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            "Z)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li1/a;->d:Lj1/i;

    invoke-virtual {v0, p1, p2}, Lj1/i;->b(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li1/a;->d:Lj1/i;

    invoke-virtual {v0, p1}, Lj1/i;->c(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public e(Lw0/b;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 1

    iget-object v0, p0, Li1/a;->e:Lw0/d;

    invoke-virtual {v0, p1}, Lw0/d;->b(Lw0/b;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object p1

    return-object p1
.end method

.method public f()Lcom/baidu/tts/client/model/LibEngineParams;
    .locals 1

    iget-object v0, p0, Li1/a;->d:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->e()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li1/a;->b:Lz0/d;

    invoke-virtual {v0, p1, p2}, Lz0/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Li1/a;->c:Lz0/g;

    invoke-virtual {v0, p1, p2, p3}, Lz0/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Li1/a;->b:Lz0/d;

    invoke-virtual {v0, p1}, Lz0/d;->n(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lq1/b;->g(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lb1/g;->k:Lb1/g;

    invoke-virtual {v0}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lb1/g;->j:Lb1/g;

    invoke-virtual {v2}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lb1/g;->i:Lb1/g;

    invoke-virtual {v3}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lq1/f;->e()Lq1/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lq1/f;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public j()Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li1/a;->d:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->f()Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li1/a;->d:Lj1/i;

    invoke-virtual {v0, p1}, Lj1/i;->g(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Li1/a;->b:Lz0/d;

    invoke-virtual {v0, p1}, Lz0/d;->o(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lq1/b;->g(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lb1/g;->u:Lb1/g;

    invoke-virtual {v0}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lb1/g;->v:Lb1/g;

    invoke-virtual {v2}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Li1/a;->i(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Li1/a;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public m(Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "GetServerModelsWork"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v5}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    invoke-virtual {v5, v2}, Lcom/baidu/tts/client/model/Conditions;->appendId(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v4}, Li1/a;->c(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/tts/client/model/ModelBags;

    invoke-virtual {v5}, Lcom/baidu/tts/client/model/ModelBags;->toJson()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v5}, Lcom/baidu/tts/client/model/ModelBags;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "^[0-9]+$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "needUpdate"

    const/4 v3, 0x2

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "params error id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not int"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lv0/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Li1/a;->d:Lj1/i;

    invoke-virtual {p1, v1}, Lj1/i;->d(Lorg/json/JSONArray;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v4, p1, :cond_5

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "servers return result is empty"

    invoke-static {v3, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    const-string p1, "params error"

    return-object p1
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Li1/a;->e:Lw0/d;

    invoke-virtual {v0}, Lw0/d;->e()V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Li1/a;->c:Lz0/g;

    invoke-virtual {v0, p1}, Lz0/g;->c(Ljava/lang/String;)J

    return-void
.end method

.method public p()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Li1/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public q()Lz0/d;
    .locals 1

    iget-object v0, p0, Li1/a;->b:Lz0/d;

    return-object v0
.end method

.method public r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li1/a;->c:Lz0/g;

    invoke-virtual {v0}, Lz0/g;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
