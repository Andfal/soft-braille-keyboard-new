.class Lcom/vivo/speechsdk/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/d/c;->uploadText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vivo/speechsdk/d/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/d/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/c$a;->b:Lcom/vivo/speechsdk/d/c;

    iput-object p2, p0, Lcom/vivo/speechsdk/d/c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c$a;->b:Lcom/vivo/speechsdk/d/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/c;->c(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SessionUtils;->generateReqId()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/vivo/speechsdk/d/c$a;->b:Lcom/vivo/speechsdk/d/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/d/c;->c(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/speechsdk/d/c$a;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/vivo/speechsdk/module/api/tts/ITTSService;->uploadText(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
