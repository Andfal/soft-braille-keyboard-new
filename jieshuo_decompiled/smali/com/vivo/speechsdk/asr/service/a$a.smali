.class Lcom/vivo/speechsdk/asr/service/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/asr/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/asr/service/a;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ASRSender"

    const-string v1, "notify client onEnd failed"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->b(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/asr/service/RecognizerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a()V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->b(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/asr/service/RecognizerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c()V

    return-void
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->obtain()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result v1

    const-string v2, "key_error_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_error_msg"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v1}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2, v0}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v1, "ASRSender"

    const-string v2, "notify client onError failed"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    throw p1

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->b(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/asr/service/RecognizerService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(I)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->obtain()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_event_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {p2}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object p2

    const/16 v1, 0x11

    invoke-interface {p2, v1, v0}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p2, "ASRSender"

    const-string v1, "notify client onEvent failed"

    invoke-static {p2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    const/16 p2, 0x1393

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/service/a;->b(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/asr/service/RecognizerService;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/service/a;->b(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/asr/service/RecognizerService;

    move-result-object p1

    const-string p2, "offline init timeout !!!"

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public onRecordEnd()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ASRSender"

    const-string v1, "notify client onRecordEnd failed"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onRecordStart()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ASRSender"

    const-string v1, "notify client onRecordStart failed"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    const-string v1, "ASRSender"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->obtain()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "key_result_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_result"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object p1

    const/16 p2, 0xa

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "notify client onResult failed"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    throw p1

    :cond_0
    const-string p1, "mClient is NULL"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onSpeechEnd()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ASRSender"

    const-string v1, "notify client onSpeechEnd failed"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSpeechStart()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ASRSender"

    const-string v1, "notify client onSpeechStart failed"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onVolumeChanged(I[B)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->obtain()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_volume"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_audio_data"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :try_start_0
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a$a;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object p1

    const/16 p2, 0xf

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "ASRSender"

    const-string p2, "notify client onVolumeChanged failed"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    throw p1

    :cond_0
    :goto_2
    return-void
.end method
