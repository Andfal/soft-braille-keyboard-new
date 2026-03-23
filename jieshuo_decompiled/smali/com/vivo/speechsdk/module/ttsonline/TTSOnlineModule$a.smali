.class Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/tts/ITTSFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule$a;->a:Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule$a;->b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/tts/ITTSService;
    .locals 1

    const-string v0, "key_audio_encode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/vivo/speechsdk/module/ttsonline/b;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule$a;->a:Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;->a(Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/b/c;->c()Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule$a;->a:Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;->a(Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/vivo/speechsdk/module/ttsonline/b;-><init>(Landroid/os/Bundle;Lcom/vivo/speechsdk/b/c;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/vivo/speechsdk/module/ttsonline/c;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule$a;->a:Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;->a(Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/vivo/speechsdk/module/ttsonline/c;-><init>(Landroid/os/Bundle;Landroid/os/Looper;)V

    return-object p1
.end method

.method public getParser()Lcom/vivo/speechsdk/module/api/IParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vivo/speechsdk/module/api/IParser<",
            "Lcom/vivo/speechsdk/module/api/tts/TtsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/vivo/speechsdk/module/ttsonline/d;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/ttsonline/d;-><init>()V

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
