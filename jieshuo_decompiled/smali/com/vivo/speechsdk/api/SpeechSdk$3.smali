.class Lcom/vivo/speechsdk/api/SpeechSdk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/api/SpeechSdk;->destroy()V
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
.method public run()V
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/c/b;->b()Lcom/vivo/speechsdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/c/b;->a()V

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$1200()V

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->g()V

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->getInstance()Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->release()V

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/i/b;->d()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$002(I)I

    return-void
.end method
