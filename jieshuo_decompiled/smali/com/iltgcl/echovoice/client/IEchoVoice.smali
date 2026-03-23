.class public abstract Lcom/iltgcl/echovoice/client/IEchoVoice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static A11Y_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static MEDIA_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static NOTIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field ECHO_VOICE_PKG:Ljava/lang/String;

.field KEY_PARAM_AUDIO_ATTRIBUTES:Ljava/lang/String;

.field KEY_PARAM_PITCH:Ljava/lang/String;

.field KEY_PARAM_RATE:Ljava/lang/String;

.field KEY_PARAM_VOICE_NAME:Ljava/lang/String;

.field KEY_PARAM_VOLUME:Ljava/lang/String;

.field MAX_SPEECH_SPEED:I

.field MAX_VOL_PITCH:I

.field USAGE_A11Y:I

.field USAGE_ALL:I

.field USAGE_MEDIA:I

.field USAGE_NONE:I

.field USAGE_NOTIFICATION:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/iltgcl/echovoice/client/IEchoVoice;->A11Y_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/iltgcl/echovoice/client/IEchoVoice;->MEDIA_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/iltgcl/echovoice/client/IEchoVoice;->NOTIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->USAGE_NONE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->USAGE_MEDIA:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->USAGE_A11Y:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->USAGE_NOTIFICATION:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->USAGE_ALL:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->MAX_SPEECH_SPEED:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->MAX_VOL_PITCH:I

    const-string v0, "com.iltgcl.echovoice"

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->ECHO_VOICE_PKG:Ljava/lang/String;

    const-string v0, "echoRate"

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->KEY_PARAM_RATE:Ljava/lang/String;

    const-string v0, "echoVoiceName"

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->KEY_PARAM_VOICE_NAME:Ljava/lang/String;

    const-string v0, "echoPitch"

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->KEY_PARAM_PITCH:Ljava/lang/String;

    const-string v0, "echoVolume"

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->KEY_PARAM_VOLUME:Ljava/lang/String;

    const-string v0, "audioAttributes"

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoice;->KEY_PARAM_AUDIO_ATTRIBUTES:Ljava/lang/String;

    return-void
.end method

.method static addUsage(Landroid/os/Bundle;I)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "audioAttributes"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/iltgcl/echovoice/client/IEchoVoice;->MEDIA_ATTRIBUTES:Landroid/media/AudioAttributes;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/iltgcl/echovoice/client/IEchoVoice;->NOTIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/iltgcl/echovoice/client/IEchoVoice;->A11Y_ATTRIBUTES:Landroid/media/AudioAttributes;

    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method static getUsage(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "audioAttributes"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/media/AudioAttributes;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    const/16 v1, 0xb

    if-eq p0, v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0
.end method


# virtual methods
.method public abstract getVersionCode()I
.end method

.method public abstract getVoiceNameEntries()[Ljava/lang/String;
.end method

.method public abstract getVoiceNameValues()[I
.end method

.method public abstract hasLicense()Z
.end method

.method public abstract isPaused(I)Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isSpeaking(I)Z
.end method

.method public abstract pause(I)I
.end method

.method public abstract resume(I)I
.end method

.method public abstract shutdown()V
.end method

.method public abstract speak(Ljava/lang/CharSequence;IILjava/lang/String;)I
.end method

.method public abstract speak(Ljava/lang/CharSequence;IILjava/lang/String;IIII)I
.end method

.method public abstract stop(I)I
.end method

.method public abstract stopAll()I
.end method
