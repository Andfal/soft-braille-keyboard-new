.class public Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/tts/TTS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TTSError"
.end annotation


# instance fields
.field private code:I

.field private errMsg:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/tts/TTS;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/tts/TTS;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;->this$0:Lcom/iflytek/sparkchain/core/tts/TTS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;->code:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;->code:I

    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;->sid:Ljava/lang/String;

    return-void
.end method
