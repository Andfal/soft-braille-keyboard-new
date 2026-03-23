.class public Li2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/a$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/logging/Logger;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/baidu/speech/EventManager;

.field private d:Li2/a$a;

.field private e:Landroid/os/Bundle;

.field private f:Z

.field private g:Landroid/speech/RecognitionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BaiduRecognition"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li2/a;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Li2/a;->j()V

    return-void
.end method

.method static bridge synthetic a(Li2/a;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Li2/a;->e:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic b(Li2/a;)Z
    .locals 0

    iget-boolean p0, p0, Li2/a;->f:Z

    return p0
.end method

.method static bridge synthetic c(Li2/a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Li2/a;->e:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic d()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Li2/a;->h:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private f(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "a"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "args"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/lang/String;

    const-string v2, "--"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_1

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :cond_1
    if-gez v7, :cond_2

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :cond_2
    if-lez v7, :cond_3

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public static h(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-gtz v6, :cond_1

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [D

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Li2/a;->g:Landroid/speech/RecognitionListener;

    invoke-virtual {p0, v0}, Li2/a;->i(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Li2/a;->k()V

    return-void
.end method

.method protected i(Landroid/speech/RecognitionListener;)V
    .locals 6

    iget-object v0, p0, Li2/a;->c:Lcom/baidu/speech/EventManager;

    const-string v1, "asr.cancel"

    const-string v2, "{}"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/baidu/speech/EventManager;->send(Ljava/lang/String;Ljava/lang/String;[BII)V

    return-void
.end method

.method public j()V
    .locals 6

    const-class v0, Li2/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li2/a;->c:Lcom/baidu/speech/EventManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Li2/a;->a:Landroid/content/Context;

    const-string v3, "asr"

    invoke-static {v1, v3}, Lcom/baidu/speech/EventManagerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/speech/EventManager;

    move-result-object v1

    iput-object v1, p0, Li2/a;->c:Lcom/baidu/speech/EventManager;

    new-instance v1, Li2/a$a;

    invoke-direct {v1, p0}, Li2/a$a;-><init>(Li2/a;)V

    iput-object v1, p0, Li2/a;->d:Li2/a$a;

    iget-object v3, p0, Li2/a;->c:Lcom/baidu/speech/EventManager;

    invoke-interface {v3, v1}, Lcom/baidu/speech/EventManager;->registerListener(Lcom/baidu/speech/EventListener;)V

    sput-boolean v2, Lcom/baidu/speech/asr/SpeechConstant;->PUBLIC_DECODER:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Li2/a;->h:Ljava/util/logging/Logger;

    const-string v1, "onCreate(), hashcode=%s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :try_start_1
    const-string v0, "com.baidu.android.voicedemo.SettingMore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iput-boolean v3, p0, Li2/a;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    sget-object v0, Li2/a;->h:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Li2/a;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 6

    iget-object v0, p0, Li2/a;->c:Lcom/baidu/speech/EventManager;

    const-string v1, "asr.kws.unload"

    const-string v2, "{}"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/baidu/speech/EventManager;->send(Ljava/lang/String;Ljava/lang/String;[BII)V

    return-void
.end method

.method protected l(Landroid/content/Intent;Landroid/speech/RecognitionListener;)V
    .locals 7

    const-string v0, "audio.mills"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    const-string v0, "vad.endpoint-timeout"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Li2/a;->f:Z

    invoke-direct {p0, p1}, Li2/a;->f(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Li2/a;->d:Li2/a$a;

    invoke-virtual {v2, p2}, Li2/a$a;->b(Landroid/speech/RecognitionListener;)V

    const-string p2, "decoder"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x4

    if-eqz p1, :cond_2

    iget-object v1, p0, Li2/a;->c:Lcom/baidu/speech/EventManager;

    const-string v2, "asr.kws.load"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/baidu/speech/EventManager;->send(Ljava/lang/String;Ljava/lang/String;[BII)V

    :cond_2
    iget-object p1, p0, Li2/a;->c:Lcom/baidu/speech/EventManager;

    const-string v1, "asr.start"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/baidu/speech/EventManager;->send(Ljava/lang/String;Ljava/lang/String;[BII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected m(Landroid/speech/RecognitionListener;)V
    .locals 6

    iget-object v0, p0, Li2/a;->c:Lcom/baidu/speech/EventManager;

    const-string v1, "asr.stop"

    const-string v2, "{}"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/baidu/speech/EventManager;->send(Ljava/lang/String;Ljava/lang/String;[BII)V

    return-void
.end method

.method public n(Landroid/speech/RecognitionListener;)V
    .locals 0

    iput-object p1, p0, Li2/a;->g:Landroid/speech/RecognitionListener;

    return-void
.end method

.method public o(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Li2/a;->g:Landroid/speech/RecognitionListener;

    invoke-virtual {p0, p1, v0}, Li2/a;->l(Landroid/content/Intent;Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Li2/a;->g:Landroid/speech/RecognitionListener;

    invoke-virtual {p0, v0}, Li2/a;->m(Landroid/speech/RecognitionListener;)V

    return-void
.end method
