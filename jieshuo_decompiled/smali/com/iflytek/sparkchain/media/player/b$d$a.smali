.class Lcom/iflytek/sparkchain/media/player/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/media/player/b$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/sparkchain/media/player/b$d;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/media/player/b$d;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$d$a;->a:Lcom/iflytek/sparkchain/media/player/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 1

    const-string p1, "PcmPlayer onMarkerReached"

    invoke-static {p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$d$a;->a:Lcom/iflytek/sparkchain/media/player/b$d;

    iget-object p1, p1, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object p1, p1, Lcom/iflytek/sparkchain/media/player/b;->mEndLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$d$a;->a:Lcom/iflytek/sparkchain/media/player/b$d;

    iget-object p1, p1, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object p1, p1, Lcom/iflytek/sparkchain/media/player/b;->mEndCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$d$a;->a:Lcom/iflytek/sparkchain/media/player/b$d;

    iget-object v0, v0, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object v0, v0, Lcom/iflytek/sparkchain/media/player/b;->mEndLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$d$a;->a:Lcom/iflytek/sparkchain/media/player/b$d;

    iget-object p1, p1, Lcom/iflytek/sparkchain/media/player/b$d;->b:Lcom/iflytek/sparkchain/media/player/b;

    iget-object p1, p1, Lcom/iflytek/sparkchain/media/player/b;->mEndLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method
