.class Lcom/nirenr/talkman/settings/SoundSetting$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/SoundSetting$1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$1$1;->a:Lcom/nirenr/talkman/settings/SoundSetting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/nirenr/talkman/h;->b:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$1$1;->a:Lcom/nirenr/talkman/settings/SoundSetting$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundSetting$1;->a:Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/SoundSetting;->b(Lcom/nirenr/talkman/settings/SoundSetting;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$1$1;->a:Lcom/nirenr/talkman/settings/SoundSetting$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundSetting$1;->a:Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/SoundSetting;->b(Lcom/nirenr/talkman/settings/SoundSetting;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$1$1;->a:Lcom/nirenr/talkman/settings/SoundSetting$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundSetting$1;->a:Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/SoundSetting;->b(Lcom/nirenr/talkman/settings/SoundSetting;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
