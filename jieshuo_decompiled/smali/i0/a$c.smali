.class Li0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Li0/a;


# direct methods
.method public constructor <init>(Li0/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Li0/a$c;->b:Li0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li0/a$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7

    iget-object v0, p0, Li0/a$c;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Li0/a$c;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/tts/client/SpeechSynthesizeBag;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->setUtteranceId(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ll1/i;

    invoke-direct {v3, v4, v5}, Ll1/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lb1/i;->b:Lb1/i;

    invoke-virtual {v3, v4}, Ll1/i;->d(Lb1/i;)V

    iget-object v4, p0, Li0/a$c;->b:Li0/a;

    invoke-static {v4}, Li0/a;->m(Li0/a;)Ll0/c;

    move-result-object v4

    invoke-interface {v4, v3}, Ll0/c;->x(Ll1/i;)V

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li0/a$c;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
