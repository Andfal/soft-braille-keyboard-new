.class Lcom/vivo/speechsdk/module/ttsonline/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/ttsonline/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/ttsonline/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/ttsonline/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$b;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$b;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->f(Lcom/vivo/speechsdk/module/ttsonline/c;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$b;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$b;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    const v0, 0x9cb1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$b;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Lcom/vivo/speechsdk/module/ttsonline/c;I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
