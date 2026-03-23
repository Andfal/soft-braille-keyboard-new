.class public Lcom/iflytek/sparkchain/core/media/record/IFlyAudioManager;
.super Lcom/iflytek/sparkchain/media/RecorderHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/media/record/IFlyAudioManager$Holder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/RecorderHelper;-><init>()V

    return-void
.end method

.method public static getInst()Lcom/iflytek/sparkchain/core/media/record/IFlyAudioManager;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/media/record/IFlyAudioManager$Holder;->access$000()Lcom/iflytek/sparkchain/core/media/record/IFlyAudioManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initPcmRecorder(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/RecorderHelper;->getInst()Lcom/iflytek/sparkchain/media/RecorderHelper;

    move-result-object v0

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/RecorderHelper;->genFrom(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    move-result-object p1

    invoke-static {p2}, Lcom/iflytek/sparkchain/media/RecorderHelper;->genFrom(Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)Lcom/iflytek/sparkchain/media/record/b;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/media/RecorderHelper;->init(Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Lcom/iflytek/sparkchain/media/record/b;)V

    return-void
.end method

.method public pausePlay()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->pause()V

    return-void
.end method

.method public playerInit(Ljava/lang/String;Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->init(Ljava/lang/String;Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V

    return-void
.end method

.method public playerInit([BLcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->init([BLcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V

    return-void
.end method

.method public startPcmPlay()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->play()V

    return-void
.end method

.method public stopPlay()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->stop()V

    return-void
.end method
