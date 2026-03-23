.class Lcom/vivo/speechsdk/module/asronline/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/asronline/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/asronline/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$b;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$b;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->h(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$b;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->h(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v0, 0x75fb

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onError(ILjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$b;->a:Lcom/vivo/speechsdk/module/asronline/b;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
