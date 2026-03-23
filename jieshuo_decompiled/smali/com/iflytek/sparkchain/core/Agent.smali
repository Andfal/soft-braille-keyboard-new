.class public Lcom/iflytek/sparkchain/core/Agent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/Agent$g;,
        Lcom/iflytek/sparkchain/core/Agent$f;,
        Lcom/iflytek/sparkchain/core/Agent$c;,
        Lcom/iflytek/sparkchain/core/Agent$d;,
        Lcom/iflytek/sparkchain/core/Agent$e;,
        Lcom/iflytek/sparkchain/core/Agent$b;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SparkChain"

.field private static runningCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

.field private agentType:Lcom/iflytek/sparkchain/core/AgentType;

.field private baseOutput:Lcom/iflytek/sparkchain/core/Agent$b;

.field private error:Lcom/iflytek/sparkchain/core/Agent$c;

.field private event:Lcom/iflytek/sparkchain/core/Agent$d;

.field private id:I

.field private llm:Lcom/iflytek/sparkchain/core/LLM;

.field private memory:Lcom/iflytek/sparkchain/core/Memory;

.field private pluginCallbacks:Lcom/iflytek/sparkchain/core/PluginCallbacks;

.field private result:Lcom/iflytek/sparkchain/core/Agent$e;

.field private runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private syncOutput:Lcom/iflytek/sparkchain/core/Agent$f;

.field private tools:Lcom/iflytek/sparkchain/core/Tools;

