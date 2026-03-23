.class public Lf2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/nirenr/talkman/d;

.field private c:Lcom/iflytek/sparkchain/core/LLM;

.field private d:Z

.field private final e:Lcom/iflytek/sparkchain/core/LLMCallbacks;

.field private f:Ljava/lang/StringBuilder;

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf2/b$a;

    invoke-direct {v0, p0}, Lf2/b$a;-><init>(Lf2/b;)V

    iput-object v0, p0, Lf2/b;->e:Lcom/iflytek/sparkchain/core/LLMCallbacks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lf2/b;->f:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lf2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lf2/b;->b:Lcom/nirenr/talkman/d;

    return-void
.end method

.method static bridge synthetic a(Lf2/b;)Lcom/iflytek/sparkchain/core/LLM;
    .locals 0

    iget-object p0, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    return-object p0
.end method

.method static bridge synthetic b(Lf2/b;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lf2/b;->f:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic c(Lf2/b;)Lcom/nirenr/talkman/d;
    .locals 0

    iget-object p0, p0, Lf2/b;->b:Lcom/nirenr/talkman/d;

    return-object p0
.end method

.method static bridge synthetic d(Lf2/b;)I
    .locals 0

    iget p0, p0, Lf2/b;->h:I

    return p0
.end method

.method static bridge synthetic e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lf2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic f(Lf2/b;)Z
    .locals 0

    iget-boolean p0, p0, Lf2/b;->d:Z

    return p0
.end method

.method static bridge synthetic g(Lf2/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lf2/b;->d:Z

    return-void
.end method

.method private i()V
    .locals 5

    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->builder()Lcom/iflytek/sparkchain/core/SparkChainConfig;

    move-result-object v0

    const-string v1, "58da0ff1"

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->appID(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    move-result-object v1

    const-string v2, "6d53b08927560ea7e44e7d2ad4c044a1"

    invoke-virtual {v1, v2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiKey(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    move-result-object v1

    const-string v2, "646c649996975f69fe44960c8b248805"

    invoke-virtual {v1, v2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiSecret(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logLevel(I)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain;->getInst()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object v1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/sparkchain/core/SparkChain;->init(Landroid/content/Context;Lcom/iflytek/sparkchain/core/SparkChainConfig;)I

    move-result v0

    const-string v1, "Spark"

    iget-object v2, p0, Lf2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK\u521d\u59cb\u5316\u6210\u529f\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lf2/b;->j()V

    goto :goto_0

    :cond_0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK\u521d\u59cb\u5316\u5931\u8d25\uff1a\u5176\u4ed6\u9519\u8bef:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lf2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "Spark"

    const-string v2, "setLLMConfig"

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/LLMConfig;->builder()Lcom/iflytek/sparkchain/core/LLMConfig;

    move-result-object v0

    const-string v1, "generalv3.5"

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/LLMConfig;->domain(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;

    const-string v1, "ws(s)://spark-api.xf-yun.com/v3.5/chat"

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/LLMConfig;->url(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/LLMConfig;->chatID(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/sparkchain/core/Memory;->windowMemory(I)Lcom/iflytek/sparkchain/core/Memory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sparkchain/core/LLMFactory;->textGeneration(Lcom/iflytek/sparkchain/core/LLMConfig;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object v0

    iput-object v0, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    iget-object v1, p0, Lf2/b;->e:Lcom/iflytek/sparkchain/core/LLMCallbacks;

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/LLM;->registerLLMCallbacks(Lcom/iflytek/sparkchain/core/LLMCallbacks;)V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    iget-object v0, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/LLM;->clearHistory()V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lf2/b;->i()V

    invoke-direct {p0}, Lf2/b;->j()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf2/b;->d:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lf2/b;->f:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    const-string v2, "Spark"

    if-nez v1, :cond_1

    iget-object p1, p0, Lf2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "startChat failed,please setLLMConfig before!"

    invoke-virtual {p1, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lf2/b;->g:J

    sub-long v5, v3, v5

    const-wide/32 v7, 0x493e0

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    iget-object v1, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/core/LLM;->clearHistory()V

    :cond_2
    iput-wide v3, p0, Lf2/b;->g:J

    iget-object v1, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/core/LLM;->stop()I

    iget-object v1, p0, Lf2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7528\u6237\u8f93\u5165\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lf2/b;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf2/b;->h:I

    new-instance v1, Lf2/b$b;

    invoke-direct {v1, p0, p1}, Lf2/b$b;-><init>(Lf2/b;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public l()V
    .locals 3

    iget-boolean v0, p0, Lf2/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf2/b;->d:Z

    iget-object v0, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    const-string v1, "Spark"

    if-nez v0, :cond_1

    iget-object v0, p0, Lf2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "stopChat failed,please setLLMConfig before!"

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lf2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "stopChat"

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lf2/b;->c:Lcom/iflytek/sparkchain/core/LLM;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/LLM;->stop()I

    return-void
.end method

.method public m()V
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain;->getInst()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/SparkChain;->unInit()I

    return-void
.end method
