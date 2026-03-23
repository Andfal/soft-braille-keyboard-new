.class Lcom/iflytek/sparkchain/core/AiBuilder$InputData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputData"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private lastData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/AiBuilder$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/iflytek/sparkchain/core/AiBuilder$InputData;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->buffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getLastData()Lcom/iflytek/sparkchain/core/AiBuilder$InputData;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->lastData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    return-object v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setLastData(Lcom/iflytek/sparkchain/core/AiBuilder$InputData;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiBuilder$InputData;->lastData:Lcom/iflytek/sparkchain/core/AiBuilder$InputData;

    return-void
.end method