.field private usrContext:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "SparkChain"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    const-string v1, "loadLibrary: success"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/iflytek/sparkchain/core/Agent;->runningCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/core/AgentType;Lcom/iflytek/sparkchain/core/LLM;Lcom/iflytek/sparkchain/core/Tools;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$b;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Agent$b;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->baseOutput:Lcom/iflytek/sparkchain/core/Agent$b;

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$e;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Agent$e;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->result:Lcom/iflytek/sparkchain/core/Agent$e;

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$d;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Agent$d;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->event:Lcom/iflytek/sparkchain/core/Agent$d;

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Agent$c;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/core/Agent$f;-><init>(Lcom/iflytek/sparkchain/core/Agent;Lcom/iflytek/sparkchain/core/Agent$a;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->syncOutput:Lcom/iflytek/sparkchain/core/Agent$f;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->agentType:Lcom/iflytek/sparkchain/core/AgentType;

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->llm:Lcom/iflytek/sparkchain/core/LLM;

    iput-object p3, p0, Lcom/iflytek/sparkchain/core/Agent;->tools:Lcom/iflytek/sparkchain/core/Tools;

    iput-object v1, p0, Lcom/iflytek/sparkchain/core/Agent;->agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

    iput-object v1, p0, Lcom/iflytek/sparkchain/core/Agent;->pluginCallbacks:Lcom/iflytek/sparkchain/core/PluginCallbacks;

    iput-object v1, p0, Lcom/iflytek/sparkchain/core/Agent;->usrContext:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/Tools;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Plugin Info:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Plugin Info  domain:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->llm:Lcom/iflytek/sparkchain/core/LLM;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/LLM;->getParams()Lcom/iflytek/sparkchain/core/LLMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/LLMConfig;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->agentType:Lcom/iflytek/sparkchain/core/AgentType;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AgentType;->getValue()I

    move-result p2

    iget-object p3, p0, Lcom/iflytek/sparkchain/core/Agent;->llm:Lcom/iflytek/sparkchain/core/LLM;

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/LLM;->getParams()Lcom/iflytek/sparkchain/core/LLMConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/LLMConfig;->getDomain()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/Agent;->agentInit(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/Agent;->id:I

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$b;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/core/Agent;->baseOutput:Lcom/iflytek/sparkchain/core/Agent$b;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$c;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$e;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/core/Agent;->result:Lcom/iflytek/sparkchain/core/Agent$e;

    return-object p0
.end method


# virtual methods
.method native agentInit(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method native agentRun(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native agentUnInit()I
.end method

.method public arun(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/sparkchain/core/Agent;->arun(Ljava/lang/String;Ljava/lang/Object;Lcom/iflytek/sparkchain/core/Memory;)I

    move-result p1

    return p1
.end method

.method public arun(Ljava/lang/String;Lcom/iflytek/sparkchain/core/Memory;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/iflytek/sparkchain/core/Agent;->arun(Ljava/lang/String;Ljava/lang/Object;Lcom/iflytek/sparkchain/core/Memory;)I

    move-result p1

    return p1
.end method

.method public arun(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/Agent;->arun(Ljava/lang/String;Ljava/lang/Object;Lcom/iflytek/sparkchain/core/Memory;)I

    move-result p1

    return p1
.end method

.method public arun(Ljava/lang/String;Ljava/lang/Object;Lcom/iflytek/sparkchain/core/Memory;)I
    .locals 0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->usrContext:Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/iflytek/sparkchain/core/Agent;->memory:Lcom/iflytek/sparkchain/core/Memory;

    :cond_1
    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain;->getInst()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChain;->getInitCode()I

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    const-string p3, "SparkChain not init"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_2
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eqz p2, :cond_3

    const/16 p1, 0x4e8b

    return p1

    :cond_3
    sget-object p2, Lcom/iflytek/sparkchain/core/Agent;->runningCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 p3, 0x2

    if-lt p2, p3, :cond_4

    const/16 p1, 0x4e8c

    return p1

    :cond_4
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p2, Lcom/iflytek/sparkchain/core/Agent;->runningCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/iflytek/sparkchain/core/Agent$a;

    invoke-direct {p3, p0, p1}, Lcom/iflytek/sparkchain/core/Agent$a;-><init>(Lcom/iflytek/sparkchain/core/Agent;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/Agent;->agentUnInit()I

    return-void
.end method

.method public onAgentError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Agent$c;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Agent$c;->a(I)Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-virtual {v0, p2}, Lcom/iflytek/sparkchain/core/Agent$c;->a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$c;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->usrContext:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Lcom/iflytek/sparkchain/core/AgentCallbacks;->onAgentError(Lcom/iflytek/sparkchain/core/AgentError;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->runningCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public onAgentEvent(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$d;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Agent$d;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Agent$d;->a(I)Lcom/iflytek/sparkchain/core/Agent$d;

    invoke-virtual {v0, p2}, Lcom/iflytek/sparkchain/core/Agent$d;->a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$d;

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/Agent;->usrContext:Ljava/lang/Object;

    invoke-interface {p2, v0, v2}, Lcom/iflytek/sparkchain/core/AgentCallbacks;->onAgentEvent(Lcom/iflytek/sparkchain/core/AgentEvent;Ljava/lang/Object;)V

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->runningCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    return-void
.end method

.method public onAgentResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$e;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Agent$e;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Agent$e;->a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$e;

    invoke-virtual {v0, p2}, Lcom/iflytek/sparkchain/core/Agent$e;->b(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$e;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->usrContext:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Lcom/iflytek/sparkchain/core/AgentCallbacks;->onAgentResult(Lcom/iflytek/sparkchain/core/AgentResult;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPluginOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->pluginCallbacks:Lcom/iflytek/sparkchain/core/PluginCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/iflytek/sparkchain/core/Agent$g;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Agent$g;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Agent$g;->a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$g;

    invoke-virtual {v0, p2}, Lcom/iflytek/sparkchain/core/Agent$g;->b(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$g;

    invoke-virtual {v0, p3}, Lcom/iflytek/sparkchain/core/Agent$g;->c(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$g;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->pluginCallbacks:Lcom/iflytek/sparkchain/core/PluginCallbacks;

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->usrContext:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Lcom/iflytek/sparkchain/core/PluginCallbacks;->onPluginOutput(Lcom/iflytek/sparkchain/core/PluginResult;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public pluginRun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agent plugin called start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->tools:Lcom/iflytek/sparkchain/core/Tools;

    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    const-string v1, "tools is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->tools:Lcom/iflytek/sparkchain/core/Tools;

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Tools;->getPlugin(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/base/BaseTool;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    const-string p2, "plugin not found"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    sget-object v1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agent plugin input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->run(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "plugin return null"

    return-object p1

    :cond_2
    sget-object v0, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agent plugin called finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "agent plugin output: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public registerAgentCallbacks(Lcom/iflytek/sparkchain/core/AgentCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->agentCallbacks:Lcom/iflytek/sparkchain/core/AgentCallbacks;

    return-void
.end method

.method public registerPluginCallbacks(Lcom/iflytek/sparkchain/core/PluginCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->pluginCallbacks:Lcom/iflytek/sparkchain/core/PluginCallbacks;

    return-void
.end method

.method public run(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AgentSyncOutput;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/Agent;->run(Ljava/lang/String;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/AgentSyncOutput;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/lang/String;Lcom/iflytek/sparkchain/core/Memory;)Lcom/iflytek/sparkchain/core/AgentSyncOutput;
    .locals 4

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->memory:Lcom/iflytek/sparkchain/core/Memory;

    :cond_0
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->result:Lcom/iflytek/sparkchain/core/Agent$e;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/Agent$e;->a()V

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->event:Lcom/iflytek/sparkchain/core/Agent$d;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/Agent$d;->a()V

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/Agent$c;->a()V

    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain;->getInst()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChain;->getInitCode()I

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    const-string v0, "SparkChain not init"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-virtual {p1, p2}, Lcom/iflytek/sparkchain/core/Agent$c;->a(I)Lcom/iflytek/sparkchain/core/Agent$c;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-virtual {p1, v0}, Lcom/iflytek/sparkchain/core/Agent$c;->a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$c;

    :goto_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->syncOutput:Lcom/iflytek/sparkchain/core/Agent$f;

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    const-string p2, "llm inst is running"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    const/16 v0, 0x4e8b

    :goto_1
    invoke-virtual {p1, v0}, Lcom/iflytek/sparkchain/core/Agent$c;->a(I)Lcom/iflytek/sparkchain/core/Agent$c;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-virtual {p1, p2}, Lcom/iflytek/sparkchain/core/Agent$c;->a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$c;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/iflytek/sparkchain/core/Agent;->runningCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_3

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    const-string p2, "llm concurrent overflow"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    const/16 v0, 0x4e8c

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p2, Lcom/iflytek/sparkchain/core/Agent;->runningCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/Agent;->agentRun(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/iflytek/sparkchain/core/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentRun ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p2, p2, v0

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-virtual {p1, v2}, Lcom/iflytek/sparkchain/core/Agent$c;->a(I)Lcom/iflytek/sparkchain/core/Agent$c;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->error:Lcom/iflytek/sparkchain/core/Agent$c;

    invoke-virtual {p1, p2}, Lcom/iflytek/sparkchain/core/Agent$c;->a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$c;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent;->result:Lcom/iflytek/sparkchain/core/Agent$e;

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Agent$e;->a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$e;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->result:Lcom/iflytek/sparkchain/core/Agent$e;

    invoke-virtual {p1, p2}, Lcom/iflytek/sparkchain/core/Agent$e;->b(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$e;

    :goto_2
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/Agent;->runningStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lcom/iflytek/sparkchain/core/Agent;->runningCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/16 :goto_0
.end method
