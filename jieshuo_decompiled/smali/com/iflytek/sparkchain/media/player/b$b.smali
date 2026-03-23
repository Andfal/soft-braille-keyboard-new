.class Lcom/iflytek/sparkchain/media/player/b$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/player/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/sparkchain/media/player/b;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/media/player/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$b;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$b;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/player/b;->access$2400(Lcom/iflytek/sparkchain/media/player/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$b;->a:Lcom/iflytek/sparkchain/media/player/b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/iflytek/sparkchain/media/player/b;->access$2300(Lcom/iflytek/sparkchain/media/player/b;II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$b;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/player/b;->access$200(Lcom/iflytek/sparkchain/media/player/b;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b$b;->a:Lcom/iflytek/sparkchain/media/player/b;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/player/b;->access$100(Lcom/iflytek/sparkchain/media/player/b;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b$b;->a:Lcom/iflytek/sparkchain/media/player/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    invoke-static {v0, p1}, Lcom/iflytek/sparkchain/media/player/b;->access$2200(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/media/speech/SpeechError;)V

    :goto_0
    return-void
.end method
