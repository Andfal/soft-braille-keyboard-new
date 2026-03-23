.class public Lcom/baidu/tts/client/model/ModelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Li1/a;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li1/a;

    invoke-direct {v0, p1}, Li1/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/baidu/tts/client/model/Conditions;
    .locals 3

    new-instance v0, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v0}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/tts/client/model/ModelManager;->getEngineParams()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getDomain()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setDomains([Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getLanguage()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setLanguages([Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getQuality()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/Conditions;->setQualitys([Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;
    .locals 2

    invoke-direct {p0}, Lcom/baidu/tts/client/model/ModelManager;->a()Lcom/baidu/tts/client/model/Conditions;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/AvailableConditions;->getSpeakers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/Conditions;->setSpeakers(Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/AvailableConditions;->getGenders()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/client/model/Conditions;->setGenders(Ljava/util/Set;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkModelsUpdate(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0, p1}, Li1/a;->m(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Lcom/baidu/tts/client/model/OnDownloadListener;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 1

    new-instance v0, Lw0/b;

    invoke-direct {v0}, Lw0/b;-><init>()V

    invoke-virtual {v0, p1}, Lw0/b;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lw0/b;->b(Lcom/baidu/tts/client/model/OnDownloadListener;)V

    iget-object p1, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {p1, v0}, Li1/a;->e(Lw0/b;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object p1

    return-object p1
.end method

.method public getEngineParams()Lcom/baidu/tts/client/model/LibEngineParams;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0}, Li1/a;->f()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v0

    return-object v0
.end method

.method public getLocalModelFileInfos(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
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

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0, p1}, Li1/a;->k(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public getLocalModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
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

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Li1/a;->c(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public getLocalModelsAvailable(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/AvailableConditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/tts/client/model/ModelManager;->a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li1/a;->c(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public getServerDefaultModels()Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0}, Li1/a;->j()Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServerModelFileInfos(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
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

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0, p1}, Li1/a;->d(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public getServerModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
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

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0, p1}, Li1/a;->b(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public getServerModelsAvailable(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/AvailableConditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/tts/client/model/ModelManager;->a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/tts/client/model/ModelManager;->getServerModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public getSpeechModelFileAbsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    sget-object v1, Lb1/g;->v:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Li1/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextModelFileAbsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    sget-object v1, Lb1/g;->u:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Li1/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isModelFileValid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0, p1}, Li1/a;->i(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isModelValid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0, p1}, Li1/a;->l(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public stop()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Li1/a;

    invoke-virtual {v0}, Li1/a;->n()V

    const/4 v0, 0x0

    return v0
.end method
