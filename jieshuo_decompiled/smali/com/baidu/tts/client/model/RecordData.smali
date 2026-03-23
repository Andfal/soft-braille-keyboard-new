.class public Lcom/baidu/tts/client/model/RecordData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/client/model/RecordData$InsertData;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field private b:Li1/a;


# direct methods
.method public constructor <init>(Li1/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/RecordData;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/baidu/tts/client/model/RecordData;->b:Li1/a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/client/model/RecordData;)Li1/a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/tts/client/model/RecordData;->b:Li1/a;

    return-object p0
.end method


# virtual methods
.method public setEndInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "modeId"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "result"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "endTime"

    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "RecordData"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "EndInfo json= "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/tts/client/model/RecordData;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/baidu/tts/client/model/RecordData$InsertData;

    const-string p4, "endInfo"

    invoke-direct {p3, p0, v0, p1, p4}, Lcom/baidu/tts/client/model/RecordData$InsertData;-><init>(Lcom/baidu/tts/client/model/RecordData;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setStartInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "startTime"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "modeId"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "RecordData"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " StartInfo json= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/tts/client/model/RecordData;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/baidu/tts/client/model/RecordData$InsertData;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1, p1, v1}, Lcom/baidu/tts/client/model/RecordData$InsertData;-><init>(Lcom/baidu/tts/client/model/RecordData;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    iget-object p2, p0, Lcom/baidu/tts/client/model/RecordData;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/baidu/tts/client/model/RecordData$InsertData;

    const-string v1, "startInfo"

    invoke-direct {p3, p0, v0, p1, v1}, Lcom/baidu/tts/client/model/RecordData$InsertData;-><init>(Lcom/baidu/tts/client/model/RecordData;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
