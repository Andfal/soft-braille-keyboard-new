.class public Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/chain/qa/KnowBotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnowBotResultImpl"
.end annotation


# instance fields
.field msg:Ljava/lang/String;

.field result:Ljava/lang/String;

.field sid:Ljava/lang/String;

.field status:I

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;

.field userContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->this$0:Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->sid:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->result:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->status:I

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->msg:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->userContext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->sid:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->result:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->status:I

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->msg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->userContext:Ljava/lang/Object;

    return-void
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->status:I

    return v0
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->userContext:Ljava/lang/Object;

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->result:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->sid:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->status:I

    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;->userContext:Ljava/lang/Object;

    return-void
.end method
