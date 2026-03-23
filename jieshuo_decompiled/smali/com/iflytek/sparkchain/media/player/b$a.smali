.class Lcom/iflytek/sparkchain/media/player/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/player/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/sparkchain/media/player/b;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/media/player/b;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$a;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x2

    const/4 v1, 0x1

    const-string v2, "PcmPlayer"

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    const-string p1, "resume start"

    invoke-static {v2, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$a;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/player/b;->access$000(Lcom/iflytek/sparkchain/media/player/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$a;->a:Lcom/iflytek/sparkchain/media/player/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iflytek/sparkchain/media/player/b;->access$002(Lcom/iflytek/sparkchain/media/player/b;Z)Z

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$a;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/player/b;->resume()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "resume success"

    invoke-static {v2, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$a;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/player/b;->access$200(Lcom/iflytek/sparkchain/media/player/b;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "pause start"

    invoke-static {v2, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$a;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/player/b;->pause()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "pause success"

    invoke-static {v2, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$a;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {p1, v1}, Lcom/iflytek/sparkchain/media/player/b;->access$002(Lcom/iflytek/sparkchain/media/player/b;Z)Z

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$a;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/player/b;->access$100(Lcom/iflytek/sparkchain/media/player/b;)V

    :cond_2
    :goto_1
    return-void
.end method
