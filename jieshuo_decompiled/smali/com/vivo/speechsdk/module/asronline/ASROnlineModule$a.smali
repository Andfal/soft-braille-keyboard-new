.class Lcom/vivo/speechsdk/module/asronline/ASROnlineModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/asr/ITcFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/ASROnlineModule$a;->a:Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/asronline/ASROnlineModule$a;->b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/asr/IASRService;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/asr/IASRService;
    .locals 2

    const-string v0, "key_asr_tc_enable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/vivo/speechsdk/module/asronline/g;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/ASROnlineModule$a;->a:Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;->a(Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/vivo/speechsdk/module/asronline/g;-><init>(Landroid/os/Bundle;Landroid/os/Looper;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/vivo/speechsdk/module/asronline/b;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/ASROnlineModule$a;->a:Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;->a(Lcom/vivo/speechsdk/module/asronline/ASROnlineModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/vivo/speechsdk/module/asronline/b;-><init>(Landroid/os/Bundle;Landroid/os/Looper;)V

    return-object p1
.end method

.method public getIPlayer()Lcom/vivo/speechsdk/module/api/asr/ITcPlayer;
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object v0

    return-object v0
.end method

.method public getParser(I)Lcom/vivo/speechsdk/module/api/IParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vivo/speechsdk/module/api/IParser<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/vivo/speechsdk/module/asronline/d;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/asronline/d;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/vivo/speechsdk/module/asronline/e;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/asronline/e;-><init>()V

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
