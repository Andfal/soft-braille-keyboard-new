.class Lcom/iflytek/sparkchain/core/AiHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/ChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/core/AiHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/AiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChatError(Lcom/iflytek/sparkchain/core/AIChatHandle;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$200(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$200(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/ChatListener;->onChatError(Lcom/iflytek/sparkchain/core/AIChatHandle;ILjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {p2}, Lcom/iflytek/sparkchain/core/AiHelper;->access$100(Lcom/iflytek/sparkchain/core/AiHelper;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AIChatHandle;->getUsrContextIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onChatOutput(Lcom/iflytek/sparkchain/core/AIChatHandle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$200(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$200(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/sparkchain/core/ChatListener;->onChatOutput(Lcom/iflytek/sparkchain/core/AIChatHandle;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onChatToken(Lcom/iflytek/sparkchain/core/AIChatHandle;III)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$200(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$200(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/ChatListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/sparkchain/core/ChatListener;->onChatToken(Lcom/iflytek/sparkchain/core/AIChatHandle;III)V

    :cond_0
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$3;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {p2}, Lcom/iflytek/sparkchain/core/AiHelper;->access$100(Lcom/iflytek/sparkchain/core/AiHelper;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AIChatHandle;->getUsrContextIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
