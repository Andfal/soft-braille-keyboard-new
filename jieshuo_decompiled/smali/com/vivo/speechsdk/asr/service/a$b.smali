.class Lcom/vivo/speechsdk/asr/service/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;


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

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/service/a$b;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$b;->a:Lcom/vivo/speechsdk/asr/service/a;

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

    move-result-object p1

    const-string v1, "key_error_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a$b;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object p1

    const/16 v1, 0x16

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
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

    const-string v1, "notify client init error failed"

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$b;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a$b;->a:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;

    move-result-object v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ASRSender"

    const-string v1, "notify client init success failed"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
