.class public Lj1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Li1/a;


# direct methods
.method public constructor <init>(Li1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/i;->a:Li1/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
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

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lj1/h;

    invoke-direct {v1, p1}, Lj1/h;-><init>(Lcom/baidu/tts/client/model/Conditions;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method

.method public b(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 4
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

    iget-object v0, p0, Lj1/i;->a:Li1/a;

    invoke-virtual {v0}, Li1/a;->q()Lz0/d;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lj1/d;

    iget-object v3, p0, Lj1/i;->a:Li1/a;

    invoke-direct {v2, v0, p1, v3, p2}, Lj1/d;-><init>(Lz0/d;Lcom/baidu/tts/client/model/Conditions;Li1/a;Z)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v1}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method

.method public c(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
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

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lj1/g;

    invoke-direct {v1, p1}, Lj1/g;-><init>(Ljava/util/Set;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method

.method public d(Lorg/json/JSONArray;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lj1/a;

    invoke-direct {v1, p1}, Lj1/a;-><init>(Lorg/json/JSONArray;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method

.method public e()Lcom/baidu/tts/client/model/LibEngineParams;
    .locals 2

    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetEngineParam()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/tts/client/model/LibEngineParams;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/LibEngineParams;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public f()Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lj1/f;

    invoke-direct {v1}, Lj1/f;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object v1
.end method

.method public g(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 3
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

    iget-object v0, p0, Lj1/i;->a:Li1/a;

    invoke-virtual {v0}, Li1/a;->q()Lz0/d;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lj1/c;

    invoke-direct {v2, v0, p1}, Lj1/c;-><init>(Lz0/d;Ljava/util/Set;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v1}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method
