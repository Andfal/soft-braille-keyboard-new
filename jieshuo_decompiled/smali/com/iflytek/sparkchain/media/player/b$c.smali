.class Lcom/iflytek/sparkchain/media/player/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/media/player/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/media/player/b;->setListener(Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)V
    .locals 0

    iput-object p2, p0, Lcom/iflytek/sparkchain/media/player/b$c;->a:Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$c;->a:Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;

    check-cast p1, Lcom/iflytek/sparkchain/core/media/speech/SpeechError;

    invoke-interface {v0, p1}, Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;->onError(Lcom/iflytek/sparkchain/core/media/speech/SpeechError;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$c;->a:Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;->onPaused()V

    return-void
.end method

.method public onPercent(III)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$c;->a:Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;->onPercent(III)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$c;->a:Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$c;->a:Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;->onStoped()V

    return-void
.end method
