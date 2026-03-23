.class final Lcom/vivo/speechsdk/d/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

.field private final b:Landroid/os/Bundle;

.field final synthetic c:Lcom/vivo/speechsdk/d/d;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/d/d;Lcom/vivo/speechsdk/d/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/d$a;->c:Lcom/vivo/speechsdk/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/vivo/speechsdk/d/d$b;->b()Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/d/d$a;->a:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/d/d$b;->a()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/d/d$a;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/d$a;->a:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/d$a;->a:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/d$a;->a:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    const/16 p2, 0x2717

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/d/d$a;->c:Lcom/vivo/speechsdk/d/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/d/d;->a(Lcom/vivo/speechsdk/d/d;Lcom/vivo/speechsdk/d/d$b;)Lcom/vivo/speechsdk/d/d$b;

    iget-object p1, p0, Lcom/vivo/speechsdk/d/d$a;->c:Lcom/vivo/speechsdk/d/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/d;->a(Lcom/vivo/speechsdk/d/d;)Lcom/vivo/speechsdk/d/d$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/d/d$a;->c:Lcom/vivo/speechsdk/d/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/d;->a(Lcom/vivo/speechsdk/d/d;)Lcom/vivo/speechsdk/d/d$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/d/d$b;->a()Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/d$a;->c:Lcom/vivo/speechsdk/d/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/d;->a(Lcom/vivo/speechsdk/d/d;)Lcom/vivo/speechsdk/d/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/d$b;->b()Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/vivo/speechsdk/d/d;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)I

    :cond_0
    return-void
.end method
