.class Lcom/vivo/speechsdk/api/UiResultListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/api/UiResultListener;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/api/UiResultListener;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/api/UiResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/api/UiResultListener$1;->this$0:Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener$1;->this$0:Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-static {v0}, Lcom/vivo/speechsdk/api/UiResultListener;->access$000(Lcom/vivo/speechsdk/api/UiResultListener;)Lcom/vivo/speechsdk/api/ResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener$1;->this$0:Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-static {v0}, Lcom/vivo/speechsdk/api/UiResultListener;->access$000(Lcom/vivo/speechsdk/api/UiResultListener;)Lcom/vivo/speechsdk/api/ResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/ResultListener;->onSuccess()V

    :cond_0
    return-void
.end method
