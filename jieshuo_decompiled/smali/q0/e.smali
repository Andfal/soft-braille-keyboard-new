.class public Lq0/e;
.super Lq0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/e$b;,
        Lq0/e$a;
    }
.end annotation


# instance fields
.field private b:Lq0/e$a;

.field private c:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lq0/a;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lq0/e;->c:[J

    return-void
.end method

.method static synthetic i(Lq0/e;)Lq0/e$a;
    .locals 0

    iget-object p0, p0, Lq0/e;->b:Lq0/e$a;

    return-object p0
.end method

.method static synthetic j(Lq0/e;)[J
    .locals 0

    iget-object p0, p0, Lq0/e;->c:[J

    return-object p0
.end method


# virtual methods
.method public a()Ll0/f;
    .locals 7

    iget-object v0, p0, Lq0/e;->b:Lq0/e$a;

    if-nez v0, :cond_0

    new-instance v0, Lq0/e$a;

    invoke-direct {v0}, Lq0/e$a;-><init>()V

    iput-object v0, p0, Lq0/e;->b:Lq0/e$a;

    :cond_0
    invoke-static {}, Ln0/b;->f()Ln0/b;

    move-result-object v0

    iget-object v1, p0, Lq0/e;->b:Lq0/e$a;

    invoke-virtual {v0, v1}, Ln0/b;->g(Lq0/e$a;)Ln0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Ln0/e$a;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lq0/e;->b:Lq0/e$a;

    invoke-virtual {v1}, Lq0/e$a;->v()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lq0/e;->b:Lq0/e$a;

    invoke-virtual {v2}, Lq0/e$a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ln0/e$a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lq0/e;->b:Lq0/e$a;

    invoke-virtual {v3, v0}, Lq0/e$a;->E(Ljava/lang/String;)V

    invoke-static {v2}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetDatParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-static {v1}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v2}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v4

    invoke-virtual {v4}, Le1/b;->H()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before bdTTSEngineInit SpeechInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OfflineSynthesizer"

    invoke-static {v6, v5}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "offline_speechDatInfo"

    invoke-static {v4, v5, v3}, Lq1/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lq0/e;->c:[J

    invoke-static {v4, v1, v2, v0, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSEngineInit(Landroid/content/Context;[B[B[B[J)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine init ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->B:Lb1/n;

    const-string v3, "bdTTSEngineInit result not 0"

    invoke-virtual {v1, v2, v0, v3}, Ld1/c;->d(Lb1/n;ILjava/lang/String;)Ll0/f;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v0}, Ln0/e$a;->g()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OfflineSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TOfflineSynthesizerParams;)V"
        }
    .end annotation

    check-cast p1, Lq0/e$a;

    iput-object p1, p0, Lq0/e;->b:Lq0/e$a;

    return-void
.end method

.method public b()Ll0/f;
    .locals 3

    iget-object v0, p0, Lq0/e;->c:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSEngineUninit(J)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ll1/i;)Ll0/f;
    .locals 2

    :try_start_0
    new-instance v0, Lq0/e$b;

    invoke-direct {v0, p0, p1}, Lq0/e$b;-><init>(Lq0/e;Ll1/i;)V

    invoke-virtual {v0}, Lq0/e$b;->a()Ll0/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->D:Lb1/n;

    invoke-virtual {v0, v1, p1}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method public d(Ll1/g;)I
    .locals 8

    invoke-virtual {p1}, Ll1/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ll1/g;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lq0/e;->b:Lq0/e$a;

    invoke-virtual {v1}, Lq0/e$a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v1}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    sget-object p1, Lb1/n;->d0:Lb1/n;

    :goto_0
    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1

    :cond_0
    if-eqz v4, :cond_1

    sget-object p1, Lb1/n;->K:Lb1/n;

    goto :goto_0

    :cond_1
    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v4

    invoke-virtual {v4}, Le1/b;->H()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-static {p1}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v3, p0, Lq0/e;->c:[J

    aget-wide v6, v3, v5

    invoke-static {v4, p1, v1, v6, v7}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSReInitData(Landroid/content/Context;[B[BJ)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez v2, :cond_3

    invoke-static {v0}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lq0/e;->c:[J

    aget-wide v5, v2, v5

    invoke-static {v4, v0, v1, v5, v6}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSReInitData(Landroid/content/Context;[B[BJ)I

    move-result v5

    :cond_3
    add-int/2addr p1, v5

    return p1
.end method

.method public e(Ll1/f;)I
    .locals 4

    invoke-virtual {p1}, Ll1/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ll1/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lq0/e;->c:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-static {p1, v0, v2, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->loadEnglishEngine([B[BJ)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadEnglishModel ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineSynthesizer"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public f(Ll1/e;)I
    .locals 2

    iget-object p1, p0, Lq0/e;->c:[J

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSDomainDataUninit(J)I

    move-result p1

    return p1
.end method

.method public g(Ll1/e;)I
    .locals 3

    invoke-virtual {p1}, Ll1/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq1/h;->e(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lq0/e;->c:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {p1, v1, v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSDomainDataInit([BJ)I

    move-result p1

    return p1
.end method
