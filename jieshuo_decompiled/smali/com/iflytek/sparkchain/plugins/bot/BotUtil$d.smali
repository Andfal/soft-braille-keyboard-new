.class Lcom/iflytek/sparkchain/plugins/bot/BotUtil$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/plugins/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->createClient(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/c/a;
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

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$d;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$d;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$400(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$d;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$400(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
