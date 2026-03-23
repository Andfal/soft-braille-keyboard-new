.class Lj2/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/msc/ISynthesizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/d;->S(Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:I

.field final synthetic c:Landroid/speech/tts/SynthesisCallback;

.field final synthetic d:Lj2/d;


# direct methods
.method constructor <init>(Lj2/d;Landroid/speech/tts/SynthesisCallback;)V
    .locals 0

    iput-object p1, p0, Lj2/d$d;->d:Lj2/d;

    iput-object p2, p0, Lj2/d$d;->c:Landroid/speech/tts/SynthesisCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusy()V
    .locals 2

    iget-object v0, p0, Lj2/d$d;->d:Lj2/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj2/d;->p(Lj2/d;Z)V

    iget-object v0, p0, Lj2/d$d;->c:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->error()V

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lj2/d$d;->d:Lj2/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj2/d;->p(Lj2/d;Z)V

    iget-object p1, p0, Lj2/d$d;->c:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p1}, Landroid/speech/tts/SynthesisCallback;->error()V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 6

    iget p1, p0, Lj2/d$d;->b:I

    div-int/lit8 p1, p1, 0x20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lj2/d$d;->a:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lj2/d$d;->d:Lj2/d;

    invoke-static {v2}, Lj2/d;->c(Lj2/d;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lj2/d$d$a;

    invoke-direct {v3, p0}, Lj2/d$d$a;-><init>(Lj2/d$d;)V

    int-to-long v4, p1

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lj2/d$d;->d:Lj2/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj2/d;->p(Lj2/d;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lj2/d$d;->a:J

    iget-object v0, p0, Lj2/d$d;->c:Landroid/speech/tts/SynthesisCallback;

    const/16 v2, 0x3e80

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3, v1}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    return-void
.end method

.method public onSynthesize([BII)V
    .locals 3

    iget-object p2, p0, Lj2/d$d;->c:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->getMaxBufferSize()I

    move-result p2

    array-length v0, p1

    iget-object v1, p0, Lj2/d$d;->d:Lj2/d;

    invoke-static {v1}, Lj2/d;->f(Lj2/d;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lj2/d$d;->d:Lj2/d;

    invoke-static {v1}, Lj2/d;->g(Lj2/d;)Lh4/a;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lh4/a;->E([BI)V

    mul-int/lit8 v0, v0, 0x4

    new-array p1, v0, [B

    iget-object p3, p0, Lj2/d$d;->d:Lj2/d;

    invoke-static {p3}, Lj2/d;->g(Lj2/d;)Lh4/a;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lh4/a;->w([BI)I

    move-result v0

    :cond_0
    iget p3, p0, Lj2/d$d;->b:I

    add-int/2addr p3, v0

    iput p3, p0, Lj2/d$d;->b:I

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_1

    sub-int v1, v0, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lj2/d$d;->c:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v2, p1, p3, v1}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/2addr p3, v1

    goto :goto_0

    :cond_1
    return-void
.end method
