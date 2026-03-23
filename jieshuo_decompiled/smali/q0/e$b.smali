.class Lq0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;",
        "Ljava/util/concurrent/Callable<",
        "Ll0/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ll1/i;

.field private b:I

.field private c:Lb1/k;

.field d:Ljava/util/concurrent/ExecutorService;

.field final synthetic e:Lq0/e;


# direct methods
.method public constructor <init>(Lq0/e;Ll1/i;)V
    .locals 1

    iput-object p1, p0, Lq0/e$b;->e:Lq0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lq0/e$b;->b:I

    sget-object p1, Lb1/k;->d:Lb1/k;

    iput-object p1, p0, Lq0/e$b;->c:Lb1/k;

    new-instance p1, Lc1/a;

    const-string v0, "bdtts-OfflineSynthesizer"

    invoke-direct {p1, v0}, Lc1/a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lq0/e$b;->d:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lq0/e$b;->a:Ll1/i;

    return-void
.end method


# virtual methods
.method public a()Ll0/f;
    .locals 11

    invoke-static {}, Ln0/b;->f()Ln0/b;

    move-result-object v0

    iget-object v1, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v1}, Lq0/e;->i(Lq0/e;)Lq0/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln0/b;->g(Lq0/e$a;)Ln0/e$a;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ln0/e$a;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/16 v0, 0x17

    invoke-static {v2, v3, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetParam(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    sget-object v0, Lb1/k;->e:Lb1/k;

    iput-object v0, p0, Lq0/e$b;->c:Lb1/k;

    invoke-static {}, Lt0/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    long-to-int v0, v2

    invoke-static {v0}, Lt0/d;->b(I)V

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x3e80

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    sget-object v0, Lb1/k;->d:Lb1/k;

    iput-object v0, p0, Lq0/e$b;->c:Lb1/k;

    invoke-static {}, Lt0/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sampleRate:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sampleRateEnum:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lq0/e$b;->c:Lb1/k;

    invoke-virtual {v2}, Lb1/k;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OfflineSynthesizer"

    invoke-static {v2, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->i(Lq0/e;)Lq0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Ll1/d;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\d+(.\\d+)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "."

    if-eqz v4, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x5

    if-lez v4, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v4, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v4}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v4

    aget-wide v7, v4, v1

    invoke-static {v7, v8, v6, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    aget-wide v9, v0, v1

    invoke-static {v9, v10, v6, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    :cond_3
    :goto_2
    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->i(Lq0/e;)Lq0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Ll1/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x6

    if-lez v4, :cond_4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v4, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v4}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v4

    aget-wide v7, v4, v1

    invoke-static {v7, v8, v6, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    goto :goto_3

    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    aget-wide v9, v0, v1

    invoke-static {v9, v10, v6, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    :cond_5
    :goto_3
    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->i(Lq0/e;)Lq0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Ll1/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x7

    if-lez v4, :cond_6

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v4, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v4}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v4

    aget-wide v7, v4, v1

    invoke-static {v7, v8, v6, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    goto :goto_4

    :cond_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    aget-wide v9, v0, v1

    invoke-static {v9, v10, v6, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    :cond_7
    :goto_4
    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->i(Lq0/e;)Lq0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lq0/e$a;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-lez v3, :cond_8

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v3, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v3}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v3

    aget-wide v5, v3, v1

    invoke-static {v5, v6, v4, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    goto :goto_5

    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    aget-wide v7, v0, v1

    invoke-static {v7, v8, v4, v5, v6}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    :cond_9
    :goto_5
    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v1, v5, v6}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engineResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    aget-wide v3, v0, v1

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->i(Lq0/e;)Lq0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lq0/e$a;->u()J

    move-result-wide v7

    const/16 v0, 0x12

    invoke-static {v3, v4, v0, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    aget-wide v3, v0, v1

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->i(Lq0/e;)Lq0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Ll1/d;->c()J

    move-result-wide v7

    const/16 v0, 0xa

    invoke-static {v3, v4, v0, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v0

    aget-wide v3, v0, v1

    iget-object v0, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v0}, Lq0/e;->i(Lq0/e;)Lq0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lq0/e$a;->F()J

    move-result-wide v7

    const/16 v0, 0x16

    invoke-static {v3, v4, v0, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    invoke-static {p0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->setOnNewDataListener(Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;)V

    iget-object v0, p0, Lq0/e$b;->a:Ll1/i;

    sget-object v3, Lb1/d;->f:Lb1/d;

    invoke-virtual {v3}, Lb1/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ll1/i;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lq0/e$b;->a:Ll1/i;

    invoke-virtual {v0}, Ll1/i;->m()[B

    move-result-object v0

    const-string v3, "before bdttssynthesis"

    invoke-static {v2, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lq0/e$b;->e:Lq0/e;

    invoke-static {v3}, Lq0/e;->j(Lq0/e;)[J

    move-result-object v3

    aget-wide v7, v3, v1

    array-length v1, v0

    invoke-static {v7, v8, v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSynthesis(J[BI)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after bdttssynthesis result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v1

    invoke-virtual {v1}, Le1/b;->H()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x1

    if-nez v0, :cond_a

    const-string v0, "Success_Count"

    invoke-static {v1, v0, v5, v6}, Lq1/i;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v1, v0, v4, v5}, Lq1/i;->h(Landroid/content/Context;Ljava/lang/String;J)Z

    const/4 v0, 0x0

    return-object v0

    :cond_a
    const-string v4, "Fail_Count"

    invoke-static {v1, v4, v5, v6}, Lq1/i;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-static {v1, v4, v5, v6}, Lq1/i;->h(Landroid/content/Context;Ljava/lang/String;J)Z

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->E:Lb1/n;

    invoke-virtual {v1, v2, v0}, Ld1/c;->c(Lb1/n;I)Ll0/f;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {v0}, Ln0/e$a;->g()Ll0/f;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->x:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lq0/e$b;->a()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method public onNewData([BI)I
    .locals 2

    iget v0, p0, Lq0/e$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq0/e$b;->b:I

    iget-object v0, p0, Lq0/e$b;->a:Ll1/i;

    invoke-static {v0}, Ll1/h;->p(Ll1/i;)Ll1/h;

    move-result-object v0

    sget-object v1, Lb1/f;->d:Lb1/f;

    invoke-virtual {v1}, Lb1/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ll1/h;->w(I)V

    sget-object v1, Lb1/a;->b:Lb1/a;

    invoke-virtual {v0, v1}, Ll1/h;->g(Lb1/a;)V

    invoke-virtual {v0, p1}, Ll1/h;->m([B)V

    invoke-virtual {v0, p2}, Ll1/h;->t(I)V

    iget-object p1, p0, Lq0/e$b;->c:Lb1/k;

    invoke-virtual {v0, p1}, Ll1/h;->i(Lb1/k;)V

    iget p1, p0, Lq0/e$b;->b:I

    invoke-virtual {v0, p1}, Ll1/h;->s(I)V

    iget p1, p0, Lq0/e$b;->b:I

    invoke-virtual {v0, p1}, Ll1/h;->q(I)V

    iget-object p1, p0, Lq0/e$b;->e:Lq0/e;

    invoke-virtual {p1, v0}, Lq0/a;->c(Ll1/h;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OfflineSynthesizer"

    const-string p2, "interrupted to interrupt syn"

    invoke-static {p1, p2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
