.class Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->uploadText(Landroid/os/Bundle;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer$2;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vivo/speechsdk/module/api/net/Req;ILjava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request failed !!! code:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " msg:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TtsExtraServer"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "upload cost"

    invoke-static {p1}, Lcom/vivo/speechsdk/b/g/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Resp;)V
    .locals 1

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->message()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload text response message:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TtsExtraServer"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "upload cost"

    invoke-static {p1}, Lcom/vivo/speechsdk/b/g/a;->c(Ljava/lang/String;)V

    return-void
.end method
