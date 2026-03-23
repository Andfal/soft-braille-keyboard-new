.class Lcom/vivo/speechsdk/api/UiResultListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/api/UiResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/api/UiResultListener;

.field final synthetic val$error:Lcom/vivo/speechsdk/api/SpeechError;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/api/UiResultListener;Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/api/UiResultListener$2;->this$0:Lcom/vivo/speechsdk/api/UiResultListener;

    iput-object p2, p0, Lcom/vivo/speechsdk/api/UiResultListener$2;->val$error:Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener$2;->this$0:Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-static {v0}, Lcom/vivo/speechsdk/api/UiResultListener;->access$000(Lcom/vivo/speechsdk/api/UiResultListener;)Lcom/vivo/speechsdk/api/ResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener$2;->this$0:Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-static {v0}, Lcom/vivo/speechsdk/api/UiResultListener;->access$000(Lcom/vivo/speechsdk/api/UiResultListener;)Lcom/vivo/speechsdk/api/ResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/api/UiResultListener$2;->val$error:Lcom/vivo/speechsdk/api/SpeechError;

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/api/ResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V

    :cond_0
    return-void
.end method
