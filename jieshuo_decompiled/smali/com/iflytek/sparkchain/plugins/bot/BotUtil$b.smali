.class Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->deleteFile([Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Z[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;->c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    iput-boolean p2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;->a:Z

    iput-object p3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;->a:Z

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;->c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;->b:[Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->access$100(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;I[Ljava/lang/String;)V

    return-void
.end method
