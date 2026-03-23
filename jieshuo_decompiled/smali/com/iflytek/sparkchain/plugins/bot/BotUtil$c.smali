.class Lcom/iflytek/sparkchain/plugins/bot/BotUtil$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->getDocuments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$c;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "http://sparkbot.xf-yun.com/api/v1/ingest_data/list"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "app_id"

    :try_start_0
    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$c;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-static {v3}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$200(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$c;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-static {v2, v0, v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$300(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$c;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$400(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$c;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$400(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
