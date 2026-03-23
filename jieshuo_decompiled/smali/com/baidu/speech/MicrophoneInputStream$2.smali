.class Lcom/baidu/speech/MicrophoneInputStream$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/MicrophoneInputStream;-><init>(IILjava/io/InputStream;Landroid/media/AudioRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/MicrophoneInputStream;


# direct methods
.method constructor <init>(Lcom/baidu/speech/MicrophoneInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/MicrophoneInputStream$2;->this$0:Lcom/baidu/speech/MicrophoneInputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x280

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/speech/MicrophoneInputStream$2;->this$0:Lcom/baidu/speech/MicrophoneInputStream;

    invoke-static {v1}, Lcom/baidu/speech/MicrophoneInputStream;->access$100(Lcom/baidu/speech/MicrophoneInputStream;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
