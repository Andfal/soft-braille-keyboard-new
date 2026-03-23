.class Lcom/vivo/speechsdk/api/SpeechSdk$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/api/SpeechSdk$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/api/SpeechSdk$1;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/api/SpeechSdk$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1$1;->this$0:Lcom/vivo/speechsdk/api/SpeechSdk$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->getInstance()Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1$1;->this$0:Lcom/vivo/speechsdk/api/SpeechSdk$1;

    iget-object v1, v1, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->init(Landroid/content/Context;)V

    return-void
.end method
