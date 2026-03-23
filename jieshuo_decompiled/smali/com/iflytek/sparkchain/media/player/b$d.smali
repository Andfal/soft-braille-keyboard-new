.class Lcom/iflytek/sparkchain/media/player/b$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/player/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/iflytek/sparkchain/media/player/b;


# direct methods
.method private constructor <init>(Lcom/iflytek/sparkchain/media/player/b;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/player/b;->access$300(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/media/player/b$d;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/media/player/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/player/b$d;-><init>(Lcom/iflytek/sparkchain/media/player/b;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/player/b$d;->a:I

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "PcmPlayer"

    const-string v4, "start player"

    invoke-static {v3, v4}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v3, "PcmPlayer"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAudioFocus= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v5}, Lcom/iflytek/sparkchain/media/player/b;->access$400(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$400(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$500(Lcom/iflytek/sparkchain/media/player/b;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$600(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object v5, v5, Lcom/iflytek/sparkchain/media/player/b;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v3, v4, v5}, Lcom/iflytek/sparkchain/utils/FuncAdapter;->Lock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$500(Lcom/iflytek/sparkchain/media/player/b;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$600(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/iflytek/sparkchain/utils/FuncAdapter;->Lock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_0
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/record/a;->beginRead()V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$800(Lcom/iflytek/sparkchain/media/player/b;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v4, v2, :cond_1

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4, v6}, Lcom/iflytek/sparkchain/media/player/b;->access$902(Lcom/iflytek/sparkchain/media/player/b;I)I

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/player/b;->startFadeIn()V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1000(Lcom/iflytek/sparkchain/media/player/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1100(Lcom/iflytek/sparkchain/media/player/b;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v6, :cond_5

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v3

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1200(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-eq v6, v3, :cond_12

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    const-string v3, "pause done"

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1400(Lcom/iflytek/sparkchain/media/player/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1200(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/player/b;->setSilence()V

    goto/16 :goto_8

    :cond_4
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/player/b;->setSilence()V

    goto/16 :goto_9

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/record/a;->playAble()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3, v4, v6}, Lcom/iflytek/sparkchain/media/player/b;->access$1300(Lcom/iflytek/sparkchain/media/player/b;II)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1400(Lcom/iflytek/sparkchain/media/player/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    const-string v3, "BUFFERING to PLAYING  fading "

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/player/b;->startFadeIn()V

    :cond_6
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/record/a;->getPlayPercent()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/sparkchain/media/record/a;->getPalyAudioInfo()Lcom/iflytek/sparkchain/media/record/a$a;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget v8, v4, Lcom/iflytek/sparkchain/media/record/a$a;->a:I

    invoke-static {v7, v8}, Lcom/iflytek/sparkchain/media/player/b;->access$1502(Lcom/iflytek/sparkchain/media/player/b;I)I

    iget-object v7, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v7}, Lcom/iflytek/sparkchain/media/player/b;->access$1400(Lcom/iflytek/sparkchain/media/player/b;)Landroid/os/Handler;

    move-result-object v7

    iget v4, v4, Lcom/iflytek/sparkchain/media/record/a$a;->d:I

    invoke-static {v7, v5, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-eq v3, v5, :cond_8

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    :cond_8
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1700(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/record/a;->isBufferingFinished()Z

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    iget-object v7, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v7}, Lcom/iflytek/sparkchain/media/player/b;->access$1800(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/iflytek/sparkchain/media/record/a;->hasMoreBuffer(I)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1900(Lcom/iflytek/sparkchain/media/player/b;)F

    move-result v3

    const/4 v7, 0x0

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_9

    const-string v3, "no more size  fading "

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/player/b;->startFadeOut()V

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v3

    if-ne v6, v3, :cond_b

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/record/a;->isBufferingFinished()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    iget-object v7, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v7}, Lcom/iflytek/sparkchain/media/player/b;->access$1800(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/iflytek/sparkchain/media/record/a;->hasMoreBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1900(Lcom/iflytek/sparkchain/media/player/b;)F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_b

    const-string v3, "has buffer  fading "

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/player/b;->startFadeIn()V

    :cond_b
    :goto_3
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1200(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/player/b;->fading()V

    :cond_c
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v7, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v7}, Lcom/iflytek/sparkchain/media/player/b;->access$2000(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Lcom/iflytek/sparkchain/media/record/a;->writeTrack(Landroid/media/AudioTrack;I)V

    goto/16 :goto_1

    :cond_d
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/media/record/a;->isOver()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "play stoped"

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/sparkchain/media/record/a;->getTotalSize()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    long-to-int v5, v4

    if-le v5, v3, :cond_e

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object v3, v3, Lcom/iflytek/sparkchain/media/player/b;->mEndLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    const-string v3, "PcmPlayer setNotificationMarkerPosition"

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->i(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    new-instance v4, Lcom/iflytek/sparkchain/media/player/b$d$a;

    invoke-direct {v4, p0}, Lcom/iflytek/sparkchain/media/player/b$d$a;-><init>(Lcom/iflytek/sparkchain/media/player/b$d;)V

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object v3, v3, Lcom/iflytek/sparkchain/media/player/b;->mEndCondition:Ljava/util/concurrent/locks/Condition;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3e8

    invoke-interface {v3, v5, v6, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    :goto_4
    iget-object v3, v3, Lcom/iflytek/sparkchain/media/player/b;->mEndLock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_0
    move-exception v3

    goto :goto_6

    :catch_0
    move-exception v3

    :try_start_6
    const-string v4, "pcmplayer interrupted"

    invoke-static {v4}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->i(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    goto :goto_4

    :goto_5
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_7

    :goto_6
    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object v4, v4, Lcom/iflytek/sparkchain/media/player/b;->mEndLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_e
    :goto_7
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$800(Lcom/iflytek/sparkchain/media/player/b;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pcmplayer isover stop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v5}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->i(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$900(Lcom/iflytek/sparkchain/media/player/b;)I

    move-result v4

    if-eq v4, v2, :cond_f

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4, v2}, Lcom/iflytek/sparkchain/media/player/b;->access$902(Lcom/iflytek/sparkchain/media/player/b;I)I

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4}, Lcom/iflytek/sparkchain/media/player/b;->access$1400(Lcom/iflytek/sparkchain/media/player/b;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4, v0}, Lcom/iflytek/sparkchain/media/player/b;->access$1202(Lcom/iflytek/sparkchain/media/player/b;Z)Z

    monitor-exit v3

    goto :goto_9

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4

    :cond_10
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1200(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3, v0}, Lcom/iflytek/sparkchain/media/player/b;->access$1202(Lcom/iflytek/sparkchain/media/player/b;Z)Z

    goto/16 :goto_1

    :cond_11
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3, v6, v4}, Lcom/iflytek/sparkchain/media/player/b;->access$1300(Lcom/iflytek/sparkchain/media/player/b;II)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "play onpaused!"

    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1400(Lcom/iflytek/sparkchain/media/player/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    :goto_8
    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    :cond_13
    :goto_9
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_14
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$800(Lcom/iflytek/sparkchain/media/player/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3, v2}, Lcom/iflytek/sparkchain/media/player/b;->access$902(Lcom/iflytek/sparkchain/media/player/b;I)I

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0, v1}, Lcom/iflytek/sparkchain/media/player/b;->access$1602(Lcom/iflytek/sparkchain/media/player/b;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_15
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$400(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_a

    :catchall_2
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    :catchall_3
    move-exception v4

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v3

    :try_start_e
    invoke-static {v3}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$1400(Lcom/iflytek/sparkchain/media/player/b;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    const/16 v5, 0x4e2b

    invoke-direct {v4, v5}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    invoke-static {v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$800(Lcom/iflytek/sparkchain/media/player/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_f
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3, v2}, Lcom/iflytek/sparkchain/media/player/b;->access$902(Lcom/iflytek/sparkchain/media/player/b;I)I

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0, v1}, Lcom/iflytek/sparkchain/media/player/b;->access$1602(Lcom/iflytek/sparkchain/media/player/b;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_16
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$400(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_a
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$500(Lcom/iflytek/sparkchain/media/player/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/b;->access$600(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object v3, v3, Lcom/iflytek/sparkchain/media/player/b;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v2, v3}, Lcom/iflytek/sparkchain/utils/FuncAdapter;->UnLock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto :goto_b

    :cond_17
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0}, Lcom/iflytek/sparkchain/media/player/b;->access$500(Lcom/iflytek/sparkchain/media/player/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/b;->access$600(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/iflytek/sparkchain/utils/FuncAdapter;->UnLock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_b
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v0, v1}, Lcom/iflytek/sparkchain/media/player/b;->access$2102(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/media/player/b$d;)Lcom/iflytek/sparkchain/media/player/b$d;

    const-string v0, "PcmPlayer"

    const-string v1, "player stopped"

    invoke-static {v0, v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_5
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v1

    :goto_c
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$800(Lcom/iflytek/sparkchain/media/player/b;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_11
    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v4, v2}, Lcom/iflytek/sparkchain/media/player/b;->access$902(Lcom/iflytek/sparkchain/media/player/b;I)I

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/b;->access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2, v1}, Lcom/iflytek/sparkchain/media/player/b;->access$1602(Lcom/iflytek/sparkchain/media/player/b;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_18
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/b;->access$400(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/b;->access$500(Lcom/iflytek/sparkchain/media/player/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$600(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object v4, v4, Lcom/iflytek/sparkchain/media/player/b;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v2, v3, v4}, Lcom/iflytek/sparkchain/utils/FuncAdapter;->UnLock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto :goto_d

    :cond_19
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/b;->access$500(Lcom/iflytek/sparkchain/media/player/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/b;->access$600(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/iflytek/sparkchain/utils/FuncAdapter;->UnLock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_d
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {v2, v1}, Lcom/iflytek/sparkchain/media/player/b;->access$2102(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/media/player/b$d;)Lcom/iflytek/sparkchain/media/player/b$d;

    const-string v1, "PcmPlayer"

    const-string v2, "player stopped"

    invoke-static {v1, v2}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :catchall_6
    move-exception v0

    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v0
.end method
