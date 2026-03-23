.class Lcom/baidu/speech/audio/MicrophoneServer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/audio/MicrophoneServer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/audio/MicrophoneServer;

.field final synthetic val$finalTempLimit:I

.field final synthetic val$len:I

.field final synthetic val$offset:I

.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$skt:Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;


# direct methods
.method constructor <init>(Lcom/baidu/speech/audio/MicrophoneServer;ILjava/io/OutputStream;IILcom/baidu/speech/audio/MicrophoneServer$SocketWrap;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    iput p2, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$len:I

    iput-object p3, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$out:Ljava/io/OutputStream;

    iput p4, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$offset:I

    iput p5, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$finalTempLimit:I

    iput-object p6, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$skt:Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 6

    iget v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$len:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v2}, Lcom/baidu/speech/audio/MicrophoneServer;->access$800(Lcom/baidu/speech/audio/MicrophoneServer;)[B

    move-result-object v2

    iget v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$offset:I

    iget v4, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$len:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v2}, Lcom/baidu/speech/audio/MicrophoneServer;->access$800(Lcom/baidu/speech/audio/MicrophoneServer;)[B

    move-result-object v2

    iget v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$offset:I

    iget-object v4, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v4}, Lcom/baidu/speech/audio/MicrophoneServer;->access$800(Lcom/baidu/speech/audio/MicrophoneServer;)[B

    move-result-object v4

    array-length v4, v4

    iget v5, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$offset:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v2}, Lcom/baidu/speech/audio/MicrophoneServer;->access$800(Lcom/baidu/speech/audio/MicrophoneServer;)[B

    move-result-object v2

    iget v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$finalTempLimit:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->val$skt:Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;

    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$2;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v2}, Lcom/baidu/speech/audio/MicrophoneServer;->access$900(Lcom/baidu/speech/audio/MicrophoneServer;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->setPosition(J)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/speech/audio/MicrophoneServer$2;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
