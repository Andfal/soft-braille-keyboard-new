.class public Lcom/vivo/speechsdk/module/player/soundtouch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/player/IEffect;


# static fields
.field private static final d:I = 0x3e80

.field private static final e:I = 0x1

.field private static final f:I = 0x10


# instance fields
.field a:Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    const/16 v2, 0x3e80

    invoke-direct {p0, v2, v0, v1}, Lcom/vivo/speechsdk/module/player/soundtouch/a;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->a:Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->b:F

    iput v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->c:F

    div-int/lit8 p3, p3, 0x8

    new-instance v0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1, p3}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;-><init>(IIII)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->a:Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;

    return-void
.end method


# virtual methods
.method public processByte([BIZ)[B
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->a:Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->a([BIZ)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->a:Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->a:Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRate(F)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->a:Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->c:F

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->a(F)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->a:Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/vivo/speechsdk/module/player/soundtouch/a;->b:F

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->a(F)V

    :cond_0
    return-void
.end method
