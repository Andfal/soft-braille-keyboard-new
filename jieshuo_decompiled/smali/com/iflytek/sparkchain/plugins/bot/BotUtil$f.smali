.class Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    iput-object p2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "SparkChain"

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$600(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/iflytek/sparkchain/plugins/bot/BotUtil$g; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "GET"

    :try_start_1
    iget-object v4, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$700(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$900(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/c/a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$802(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Lcom/iflytek/sparkchain/plugins/c/a;)Lcom/iflytek/sparkchain/plugins/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assembledUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/iflytek/sparkchain/plugins/bot/BotUtil$g; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
