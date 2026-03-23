.class Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/media/player/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->init([BLcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

.field final synthetic val$listener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/media/SimplePlayerHelper;Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;->this$0:Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

    iput-object p2, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;->val$listener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;->val$listener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;->getErrorCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onError(I)V

    return-void
.end method

.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;->val$listener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onCompleted()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;->val$listener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onPause()V

    return-void
.end method

.method public onPercent(III)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;->val$listener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;->val$listener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onStop()V

    return-void
.end method
