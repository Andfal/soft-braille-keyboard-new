.class public interface abstract Lcom/iltgcl/echovoice/client/IEchoVoiceService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iltgcl/echovoice/client/IEchoVoiceService$Default;,
        Lcom/iltgcl/echovoice/client/IEchoVoiceService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getVersionCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVoiceNameEntries()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVoiceNameValues()[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasLicense()Z
.end method

.method public abstract isPaused()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isPausedEx(Landroid/os/IBinder;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isPausedEx2(Landroid/os/IBinder;Landroid/os/Bundle;)Z
.end method

.method public abstract isSpeaking()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSpeakingEx(Landroid/os/IBinder;Landroid/os/Bundle;)Z
.end method

.method public abstract pause()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pauseEx(Landroid/os/IBinder;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pauseEx2(Landroid/os/IBinder;Landroid/os/Bundle;)I
.end method

.method public abstract resume()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resumeEx(Landroid/os/IBinder;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resumeEx2(Landroid/os/IBinder;Landroid/os/Bundle;)I
.end method

.method public abstract scaleVolume(Landroid/os/IBinder;F)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setCallback(Landroid/os/IBinder;Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;)V
.end method

.method public abstract speak(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
.end method

.method public abstract stop(Landroid/os/IBinder;)I
.end method

.method public abstract stopEx(Landroid/os/IBinder;Landroid/os/Bundle;)I
.end method
