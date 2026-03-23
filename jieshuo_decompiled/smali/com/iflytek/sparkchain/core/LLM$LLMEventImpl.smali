.class public Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/LLMEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/LLM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LLMEventImpl"
.end annotation


# instance fields
.field eventID:I

.field eventMsg:Ljava/lang/String;

.field sid:Ljava/lang/String;

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/LLM;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/LLM;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->this$0:Lcom/iflytek/sparkchain/core/LLM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->sid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->eventID:I

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->eventMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->eventID:I

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->eventMsg:Ljava/lang/String;

    return-void
.end method

.method public getEventID()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->eventID:I

    return v0
.end method

.method public getEventMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->eventMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setEventID(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->eventID:I

    return-void
.end method

.method public setEventMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->eventMsg:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMEventImpl;->sid:Ljava/lang/String;

    return-void
.end method
