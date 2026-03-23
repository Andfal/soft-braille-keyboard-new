.class public Lai/onnxruntime/OnnxSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/onnxruntime/OnnxValue;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allocatorHandle:J

.field private closed:Z

.field private final info:Lai/onnxruntime/SequenceInfo;

.field final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lai/onnxruntime/OnnxSequence;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxSequence;->logger:Ljava/util/logging/Logger;

    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(JJLai/onnxruntime/SequenceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    iput-wide p3, p0, Lai/onnxruntime/OnnxSequence;->allocatorHandle:J

    iput-object p5, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lai/onnxruntime/OnnxSequence;->closed:Z

    return-void
.end method

.method private native close(JJ)V
.end method

.method private native getMaps(JJJ)[Lai/onnxruntime/OnnxMap;
.end method

.method private native getTensors(JJJ)[Lai/onnxruntime/OnnxTensor;
.end method


# virtual methods
.method protected checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OnnxSequence;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed OnnxValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OnnxSequence;->closed:Z

    if-nez v0, :cond_0

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxSequence;->close(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OnnxSequence;->closed:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lai/onnxruntime/OnnxSequence;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing an already closed sequence."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInfo()Lai/onnxruntime/SequenceInfo;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    return-object v0
.end method

.method public bridge synthetic getInfo()Lai/onnxruntime/ValueInfo;
    .locals 1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSequence;->getInfo()Lai/onnxruntime/SequenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSequence;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSequence;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    iget-boolean v1, v0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    if-eqz v1, :cond_0

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    iget-wide v7, p0, Lai/onnxruntime/OnnxSequence;->allocatorHandle:J

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lai/onnxruntime/OnnxSequence;->getMaps(JJJ)[Lai/onnxruntime/OnnxMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lai/onnxruntime/OnnxSequence$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    iget-object v0, v0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type in a sequence, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    iget-object v2, v2, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    iget-wide v7, p0, Lai/onnxruntime/OnnxSequence;->allocatorHandle:J

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lai/onnxruntime/OnnxSequence;->getTensors(JJJ)[Lai/onnxruntime/OnnxTensor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OnnxSequence;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnnxSequence(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    invoke-virtual {v1}, Lai/onnxruntime/SequenceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
