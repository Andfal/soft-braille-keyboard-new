.class Lcom/iflytek/sparkchain/plugins/bot/BotUtil$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->doUpload(Ljava/io/File;)V
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

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$e;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ly2/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$e;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    const-string p2, ""

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$500(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;I)V

    return-void
.end method

.method public onResponse(Ly2/Call;Ly2/Response;)V
    .locals 1

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ly2/Response;->b()Ly2/c0;

    move-result-object p2

    invoke-virtual {p2}, Ly2/c0;->c()[B

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$e;->a:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$500(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;I)V

    return-void
.end method
