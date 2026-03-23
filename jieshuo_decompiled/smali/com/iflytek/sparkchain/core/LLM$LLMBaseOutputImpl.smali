.class public Lcom/iflytek/sparkchain/core/LLM$LLMBaseOutputImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/LLMBaseOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/LLM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LLMBaseOutputImpl"
.end annotation


# instance fields
.field sid:Ljava/lang/String;

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/LLM;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/LLM;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMBaseOutputImpl;->this$0:Lcom/iflytek/sparkchain/core/LLM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMBaseOutputImpl;->sid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMBaseOutputImpl;->sid:Ljava/lang/String;

    return-void
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLM$LLMBaseOutputImpl;->sid:Ljava/lang/String;

    return-object v0
.end method

.method protected setSid(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLM$LLMBaseOutputImpl;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLM$LLMBaseOutputImpl;->sid:Ljava/lang/String;

    return-object p0
.end method
