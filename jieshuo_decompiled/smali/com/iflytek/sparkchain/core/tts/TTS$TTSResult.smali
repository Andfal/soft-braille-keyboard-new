.class public Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/tts/TTS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TTSResult"
.end annotation


# instance fields
.field private ced:Ljava/lang/String;

.field private data:[B

.field private len:I

.field private pybuf:Ljava/lang/String;

.field private seq:I

.field private sid:Ljava/lang/String;

.field private status:I

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/tts/TTS;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/tts/TTS;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->this$0:Lcom/iflytek/sparkchain/core/tts/TTS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->ced:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->data:[B

    return-object v0
.end method

.method public getLen()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->len:I

    return v0
.end method

.method public getPybuf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->pybuf:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->seq:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->status:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->ced:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->data:[B

    return-void
.end method

.method public setLen(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->len:I

    return-void
.end method

.method public setPybuf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->pybuf:Ljava/lang/String;

    return-void
.end method

.method public setSeq(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->seq:I

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->sid:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->status:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->version:Ljava/lang/String;

    return-void
.end method
