.class public Lcom/unisound/sdk/bi;
.super Lcom/unisound/sdk/bh;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

.field private e:Lcom/unisound/sdk/bn;

.field private f:Lcom/unisound/sdk/bk;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unisound/sdk/bk;)V
    .locals 2

    invoke-virtual {p2}, Lcom/unisound/sdk/bk;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/unisound/sdk/bk;->l()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/bh;-><init>(ZZ)V

    invoke-static {}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b()Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bi;->g:Z

    iput-object p1, p0, Lcom/unisound/sdk/bi;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    return-void
.end method

.method private a(F)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(F)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a([BI)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->e:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/unisound/sdk/bn;->a([BI)V

    :cond_0
    return-void
.end method

.method private b(F)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b(F)V

    return-void
.end method

.method private c(F)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d(F)V

    return-void
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->e:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bn;->a(I)V

    :cond_0
    return-void
.end method

.method private d(F)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c(F)V

    return-void
.end method

.method private d(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(I)V

    return-void
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b(I)V

    return-void
.end method

.method private f(I)V
    .locals 0

    return-void
.end method

.method private g(I)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d(I)Z

    move-result p1

    return p1
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->e:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bn;->a()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->e:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bn;->b()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->e:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bn;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/unisound/sdk/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    return-void
.end method

.method public a(Lcom/unisound/sdk/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bi;->e:Lcom/unisound/sdk/bn;

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/bh;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e()V

    :cond_0
    int-to-long v0, p1

    :try_start_0
    invoke-super {p0, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bi;->g:Z

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/bi;->k()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bi;->a(Lcom/unisound/sdk/bn;)V

    return-void
.end method

.method public run()V
    .locals 5

    invoke-super {p0}, Lcom/unisound/common/f;->run()V

    const-string v0, "TTSOfflineSynthesizerThread run(): synthesizer begin"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const v0, -0x163df

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->c(I)V

    const-string v0, "TTSOfflineSynthesizerThread run(): \u79bb\u7ebftts\u5f15\u64ce\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u786e\u8ba4\u6267\u884cinit\u5e76\u63a5\u6536init\u56de\u8c03\uff01 "

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->p()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTSOfflineSynthesizerThread run(): _LogLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->a(F)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->t()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTSOfflineSynthesizerThread run(): _VoiceSpeed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->b(F)V

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->u()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTSOfflineSynthesizerThread run(): _VoicePitch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->c(F)V

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->v()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTSOfflineSynthesizerThread run(): _VoiceVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->d(F)V

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->m()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTSOfflineSynthesizerThread run(): _ReadEnglishInPinyin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->a(Ljava/lang/Boolean;)V

    :cond_5
    iget-object v0, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->n()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTSOfflineSynthesizerThread run(): _FrontSilence="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->d(I)V

    :cond_6
    iget-object v0, p0, Lcom/unisound/sdk/bi;->f:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->o()I

    move-result v0

    if-eq v0, v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTSOfflineSynthesizerThread run(): _BackSilence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->e(I)V

    :cond_7
    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/unisound/sdk/bi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setText(JLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const v0, -0x15f94

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bi;->c(I)V

    const-string v0, "TTSOfflineSynthesizerThread run(): setText error "

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    const/16 v0, 0x1900

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bi;->i()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/unisound/sdk/bh;->a()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "TTSOfflineSythesizer run : receiveSamples before"

    invoke-static {v2}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v2}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(J[B)I

    move-result v2

    const-string v3, "TTSOfflineSythesizer run : receiveSamples after"

    invoke-static {v3}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    if-le v2, v1, :cond_a

    invoke-direct {p0, v0, v2}, Lcom/unisound/sdk/bi;->a([BI)V

    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/unisound/sdk/bh;->a()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    iget-boolean v3, p0, Lcom/unisound/sdk/bi;->g:Z

    if-eqz v3, :cond_9

    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/unisound/sdk/bi;->j()V

    iget-object v0, p0, Lcom/unisound/sdk/bi;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "TTSOfflineSynthesizerThread run(): Exception error"

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    :goto_1
    const-string v0, "TTSOfflineSynthesizerThread run(): synthesizer end"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void
.end method
