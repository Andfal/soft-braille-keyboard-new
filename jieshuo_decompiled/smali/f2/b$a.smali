.class Lf2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/LLMCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf2/b;


# direct methods
.method constructor <init>(Lf2/b;)V
    .locals 0

    iput-object p1, p0, Lf2/b$a;->a:Lf2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLLMError(Lcom/iflytek/sparkchain/core/LLMError;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {v0}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMError;->getErrCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "errDesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMError;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Spark"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {p2}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {p2}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lf2/b$a;->a:Lf2/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lf2/b;->g(Lf2/b;Z)V

    return-void
.end method

.method public onLLMEvent(Lcom/iflytek/sparkchain/core/LLMEvent;Ljava/lang/Object;)V
    .locals 2

    iget-object p2, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {p2}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLLMEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMEvent;->getEventID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMEvent;->getEventMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Spark"

    invoke-virtual {p2, v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLLMResult(Lcom/iflytek/sparkchain/core/LLMResult;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {v0}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "onLLMResult\n"

    const-string v2, "Spark"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {v0}, Lf2/b;->f(Lf2/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMResult;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {v1}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLLMResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMResult;->getStatus()I

    move-result v1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {v3}, Lf2/b;->b(Lf2/b;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Integer;

    iget-object v3, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {v3}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {v0}, Lf2/b;->d(Lf2/b;)I

    move-result v0

    if-eq p2, v0, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x2

    if-ne v1, p2, :cond_3

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMResult;->getCompletionTokens()I

    move-result p2

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMResult;->getPromptTokens()I

    move-result v0

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMResult;->getTotalTokens()I

    move-result p1

    iget-object v1, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {v1}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completionTokens:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "promptTokens:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "totalTokens:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lf2/b$a;->a:Lf2/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lf2/b;->g(Lf2/b;Z)V

    iget-object p1, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {p1}, Lf2/b;->c(Lf2/b;)Lcom/nirenr/talkman/d;

    move-result-object p1

    iget-object p2, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {p2}, Lf2/b;->b(Lf2/b;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/d;->t(Ljava/lang/String;)V

    iget-object p1, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {p1}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object p1

    iget-object p2, p0, Lf2/b$a;->a:Lf2/b;

    invoke-static {p2}, Lf2/b;->b(Lf2/b;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    :cond_3
    return-void
.end method
