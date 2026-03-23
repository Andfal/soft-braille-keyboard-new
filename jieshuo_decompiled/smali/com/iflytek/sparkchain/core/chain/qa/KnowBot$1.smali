.class Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->arun(Ljava/lang/String;Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;

.field final synthetic val$question:Ljava/lang/String;

.field final synthetic val$usrTag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;->this$0:Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;->val$question:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;->val$usrTag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;->this$0:Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;->val$question:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;->val$usrTag:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->knowBotArun(Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method
