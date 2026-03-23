.class Lcom/baidu/speech/MicrophoneInputStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/MicrophoneInputStream;-><init>(IILjava/io/InputStream;Landroid/media/AudioRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/net/LocalSocket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/MicrophoneInputStream;

.field final synthetic val$socket:[Landroid/net/LocalSocket;


# direct methods
.method constructor <init>(Lcom/baidu/speech/MicrophoneInputStream;[Landroid/net/LocalSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->this$0:Lcom/baidu/speech/MicrophoneInputStream;

    iput-object p2, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->val$socket:[Landroid/net/LocalSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/net/LocalSocket;
    .locals 4

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->val$socket:[Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->val$socket:[Landroid/net/LocalSocket;

    aget-object v0, v0, v2

    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->this$0:Lcom/baidu/speech/MicrophoneInputStream;

    invoke-static {v3}, Lcom/baidu/speech/MicrophoneInputStream;->access$000(Lcom/baidu/speech/MicrophoneInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->val$socket:[Landroid/net/LocalSocket;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->val$socket:[Landroid/net/LocalSocket;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x280

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->val$socket:[Landroid/net/LocalSocket;

    aget-object v0, v0, v2

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream$1;->val$socket:[Landroid/net/LocalSocket;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Recorder open failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/speech/MicrophoneInputStream$1;->call()Landroid/net/LocalSocket;

    move-result-object v0

    return-object v0
.end method
