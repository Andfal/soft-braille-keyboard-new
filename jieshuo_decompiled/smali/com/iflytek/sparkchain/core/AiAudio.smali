.class public Lcom/iflytek/sparkchain/core/AiAudio;
.super Lcom/iflytek/sparkchain/core/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/AiAudio$Holder;
    }
.end annotation


# static fields
.field public static ENCODING_DEFAULT:Ljava/lang/String; = "speex-wb"

.field public static ENCODING_ICO:Ljava/lang/String; = "ico"

.field public static ENCODING_LAME:Ljava/lang/String; = "lame"

.field public static ENCODING_OPUS:Ljava/lang/String; = "opus"

.field public static ENCODING_OPUS_WB:Ljava/lang/String; = "opus-wb"

.field public static ENCODING_PCM:Ljava/lang/String; = "pcm"

.field public static ENCODING_RAW:Ljava/lang/String; = "raw"

.field public static ENCODING_SPEEX:Ljava/lang/String; = "speex"

.field public static ENCODING_SPEEX_WB:Ljava/lang/String; = "speex-wb"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/a;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiAudio$Holder;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/AiAudio$Holder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    const-string p0, "haha"

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/AiAudio;->get(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiAudio$Holder;

    move-result-object p0

    const-string v0, "111"

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->data(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;

    sget-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->BEGIN:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->status(Lcom/iflytek/sparkchain/core/AiStatus;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AiAudio$Holder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiAudio$Holder;->bitDepth(I)Lcom/iflytek/sparkchain/core/AiAudio$Holder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->valid()Lcom/iflytek/sparkchain/core/a;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AiAudio;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/a;->syncCtrl(I)V

    return-void
.end method
