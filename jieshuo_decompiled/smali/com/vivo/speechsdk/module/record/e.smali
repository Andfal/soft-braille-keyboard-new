.class public final synthetic Lcom/vivo/speechsdk/module/record/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/media/AudioRecord;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    return-void
.end method
