.class Lcom/vivo/speechsdk/module/asronline/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/asronline/c;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

.field final synthetic c:Lcom/vivo/speechsdk/module/asronline/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/c;Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->c:Lcom/vivo/speechsdk/module/asronline/c;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->b:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->a:Landroid/os/Bundle;

    const-string v1, "key_force_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;-><init>()V

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->b:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    const-string v4, "ENGINE_ONLINE"

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->getHotWords(Landroid/os/Bundle;Ljava/lang/String;ZLcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->a:Landroid/os/Bundle;

    const-string v2, "key_server_url"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "https://jovivauc.vivo.com.cn/datacollect/upload"

    :goto_0
    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->c:Lcom/vivo/speechsdk/module/asronline/c;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->b:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    invoke-static {v2, v3}, Lcom/vivo/speechsdk/module/asronline/c;->a(Lcom/vivo/speechsdk/module/asronline/c;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->c:Lcom/vivo/speechsdk/module/asronline/c;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->a:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/vivo/speechsdk/module/asronline/c;->a(Lcom/vivo/speechsdk/module/asronline/c;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/c$a;->c:Lcom/vivo/speechsdk/module/asronline/c;

    invoke-static {v2, v0, v1}, Lcom/vivo/speechsdk/module/asronline/c;->a(Lcom/vivo/speechsdk/module/asronline/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
