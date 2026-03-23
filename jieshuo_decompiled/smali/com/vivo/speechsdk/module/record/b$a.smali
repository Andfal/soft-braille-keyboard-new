.class Lcom/vivo/speechsdk/module/record/b$a;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/record/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/record/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/record/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/b$a;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecordingConfiguration;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/b$a;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/f;->a(Landroid/media/AudioRecordingConfiguration;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b$a;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/b$a;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/b;->b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClientSilenced="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/g;->a(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/f;->a(Landroid/media/AudioRecordingConfiguration;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/record/b$a;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioRecord"

    invoke-interface {v2, v4, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/b$a;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/g;->a(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v1

    const-string v3, "key_record_silence"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b$a;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/b;->a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    const-string v3, "key_record_session"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b$a;->a:Lcom/vivo/speechsdk/module/record/b;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/record/b;->c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/vivo/speechsdk/module/api/record/RecordListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method
