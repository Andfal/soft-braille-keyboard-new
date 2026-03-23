.class Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$IDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;

.field final synthetic val$contentLength:J


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;J)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;->this$1:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;

    iput-wide p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;->val$contentLength:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload(I)V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;->this$1:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;

    iget-object v0, v0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;->this$1:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;

    iget-object v0, v0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    iget-wide v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;->val$contentLength:J

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$500(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;JJ)I

    move-result p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_percent"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask$1;->this$1:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;

    iget-object p1, p1, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService$DownloadAudioTask;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    const/16 v1, 0x2710

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
