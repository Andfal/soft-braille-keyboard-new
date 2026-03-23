.class Lcom/iflytek/sparkchain/plugins/bot/BotUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->uploadFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$a;->b:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    iput-object p2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$a;->b:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$a;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$000(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/io/File;)V

    return-void
.end method
