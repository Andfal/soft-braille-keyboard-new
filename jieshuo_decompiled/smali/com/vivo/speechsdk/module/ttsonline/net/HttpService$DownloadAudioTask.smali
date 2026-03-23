.class Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadAudioTask"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mSaveAudioPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->mBundle:Landroid/os/Bundle;

    const-string p1, "key_save_audio_path"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->mSaveAudioPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "HttpService"

    const/16 v1, 0x271c

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->mBundle:Landroid/os/Bundle;

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$100(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$002(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Lcom/vivo/speechsdk/module/api/net/Resp;)Lcom/vivo/speechsdk/module/api/net/Resp;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/speechsdk/module/api/net/Resp;->code()I

    move-result v5

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$200(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;I)V

    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/speechsdk/module/api/net/RespBody;->contentType()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    const-string v5, "json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/speechsdk/module/api/net/RespBody;->string()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$300(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v4

    const-string v5, "read response string failed"

    const v6, 0x9d0a

    invoke-interface {v4, v6, v5}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-eqz v4, :cond_1

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v4

    const-string v5, "server_cost"

    invoke-virtual {v4, v5}, Lcom/vivo/speechsdk/module/api/net/Resp;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/speechsdk/module/api/net/RespBody;->contentLength()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Server_Cost and Content-Length | "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    iget-object v7, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->mSaveAudioPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vivo/speechsdk/module/api/net/RespBody;->byteStream()Ljava/io/InputStream;

    move-result-object v8

    new-instance v9, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;

    invoke-direct {v9, p0, v5, v6}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;-><init>(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;J)V

    invoke-static {v4, v7, v8, v9}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$600(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;Ljava/lang/String;Ljava/io/InputStream;Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$IDownloadListener;)V

    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$700(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v3, "key_complete"

    :try_start_3
    iget-object v5, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->mSaveAudioPath:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v4

    const-string v5, "unknow server protocol"

    const v6, 0x9d0c

    invoke-interface {v4, v6, v5}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$800(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/net/Resp;->close()V

    :cond_3
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_1
    :try_start_5
    const-string v5, "exit reason "

    invoke-static {v0, v5, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const v5, 0x9d0d

    invoke-interface {v0, v5, v3}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$800(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/net/Resp;->close()V

    :cond_5
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_6
    :goto_2
    return-void

    :catchall_2
    move-exception v0

    move-object v3, v4

    :goto_3
    move-object v4, v3

    :goto_4
    iget-object v3, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v3, v2}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$800(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;I)V

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/module/api/net/Resp;->close()V

    :cond_7
    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_8
    throw v0
.end method
