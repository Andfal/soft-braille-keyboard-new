.class Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;->send(Ljava/lang/String;Ljava/lang/String;[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$data:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->this$0:Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;

    iput-object p2, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$params:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$cmd:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$data:[B

    iput p5, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$offset:I

    iput p6, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "audio.source"

    const-string v1, "audio.socketport"

    iget-object v2, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->this$0:Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;

    invoke-static {v2}, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;->access$000(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;)Lcom/baidu/speech/aidl/EventManager;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$params:Ljava/lang/String;

    const-string v3, "asr.start"

    iget-object v4, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$cmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "wp.start"

    iget-object v4, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$cmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$params:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    :try_start_1
    const-string v4, "infile"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-static {v4, v0}, Lcom/baidu/speech/audio/MicrophoneServer;->create(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    move-object v5, v2

    :try_start_2
    iget-object v0, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->this$0:Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;

    invoke-static {v0}, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;->access$000(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;)Lcom/baidu/speech/aidl/EventManager;

    move-result-object v0

    new-instance v1, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1;

    invoke-direct {v1, p0}, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2$1;-><init>(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;)V

    invoke-interface {v0, v1}, Lcom/baidu/speech/aidl/EventManager;->registerListener(Lcom/baidu/speech/aidl/EventListener;)V

    iget-object v0, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->this$0:Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;

    invoke-static {v0}, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;->access$000(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;)Lcom/baidu/speech/aidl/EventManager;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$cmd:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$data:[B

    iget v7, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$offset:I

    iget v8, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->val$length:I

    invoke-interface/range {v3 .. v8}, Lcom/baidu/speech/aidl/EventManager;->send(Ljava/lang/String;Ljava/lang/String;[BII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local$2;->this$0:Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;->access$002(Lcom/baidu/speech/EventManagerFactory$EventManagerRemote2Local;Lcom/baidu/speech/aidl/EventManager;)Lcom/baidu/speech/aidl/EventManager;

    :goto_3
    return-void
.end method
