.class public Lcom/iflytek/sparkchain/core/QAParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/QAParam$Text;,
        Lcom/iflytek/sparkchain/core/QAParam$Message;,
        Lcom/iflytek/sparkchain/core/QAParam$Payload;,
        Lcom/iflytek/sparkchain/core/QAParam$Repo;,
        Lcom/iflytek/sparkchain/core/QAParam$Chat;,
        Lcom/iflytek/sparkchain/core/QAParam$Parameter;,
        Lcom/iflytek/sparkchain/core/QAParam$Header;
    }
.end annotation


# instance fields
.field private header:Lcom/iflytek/sparkchain/core/QAParam$Header;
    .annotation runtime Lu1/c;
        value = "header"
    .end annotation
.end field

.field private parameter:Lcom/iflytek/sparkchain/core/QAParam$Parameter;
    .annotation runtime Lu1/c;
        value = "parameter"
    .end annotation
.end field

.field private payload:Lcom/iflytek/sparkchain/core/QAParam$Payload;
    .annotation runtime Lu1/c;
        value = "payload"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeader()Lcom/iflytek/sparkchain/core/QAParam$Header;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam;->header:Lcom/iflytek/sparkchain/core/QAParam$Header;

    return-object v0
.end method

.method public getParameter()Lcom/iflytek/sparkchain/core/QAParam$Parameter;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam;->parameter:Lcom/iflytek/sparkchain/core/QAParam$Parameter;

    return-object v0
.end method

.method public getPayload()Lcom/iflytek/sparkchain/core/QAParam$Payload;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam;->payload:Lcom/iflytek/sparkchain/core/QAParam$Payload;

    return-object v0
.end method

.method public setHeader(Lcom/iflytek/sparkchain/core/QAParam$Header;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam;->header:Lcom/iflytek/sparkchain/core/QAParam$Header;

    return-void
.end method

.method public setParameter(Lcom/iflytek/sparkchain/core/QAParam$Parameter;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam;->parameter:Lcom/iflytek/sparkchain/core/QAParam$Parameter;

    return-void
.end method

.method public setPayload(Lcom/iflytek/sparkchain/core/QAParam$Payload;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam;->payload:Lcom/iflytek/sparkchain/core/QAParam$Payload;

    return-void
.end method
