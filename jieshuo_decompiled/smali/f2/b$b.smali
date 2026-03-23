.class Lf2/b$b;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/b;->k(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lf2/b;


# direct methods
.method constructor <init>(Lf2/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf2/b$b;->c:Lf2/b;

    iput-object p2, p0, Lf2/b$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    invoke-static {p1}, Lf2/b;->d(Lf2/b;)I

    move-result p1

    iput p1, p0, Lf2/b$b;->a:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf2/b$b;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object p1, p0, Lf2/b$b;->c:Lf2/b;

    invoke-static {p1}, Lf2/b;->a(Lf2/b;)Lcom/iflytek/sparkchain/core/LLM;

    move-result-object p1

    iget-object v0, p0, Lf2/b$b;->b:Ljava/lang/String;

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/sparkchain/core/LLM;->run(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/LLMOutput;

    move-result-object p1

    iget-object v0, p0, Lf2/b$b;->c:Lf2/b;

    invoke-static {v0}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "Spark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u540c\u6b65\u8f93\u51fa\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMError;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMResult;->getCompletionTokens()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/iflytek/sparkchain/core/LLMResult;->getContent()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf2/b$b;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf2/b$b;->c:Lf2/b;

    invoke-static {v0}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540c\u6b65\u8f93\u51fa\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spark"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    iget v0, p0, Lf2/b$b;->a:I

    iget-object v1, p0, Lf2/b$b;->c:Lf2/b;

    invoke-static {v1}, Lf2/b;->d(Lf2/b;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lf2/b$b;->c:Lf2/b;

    invoke-static {p1}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f07069c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lf2/b$b;->c:Lf2/b;

    invoke-static {v0}, Lf2/b;->c(Lf2/b;)Lcom/nirenr/talkman/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/d;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lf2/b$b;->c:Lf2/b;

    invoke-static {v0}, Lf2/b;->e(Lf2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    return-void
.end method
