.class Lcom/vivo/speechsdk/d/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/d/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->d(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->d(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/b;->b()I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->d(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/b;->h()I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pre-synthesized start | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->d(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "Synthesizer"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;)I

    move-result p1

    if-eq p1, v3, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1, v3}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "Synthesizer"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session end "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/d/c;->b(Lcom/vivo/speechsdk/d/c;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->b(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object p1

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/d/f/b;->onEnd(I)V

    const-string p1, "Synthesizer"

    const-string v1, "onEnd 1"

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v5, 0x10

    invoke-static {v0, v5, v3, v2, v4}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    monitor-enter v0

    :try_start_2
    iget-object v3, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-virtual {v3}, Lcom/vivo/speechsdk/d/c;->isSpeaking()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v3, v1}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;I)I

    const-string v1, "Synthesizer"

    const-string v3, "stop reason | error"

    invoke-static {v1, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    const-string v3, "error"

    invoke-static {v1, v3}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v1, v0, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/vivo/speechsdk/d/f/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Synthesizer"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_3
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1, v3}, Lcom/vivo/speechsdk/d/c;->b(Lcom/vivo/speechsdk/d/c;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/d/f/b;->onSpeakBegin(I)V

    const-string p1, "Synthesizer"

    const-string v0, "onSpeakBegin"

    :goto_1
    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    check-cast v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    iget-object v3, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    if-eqz v3, :cond_3

    iget v4, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    new-array v5, v4, [B

    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v5

    goto :goto_2

    :cond_3
    move-object v10, v4

    :goto_2
    iget-object v3, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object v6

    iget v7, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    iget v8, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mBeginPos:I

    iget v9, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    iget-object v3, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lcom/vivo/speechsdk/d/f/b;->onBufferProgress(III[BI)V

    iget v3, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    if-eqz v3, :cond_5

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget v4, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    const-string v5, "key_total_byte"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v4, p1, Landroid/os/Message;->arg2:I

    const-string v5, "key_one_word_byte"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "key_total_byte_type"

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_4

    const-string p1, "calculate"

    goto :goto_3

    :cond_4
    const-string p1, "absolute"

    :goto_3
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object p1

    iget-object v4, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v4

    const/16 v5, 0x1773

    invoke-virtual {p1, v5, v3, v4}, Lcom/vivo/speechsdk/d/f/b;->onEvent(ILandroid/os/Bundle;I)V

    :cond_5
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->g(Lcom/vivo/speechsdk/d/c;)I

    move-result v3

    invoke-static {p1, v1, v3, v2, v0}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;IIILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->recycle()V

    goto/16 :goto_6

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x137

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "key_net_reuse"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    const/16 v3, 0x11

    invoke-static {v1, v3, v0, v2, v4}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;IIILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/16 v1, 0x138b

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "key_tts_sid"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    const/4 v3, 0x7

    invoke-static {v1, v3, v2, v2, v0}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;IIILjava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/vivo/speechsdk/d/f/b;->onEvent(ILandroid/os/Bundle;I)V

    goto :goto_5

    :cond_8
    const/16 v1, 0x138a

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "key_error_code"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    const/16 v3, 0x14

    invoke-static {v1, v3, v0, v2, v4}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;IIILjava/lang/Object;)V

    goto :goto_4

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/d/c;->b(Lcom/vivo/speechsdk/d/c;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/d/f/b;->onPlayCompleted(I)V

    const-string p1, "Synthesizer"

    const-string v0, "onPlayCompleted"

    goto/16 :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/d/f/b;->onSpeakResumed(I)V

    const-string p1, "Synthesizer"

    const-string v0, "onSpeakResumed"

    goto/16 :goto_1

    :pswitch_8
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/d/f/b;->onSpeakPaused(I)V

    const-string p1, "Synthesizer"

    const-string v0, "onSpeakPaused"

    goto/16 :goto_1

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "key_bpos"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_epos"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "key_percent"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "key_frame_count"

    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    iget-object v4, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v5}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v5

    invoke-virtual {v4, v3, v0, v1, v5}, Lcom/vivo/speechsdk/d/f/b;->onPlayProgress(IIII)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/d/c;->e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v1

    const/16 v3, 0x1772

    invoke-virtual {v0, v3, p1, v1}, Lcom/vivo/speechsdk/d/f/b;->onEvent(ILandroid/os/Bundle;I)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$b;->a:Lcom/vivo/speechsdk/d/c;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/vivo/speechsdk/d/c;->a(Lcom/vivo/speechsdk/d/c;Landroid/os/Bundle;I)V

    :cond_a
    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x132
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
