.class public Lcom/baidu/tts/client/model/ModelFileBags;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ll0/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFileInfo(Lcom/baidu/tts/client/model/ModelFileInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generateAbsPath(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/client/model/ModelFileInfo;

    invoke-virtual {v1, p1}, Lcom/baidu/tts/client/model/ModelFileInfo;->generateAbsPath(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getModelFileInfo(I)Lcom/baidu/tts/client/model/ModelFileInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/tts/client/model/ModelFileInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModelFileInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTtsError()Ll0/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->a:Ll0/f;

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/tts/client/model/ModelFileBags;->getModelFileInfo(I)Lcom/baidu/tts/client/model/ModelFileInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/ModelFileInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-static {v0}, Lq1/b;->e(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public parseJson(Lorg/json/JSONArray;)V
    .locals 4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/baidu/tts/client/model/ModelFileInfo;

    invoke-direct {v3}, Lcom/baidu/tts/client/model/ModelFileInfo;-><init>()V

    invoke-virtual {v3, v2}, Lcom/baidu/tts/client/model/ModelFileInfo;->parseJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v3}, Lcom/baidu/tts/client/model/ModelFileBags;->addFileInfo(Lcom/baidu/tts/client/model/ModelFileInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/baidu/tts/client/model/ModelFileInfo;

    invoke-direct {v2}, Lcom/baidu/tts/client/model/ModelFileInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/baidu/tts/client/model/ModelFileInfo;->setMap(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    :cond_2
    :goto_1
    return-void
.end method

.method public setModelFileInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    return-void
.end method

.method public setTtsError(Ll0/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->a:Ll0/f;

    return-void
.end method

.method public toJson()Lorg/json/JSONArray;
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/tts/client/model/ModelFileBags;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/tts/client/model/ModelFileInfo;

    invoke-virtual {v2}, Lcom/baidu/tts/client/model/ModelFileInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method
