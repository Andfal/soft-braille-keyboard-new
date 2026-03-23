.class Lcom/iflytek/sparkchain/core/Agent$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/AgentSyncOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/sparkchain/core/Agent;


# direct methods
.method private constructor <init>(Lcom/iflytek/sparkchain/core/Agent;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$f;->a:Lcom/iflytek/sparkchain/core/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/Agent;Lcom/iflytek/sparkchain/core/Agent$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/Agent$f;-><init>(Lcom/iflytek/sparkchain/core/Agent;)V

    return-void
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$f;->a:Lcom/iflytek/sparkchain/core/Agent;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/Agent;->access$200(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Agent$c;->getErrCode()I

    move-result v0

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$f;->a:Lcom/iflytek/sparkchain/core/Agent;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/Agent;->access$200(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Agent$c;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$f;->a:Lcom/iflytek/sparkchain/core/Agent;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/Agent;->access$300(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Agent$e;->getRequest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$f;->a:Lcom/iflytek/sparkchain/core/Agent;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/Agent;->access$300(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Agent$e;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$f;->a:Lcom/iflytek/sparkchain/core/Agent;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/Agent;->access$100(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Agent$b;->getSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
