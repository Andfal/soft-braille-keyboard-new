.class Lcom/vivo/speechsdk/api/SpeechSdk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/i/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/api/SpeechSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x2715

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/b/i/b;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
