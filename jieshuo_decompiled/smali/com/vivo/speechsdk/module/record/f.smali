.class public final synthetic Lcom/vivo/speechsdk/module/record/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/media/AudioRecordingConfiguration;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result p0

    return p0
.end method
