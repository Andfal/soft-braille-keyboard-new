.class public Lcom/vivo/speechsdk/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/d/b$c;,
        Lcom/vivo/speechsdk/d/b$b;
    }
.end annotation


# static fields
.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:I = 0x3

.field public static final w:I = 0x4

.field private static final x:F = 1.0f


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private final c:Ljava/lang/Object;

.field private d:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/vivo/speechsdk/d/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Landroid/os/Bundle;

.field private volatile g:Z

.field private final h:Landroid/os/Handler;

.field private i:Z

.field private j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

.field private k:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

.field private l:Lcom/vivo/speechsdk/module/api/player/IBuffer;

.field private m:I

.field private n:Z

.field private o:I

.field private final p:Lcom/vivo/speechsdk/d/e;

.field private final q:I

.field private final r:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/d/b$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SynthesisTask"

    iput-object v0, p0, Lcom/vivo/speechsdk/d/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/d/b;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/d/b;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->n:Z

    new-instance v1, Lcom/vivo/speechsdk/d/b$a;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/d/b$a;-><init>(Lcom/vivo/speechsdk/d/b;)V

    iput-object v1, p0, Lcom/vivo/speechsdk/d/b;->r:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/b$b;->a(Lcom/vivo/speechsdk/d/b$b;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/d/b;->a(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/vivo/speechsdk/d/b;->q:I

    invoke-static {p1}, Lcom/vivo/speechsdk/d/b$b;->b(Lcom/vivo/speechsdk/d/b$b;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    iget-boolean v1, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v2, "key_next_text"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v2, "key_text"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/d/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v3, "key_is_play_sound"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/speechsdk/d/b;->i:Z

    invoke-static {p1}, Lcom/vivo/speechsdk/d/b$b;->c(Lcom/vivo/speechsdk/d/b$b;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/b$b;->d(Lcom/vivo/speechsdk/d/b$b;)I

    move-result v2

    iput v2, p0, Lcom/vivo/speechsdk/d/b;->m:I

    invoke-static {p1}, Lcom/vivo/speechsdk/d/b$b;->e(Lcom/vivo/speechsdk/d/b$b;)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/d/b;->o:I

    iget-object v2, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "key_request_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/vivo/speechsdk/d/e;

    iget-object v2, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    invoke-direct {p1, v2, v1}, Lcom/vivo/speechsdk/d/e;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b;->p:Lcom/vivo/speechsdk/d/e;

    iget-boolean p1, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v1, "key_audio_encode"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-boolean v1, p0, Lcom/vivo/speechsdk/d/b;->i:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    const-string v2, "Player"

    invoke-virtual {v1, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/player/IPlayerFactory;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/vivo/speechsdk/b/a;->a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    iput-object v2, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    iget-object v2, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/vivo/speechsdk/module/api/player/IPlayerFactory;->createBuffer(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/player/IBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/d/b;->l:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    :cond_2
    iget v1, p0, Lcom/vivo/speechsdk/d/b;->m:I

    const/4 v2, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    if-ne v1, v2, :cond_4

    :cond_3
    if-eq p1, v2, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    const-string v0, "Opus"

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;->createDecoderService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b;->k:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    :cond_4
    return-void
.end method

.method private a(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "key_sample_rate"

    const/16 v1, 0x3e80

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    mul-int/lit8 p1, p1, 0x14

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private a(ILandroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    .locals 3

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_4

    const/16 p3, 0x271f

    const/16 v0, 0x136

    const/4 v1, 0x0

    if-eq p1, p3, :cond_3

    packed-switch p1, :pswitch_data_0

    const/16 p3, 0x12f

    const/4 v2, 0x3

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p2, 0x135

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p3, 0x132

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p2, 0x12d

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_3
    if-eqz p2, :cond_5

    new-instance p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;-><init>()V

    const-string p3, "key_percent"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    iget-object p2, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p3, 0x12c

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_4
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p3, 0x138b

    goto :goto_4

    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/vivo/speechsdk/d/b;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->l:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getSize()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    const-string p2, "tts failed"

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p2, 0x130

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_2
    iget-boolean p1, p0, Lcom/vivo/speechsdk/d/b;->i:Z

    if-nez p1, :cond_5

    const-string p1, "complete1"

    invoke-virtual {p0, v1, p1}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    goto :goto_3

    :pswitch_6
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p2, 0x134

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p2, 0x133

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/vivo/speechsdk/d/b;->b(I)Z

    const-string p1, "download complete"

    invoke-virtual {p0, v1, p1}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 v2, 0x1771

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    goto :goto_5

    :pswitch_9
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p3, 0x137

    goto :goto_4

    :pswitch_a
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p3, 0x138a

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 p3, 0x1391

    :goto_4
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_5
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    :cond_4
    invoke-direct {p0, p3}, Lcom/vivo/speechsdk/d/b;->a(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    :cond_5
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2715
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x271a
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private a(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    .locals 13

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->k:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    const-string v1, "SynthesisTask"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    iget v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eq v0, v4, :cond_1

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    goto :goto_6

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v8, "key_opus_type"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v8, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    if-ne v8, v6, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x4

    if-ne v0, v9, :cond_a

    iget v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    if-nez v0, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    const/4 v9, 0x2

    :goto_2
    if-ne v0, v4, :cond_4

    const/4 v9, 0x1

    :cond_4
    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_7

    :cond_5
    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->n:Z

    if-eqz v0, :cond_6

    const/4 v9, 0x3

    goto :goto_3

    :cond_6
    const/4 v9, 0x2

    :cond_7
    :goto_3
    iput-boolean v5, p0, Lcom/vivo/speechsdk/d/b;->n:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->k:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    iget-object v10, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    if-nez v10, :cond_8

    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    iget v11, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    :goto_4
    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    move v6, v9

    :goto_5
    invoke-interface {v0, v10, v11, v6}, Lcom/vivo/speechsdk/module/api/coder/IDecoder;->decode([BII)[B

    move-result-object v0

    goto :goto_6

    :cond_a
    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    if-eqz v8, :cond_b

    if-eqz v0, :cond_c

    iget-object v8, p0, Lcom/vivo/speechsdk/d/b;->k:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    iget v9, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    invoke-interface {v8, v0, v9, v6}, Lcom/vivo/speechsdk/module/api/coder/IDecoder;->decode([BII)[B

    move-result-object v0

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_c

    iget-object v6, p0, Lcom/vivo/speechsdk/d/b;->k:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    iget v8, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    invoke-interface {v6, v0, v8}, Lcom/vivo/speechsdk/module/api/coder/IDecoder;->decode([BI)[B

    move-result-object v0

    goto :goto_6

    :cond_c
    move-object v0, v7

    :goto_6
    if-eqz v0, :cond_d

    array-length v6, v0

    if-lez v6, :cond_d

    move-object v7, v0

    goto :goto_7

    :cond_d
    const-string v0, "decode failed !!!"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-object v7, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    :goto_7
    if-nez v7, :cond_f

    iget v0, p0, Lcom/vivo/speechsdk/d/b;->q:I

    new-array v7, v0, [B

    :cond_f
    iput-object v7, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    array-length v0, v7

    iput v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->l:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->i:Z

    if-eqz v0, :cond_12

    :try_start_0
    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->setAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->l:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    iget v6, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    iget v8, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    if-eq v8, v3, :cond_11

    if-ne v8, v2, :cond_10

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :cond_11
    :goto_8
    invoke-interface {v0, v7, v6, v4}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->write([BIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    const-string v2, "write buffer failed !!!"

    invoke-static {v1, v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_9
    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->p:Lcom/vivo/speechsdk/d/e;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/d/e;->a(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)I

    move-result v5

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->p:Lcom/vivo/speechsdk/d/e;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/e;->a()Z

    move-result v0

    move v12, v5

    move v5, v0

    move v0, v12

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2, v5, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/d/b;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/d/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v1, "key_pitch"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v1, "key_speaker"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private e(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v1, "key_speed"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "key_text"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/d/b$c;

    const-string v2, "SynthesisTask"

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send audio cache count | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget v3, v1, Lcom/vivo/speechsdk/d/b$c;->a:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send event cache | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/vivo/speechsdk/d/b$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v2, v1, Lcom/vivo/speechsdk/d/b$c;->a:I

    iget-object v3, v1, Lcom/vivo/speechsdk/d/b$c;->b:Landroid/os/Bundle;

    iget-object v1, v1, Lcom/vivo/speechsdk/d/b$c;->c:Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    invoke-direct {p0, v2, v3, v1}, Lcom/vivo/speechsdk/d/b;->a(ILandroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private g(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/d/b;->o:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/d/b;->o:I

    return-void
.end method

.method public declared-synchronized a(ZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/d/b;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/d/d;->a()Lcom/vivo/speechsdk/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/d;->b()V

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->k:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/coder/IDecoder;->release()V

    :cond_2
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    :cond_3
    invoke-static {}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->clear()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pre-synthesized ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] release reason ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] status = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/vivo/speechsdk/d/b;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vivo/speechsdk/d/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SynthesisTask"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/speechsdk/d/b;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/d/b;->b:I

    return v0
.end method

.method public b(I)Z
    .locals 4

    iget v0, p0, Lcom/vivo/speechsdk/d/b;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v3, p0, Lcom/vivo/speechsdk/d/b;->b:I

    if-eq v3, v2, :cond_1

    if-eq v3, p1, :cond_1

    iput p1, p0, Lcom/vivo/speechsdk/d/b;->b:I

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return v1
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/b;->f(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/b;->d(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/b;->c(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/b;->e(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/b;->g(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/d/b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->e:Ljava/lang/String;

    const-string v2, "key_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/d/d;->a()Lcom/vivo/speechsdk/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Lcom/vivo/speechsdk/d/d;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vivo/speechsdk/d/b;->b(I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vivo/speechsdk/d/b;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    iget v0, p0, Lcom/vivo/speechsdk/d/b;->o:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_request_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized i(Landroid/os/Bundle;)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->k:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vivo/speechsdk/d/b;->f:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/vivo/speechsdk/module/api/coder/IDecoder;->init(Landroid/os/Bundle;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->clear()V

    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v1, :cond_2

    const-string v1, "key_play_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    invoke-interface {v1, p1}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->setSpeed(F)V

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->l:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    iget-object v2, p0, Lcom/vivo/speechsdk/d/b;->r:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    invoke-interface {p1, v1, v2}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->play(Lcom/vivo/speechsdk/module/api/player/IBuffer;Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;)Z

    :cond_2
    iget p1, p0, Lcom/vivo/speechsdk/d/b;->b:I

    const/4 v1, 0x2

    if-eqz p1, :cond_5

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 v2, 0x130

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/vivo/speechsdk/d/b;->g()V

    iget-boolean p1, p0, Lcom/vivo/speechsdk/d/b;->i:Z

    if-nez p1, :cond_6

    const-string p1, "complete"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 v2, 0x12f

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    invoke-direct {p0}, Lcom/vivo/speechsdk/d/b;->g()V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/d/b;->h()I

    move-result v0

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/vivo/speechsdk/d/b;->b(I)Z

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/d/b;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " start "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SynthesisTask"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/d/b;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/d/d;->a()Lcom/vivo/speechsdk/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/d;->b()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    :cond_2
    invoke-static {}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pre-synthesized ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] stop reason [new start] status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/d/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/d/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SynthesisTask"

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/speechsdk/d/b;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    iput v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mIsPreSynthesized:I

    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vivo/speechsdk/d/b$c;

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/vivo/speechsdk/d/b$c;-><init>(ILandroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/b;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/d/b;->g()V

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/b;->a(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/d/b;->b(I)Z

    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->h:Landroid/os/Handler;

    const/16 v1, 0x12e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    const/16 v0, 0x271f

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string v0, "ipc"

    :try_start_0
    const-string v2, "key_engine_from"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->i:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->release()V

    iput-object v1, p0, Lcom/vivo/speechsdk/d/b;->j:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "key_pre_synthesized"

    :try_start_1
    iget-boolean v2, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v2, Lcom/vivo/speechsdk/d/b$c;

    invoke-direct {v2, p1, p2, v1}, Lcom/vivo/speechsdk/d/b$c;-><init>(ILandroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/vivo/speechsdk/d/b;->g()V

    invoke-direct {p0, p1, p2, v1}, Lcom/vivo/speechsdk/d/b;->a(ILandroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
