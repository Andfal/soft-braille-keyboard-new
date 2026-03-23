.class Lcom/vivo/speechsdk/module/asronline/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;


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

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$c;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$c;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->h(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$c;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->h(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$c;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->h(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$c;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->h(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResult(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$c;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->h(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$c;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->h(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onResult(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V

    :cond_0
    return-void
.end method
