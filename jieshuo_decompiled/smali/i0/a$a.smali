.class Li0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li0/a;


# direct methods
.method constructor <init>(Li0/a;)V
    .locals 0

    iput-object p1, p0, Li0/a$a;->a:Li0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private h(Ll1/h;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ll1/h;->y()Ll0/f;

    move-result-object p1

    invoke-virtual {p1}, Ll0/f;->g()Ld1/b;

    move-result-object p1

    invoke-virtual {p1}, Ld1/a;->a()Lb1/n;

    move-result-object p1

    sget-object v1, Li0/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStopped exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpeechSynthesizerAdapter"

    invoke-static {v1, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ll1/h;)V
    .locals 4

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0, p1}, Li0/a;->k(Li0/a;Ll1/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ll1/h;->u()[B

    move-result-object v1

    invoke-virtual {p1}, Ll1/h;->r()I

    move-result v2

    invoke-virtual {p1}, Ll1/h;->v()I

    move-result p1

    iget-object v3, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v3}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeDataArrived(Ljava/lang/String;[BII)V

    :cond_0
    return-void
.end method

.method public b(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0, p1}, Li0/a;->k(Li0/a;Ll1/h;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ll1/h;)V
    .locals 2

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0, p1}, Li0/a;->k(Li0/a;Ll1/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ll1/h;->r()I

    move-result p1

    iget-object v1, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v1}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechProgressChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public d(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0, p1}, Li0/a;->k(Li0/a;Ll1/h;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechFinish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0, p1}, Li0/a;->k(Li0/a;Ll1/h;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0, p1}, Li0/a;->k(Li0/a;Ll1/h;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeFinish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Ll1/h;)V
    .locals 2

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Li0/a$a;->h(Ll1/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v0, p1}, Li0/a;->k(Li0/a;Ll1/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v1, p1}, Li0/a;->u(Li0/a;Ll1/h;)Lcom/baidu/tts/client/SpeechError;

    move-result-object p1

    iget-object v1, p0, Li0/a$a;->a:Li0/a;

    invoke-static {v1}, Li0/a;->w(Li0/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onError(Ljava/lang/String;Lcom/baidu/tts/client/SpeechError;)V

    :cond_0
    return-void
.end method
