.class public Lcom/iflytek/sparkchain/core/Tools;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iflytek/sparkchain/plugins/base/BaseTool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Tools;->pluginList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>([Lcom/iflytek/sparkchain/plugins/base/BaseTool;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Tools;->pluginList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public append(Lcom/iflytek/sparkchain/core/Tools;)Lcom/iflytek/sparkchain/core/Tools;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Tools;->pluginList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/Tools;->getAllPlugin()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Tools;->pluginList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public append([Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Tools;->pluginList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public getAllPlugin()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/iflytek/sparkchain/plugins/base/BaseTool;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Tools;->pluginList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/base/BaseTool;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/core/Tools;->pluginList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;

    iget-object v3, v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/Tools;->pluginList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    :try_start_0
    iget-object v5, v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/iflytek/sparkchain/core/e;->a(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v5, v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "desc"

    :try_start_2
    iget-object v5, v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->description:Ljava/lang/String;

    invoke-static {v5}, Lcom/iflytek/sparkchain/core/e;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_2

    :cond_1
    iget-object v5, v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->description:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "prompt"

    :try_start_3
    iget-object v5, v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->argsSchema:Lcom/iflytek/sparkchain/plugins/base/BaseModel;

    invoke-static {v5}, Lcom/iflytek/sparkchain/core/e;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->argsSchema:Lcom/iflytek/sparkchain/plugins/base/BaseModel;

    invoke-virtual {v5}, Lcom/iflytek/sparkchain/plugins/base/BaseModel;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "isDirect"

    :try_start_4
    iget-boolean v2, v2, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->isDirect:Z

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "platform"

    const-string v4, "android"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
