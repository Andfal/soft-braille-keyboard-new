.class Lcom/iflytek/sparkchain/core/AiHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/AiResponseListener;


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

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$300(Lcom/iflytek/sparkchain/core/AiHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/core/AiListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/iflytek/sparkchain/core/AiListener;->onError(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$400(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$400(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/iflytek/sparkchain/core/AiResponseListener;->onError(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;IILjava/util/List;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$300(Lcom/iflytek/sparkchain/core/AiHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/core/AiListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/iflytek/sparkchain/core/AiListener;->onEvent(IILjava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$400(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$400(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/iflytek/sparkchain/core/AiResponseListener;->onEvent(Ljava/lang/String;IILjava/util/List;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResult(Ljava/lang/String;ILjava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$300(Lcom/iflytek/sparkchain/core/AiHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/core/AiListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4}, Lcom/iflytek/sparkchain/core/AiListener;->onResult(ILjava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$400(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$4;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$400(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/AiResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/sparkchain/core/AiResponseListener;->onResult(Ljava/lang/String;ILjava/util/List;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
