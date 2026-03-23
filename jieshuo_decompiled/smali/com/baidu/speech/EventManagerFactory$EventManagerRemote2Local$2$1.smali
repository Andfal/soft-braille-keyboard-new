.class Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1;
.super Lcom/baidu/speech/aidl/EventListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;


# direct methods
.method constructor <init>(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1;->this$1:Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;

    invoke-direct {p0}, Lcom/baidu/speech/aidl/EventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 10

    const-string v0, "_free"

    const-string v1, "asr.exit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "wp.exit"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {v4}, Lcom/baidu/speech/EventManagerFactory;->access$402(Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/baidu/speech/EventManagerFactory;->access$502(Z)Z

    goto :goto_0

    :cond_1
    const-string v1, "asr.unloaded"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Lcom/baidu/speech/EventManagerFactory;->access$202(Z)Z

    :cond_2
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    if-nez p2, :cond_3

    const-string v5, "{}"

    goto :goto_1

    :cond_3
    move-object v5, p2

    :goto_1
    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v4, :cond_4

    invoke-direct {v8, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1$1;-><init>(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1;Ljava/lang/String;Ljava/lang/String;[BII)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_4
    invoke-direct {v8, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1$2;-><init>(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1;Ljava/lang/String;Ljava/lang/String;[BII)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1$3;-><init>(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1;Ljava/lang/String;Ljava/lang/String;[BII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void
.end method
