.class public Lj1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/client/model/ModelBags;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/client/model/Conditions;

.field private b:Lz0/d;

.field private c:Li1/a;

.field private d:Z


# direct methods
.method public constructor <init>(Lz0/d;Lcom/baidu/tts/client/model/Conditions;Li1/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj1/d;->a:Lcom/baidu/tts/client/model/Conditions;

    iput-object p1, p0, Lj1/d;->b:Lz0/d;

    iput-object p3, p0, Lj1/d;->c:Li1/a;

    iput-boolean p4, p0, Lj1/d;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelBags;
    .locals 4

    iget-object v0, p0, Lj1/d;->b:Lz0/d;

    iget-object v1, p0, Lj1/d;->a:Lcom/baidu/tts/client/model/Conditions;

    invoke-virtual {v0, v1}, Lz0/d;->d(Lcom/baidu/tts/client/model/Conditions;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/baidu/tts/client/model/ModelBags;

    invoke-direct {v1}, Lcom/baidu/tts/client/model/ModelBags;-><init>()V

    invoke-virtual {v1, v0}, Lcom/baidu/tts/client/model/ModelBags;->setList(Ljava/util/List;)V

    iget-boolean v0, p0, Lj1/d;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelBags;->getModelInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/tts/client/model/ModelInfo;

    invoke-virtual {v2}, Lcom/baidu/tts/client/model/ModelInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj1/d;->c:Li1/a;

    invoke-virtual {v3, v2}, Li1/a;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj1/d;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    return-object v0
.end method
