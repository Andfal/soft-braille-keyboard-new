.class Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/bot/BotUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;->c:Lcom/iflytek/sparkchain/plugins/bot/BotUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;->b:Ljava/lang/String;

    return-object v0
.end method
