.class public Lcom/iflytek/sparkchain/core/asr/Transcription;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private index:I

.field private segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/Transcription;->index:I

    return v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Segment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/Transcription;->segments:Ljava/util/List;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/Transcription;->index:I

    return-void
.end method

.method public setSegments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Segment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/Transcription;->segments:Ljava/util/List;

    return-void
.end method
