.class Lcom/vivo/speechsdk/module/vad/VadModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/vad/VadModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/a<",
        "Lcom/vivo/speechsdk/module/api/vad/IVadService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/vad/VadModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/vad/VadModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/VadModule$a;->a:Lcom/vivo/speechsdk/module/vad/VadModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/vad/VadModule$a;->b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/vad/IVadService;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/vad/IVadService;
    .locals 8

    const-string v0, "key_business_name"

    const-string v1, "normal"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_vad_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "key_denoise"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "key_microphone_detect"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c()Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->a(Z)V

    invoke-static {}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c()Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->b()I

    move-result v7

    const/4 v0, 0x1

    if-eqz v3, :cond_2

    const-string v2, "VadModule"

    if-ne v7, v0, :cond_0

    const-string v1, "key_channel_config"

    const/16 v5, 0x10

    invoke-virtual {p1, v1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "microphone mono, set channel mono"

    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne v7, v5, :cond_1

    const-string v0, "key_vsfpa_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "microphone stereo"

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "microphone unknown"

    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "key_asr_mode"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    move v6, p1

    goto :goto_2

    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast p1, Ljava/lang/String;

    const-string v2, "asr_cloud_full_duplex"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x1

    :goto_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/vad/VadModule$a;->a:Lcom/vivo/speechsdk/module/vad/VadModule;

    new-instance v0, Lcom/vivo/speechsdk/module/vad/c;

    move-object v2, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/vivo/speechsdk/module/vad/c;-><init>(ZLjava/lang/String;Landroid/os/Looper;II)V

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/module/vad/VadModule;->a(Lcom/vivo/speechsdk/module/vad/VadModule;Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/c;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/vad/VadModule$a;->a:Lcom/vivo/speechsdk/module/vad/VadModule;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/vad/VadModule;->a(Lcom/vivo/speechsdk/module/vad/VadModule;)Lcom/vivo/speechsdk/module/vad/c;

    move-result-object p1

    return-object p1
.end method
