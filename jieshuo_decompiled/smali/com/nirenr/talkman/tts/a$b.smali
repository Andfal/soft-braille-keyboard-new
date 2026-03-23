.class Lcom/nirenr/talkman/tts/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/tts/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/AudioManager;

.field final synthetic b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field final synthetic c:Lcom/nirenr/talkman/tts/a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/tts/a;Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/a$b;->c:Lcom/nirenr/talkman/tts/a;

    iput-object p2, p0, Lcom/nirenr/talkman/tts/a$b;->a:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/nirenr/talkman/tts/a$b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a$b;->c:Lcom/nirenr/talkman/tts/a;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/a;->a(Lcom/nirenr/talkman/tts/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/a$b;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/a$b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/tts/a$b;->c:Lcom/nirenr/talkman/tts/a;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/a;->a(Lcom/nirenr/talkman/tts/a;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/tts/a$b;->a:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a$b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a$b;->c:Lcom/nirenr/talkman/tts/a;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/a;->a(Lcom/nirenr/talkman/tts/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/a$b;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/a$b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method
