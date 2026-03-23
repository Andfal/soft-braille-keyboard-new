.class public Lai/onnxruntime/OnnxTensor;
.super Lai/onnxruntime/OnnxTensorLike;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final buffer:Ljava/nio/Buffer;

.field private final ownsBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lai/onnxruntime/OnnxTensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxTensor;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(JJLai/onnxruntime/TensorInfo;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V

    return-void
.end method

.method constructor <init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lai/onnxruntime/OnnxTensorLike;-><init>(JJLai/onnxruntime/TensorInfo;)V

    iput-object p6, p0, Lai/onnxruntime/OnnxTensor;->buffer:Ljava/nio/Buffer;

    iput-boolean p7, p0, Lai/onnxruntime/OnnxTensor;->ownsBuffer:Z

    return-void
.end method

.method private castBuffer(Ljava/nio/Buffer;)Ljava/nio/Buffer;
    .locals 3

    sget-object v0, Lai/onnxruntime/OnnxTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    return-object p1

    :pswitch_1
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    return-object p1

    :pswitch_2
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    return-object p1

    :pswitch_3
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-static {p1}, Lai/onnxruntime/platform/Fp16Conversions;->convertFp16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-static {p1}, Lai/onnxruntime/platform/Fp16Conversions;->convertFp16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1

    :pswitch_4
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-static {p1}, Lai/onnxruntime/platform/Fp16Conversions;->convertBf16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-static {p1}, Lai/onnxruntime/platform/Fp16Conversions;->convertBf16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1

    :pswitch_5
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    return-object p1

    :pswitch_6
    instance-of v0, p1, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p1

    return-object p1

    :pswitch_7
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    return-object p1

    :cond_6
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid buffer type for cast operation, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " expected something convertible to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object p1, p1, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private native close(JJ)V
.end method

.method private static native createString(JJLjava/lang/String;)J
.end method

.method private static native createStringTensor(JJ[Ljava/lang/Object;[J)J
.end method

.method private static createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-static {v2, p0}, Lai/onnxruntime/OrtUtil;->prepareBuffer(Ljava/nio/Buffer;Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OrtUtil$BufferTuple;

    move-result-object v2

    iget-object v3, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    move-object/from16 v12, p3

    invoke-static {v3, v12, p0}, Lai/onnxruntime/TensorInfo;->constructFromBuffer(Ljava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo;

    move-result-object v0

    new-instance v3, Lai/onnxruntime/OnnxTensor;

    sget-wide v4, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v6, v1, Lai/onnxruntime/OrtAllocator;->handle:J

    iget-object v8, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    iget v9, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->pos:I

    iget-wide v10, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->byteSize:J

    iget-object v13, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v13, v13, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    invoke-static/range {v4 .. v13}, Lai/onnxruntime/OnnxTensor;->createTensorFromBuffer(JJLjava/nio/Buffer;IJ[JI)J

    move-result-wide v5

    iget-wide v7, v1, Lai/onnxruntime/OrtAllocator;->handle:J

    iget-object v10, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    iget-boolean v11, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->isCopy:Z

    move-object v4, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v11}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V

    return-object v3
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {p2 .. p2}, Lai/onnxruntime/TensorInfo;->constructFromJavaArray(Ljava/lang/Object;)Lai/onnxruntime/TensorInfo;

    move-result-object v8

    iget-object v2, v8, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v3, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-ne v2, v3, :cond_1

    iget-object v2, v8, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v2, v2

    if-nez v2, :cond_0

    new-instance v2, Lai/onnxruntime/OnnxTensor;

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v5, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v1}, Lai/onnxruntime/OnnxTensor;->createString(JJLjava/lang/String;)J

    move-result-wide v4

    iget-wide v6, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object v2

    :cond_0
    new-instance v2, Lai/onnxruntime/OnnxTensor;

    sget-wide v9, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v11, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    invoke-static/range {p2 .. p2}, Lai/onnxruntime/OrtUtil;->flattenString(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static/range {v9 .. v14}, Lai/onnxruntime/OnnxTensor;->createStringTensor(JJ[Ljava/lang/Object;[J)J

    move-result-wide v4

    iget-wide v6, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object v2

    :cond_1
    iget-object v3, v8, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v3, v3

    if-nez v3, :cond_3

    invoke-static {v2, v1}, Lai/onnxruntime/OrtUtil;->convertBoxedPrimitiveToBuffer(Lai/onnxruntime/OnnxJavaType;Ljava/lang/Object;)Ljava/nio/Buffer;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert a boxed primitive to an array, this is an error with the ORT Java API, please report this message & stack trace. JavaType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", object = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v8, v1}, Lai/onnxruntime/OrtUtil;->convertArrayToBuffer(Lai/onnxruntime/TensorInfo;Ljava/lang/Object;)Ljava/nio/Buffer;

    move-result-object v1

    :goto_0
    new-instance v2, Lai/onnxruntime/OnnxTensor;

    sget-wide v9, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v11, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    const/4 v14, 0x0

    iget-object v3, v8, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    iget v3, v3, Lai/onnxruntime/OnnxJavaType;->size:I

    int-to-long v3, v3

    iget-wide v5, v8, Lai/onnxruntime/TensorInfo;->numElements:J

    mul-long v15, v3, v5

    iget-object v3, v8, Lai/onnxruntime/TensorInfo;->shape:[J

    iget-object v4, v8, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v4, v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v13, v1

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-static/range {v9 .. v18}, Lai/onnxruntime/OnnxTensor;->createTensorFromBuffer(JJLjava/nio/Buffer;IJ[JI)J

    move-result-wide v4

    iget-wide v6, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    const/4 v10, 0x1

    move-object v3, v2

    move-object v9, v1

    invoke-direct/range {v3 .. v10}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V

    return-object v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to create an OnnxTensor with a closed OrtAllocator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, p1, p2, p3, v0}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;
    .locals 0

    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p4, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0

    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0

    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0

    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0

    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ShortBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;
    .locals 0

    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-eq p4, p0, :cond_1

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-eq p4, p0, :cond_1

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    if-ne p4, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only int16, float16 or bfloat16 tensors can be created from ShortBuffer."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p4, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;
    .locals 12

    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance v5, Lai/onnxruntime/TensorInfo;

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    sget-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-direct {v5, p3, p0, v0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v6, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v8, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v10, p2

    move-object v11, p3

    invoke-static/range {v6 .. v11}, Lai/onnxruntime/OnnxTensor;->createStringTensor(JJ[Ljava/lang/Object;[J)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ShortBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 2

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, v0, p1, p2, v1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ShortBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ShortBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ShortBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method private static native createTensorFromBuffer(JJLjava/nio/Buffer;IJ[JI)J
.end method

.method private static duplicate(Ljava/nio/Buffer;)Ljava/nio/Buffer;
    .locals 3

    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/nio/ShortBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->duplicate()Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/nio/LongBuffer;

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->duplicate()Ljava/nio/LongBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->duplicate()Ljava/nio/DoubleBuffer;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown buffer type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native getBool(JJ)Z
.end method

.method private getBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private native getBuffer(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native getByte(JJI)B
.end method

.method private native getDouble(JJ)D
.end method

.method private native getFloat(JJI)F
.end method

.method private native getInt(JJI)I
.end method

.method private native getLong(JJI)J
.end method

.method private native getShort(JJI)S
.end method

.method private native getString(JJ)Ljava/lang/String;
.end method

.method private native getStringArray(JJ[Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z

    if-nez v0, :cond_0

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->close(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lai/onnxruntime/OnnxTensor;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing an already closed tensor."

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

.method public getBufferRef()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->buffer:Ljava/nio/Buffer;

    invoke-static {v0}, Lai/onnxruntime/OnnxTensor;->duplicate(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/f;->a(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 2

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/DoubleBuffer;->allocate(I)Ljava/nio/DoubleBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    invoke-virtual {v1}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->convertFp16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->convertBf16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntBuffer()Ljava/nio/IntBuffer;
    .locals 2

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongBuffer()Ljava/nio/LongBuffer;
    .locals 2

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/LongBuffer;->allocate(I)Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortBuffer()Ljava/nio/ShortBuffer;
    .locals 2

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method public getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v0}, Lai/onnxruntime/TensorInfo;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lai/onnxruntime/OnnxTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lai/onnxruntime/OrtException;

    const-string v1, "Extracting the value of an invalid Tensor."

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getLong(JJI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getInt(JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->fp16ToFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->bf16ToFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getByte(JJI)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getBool(JJ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_8
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getDouble(JJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_9
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getFloat(JJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v0}, Lai/onnxruntime/TensorInfo;->makeCarrier()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->getNumElements()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v2, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-ne v1, v2, :cond_1

    sget-wide v4, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v6, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    move-object v3, p0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lai/onnxruntime/OnnxTensor;->getStringArray(JJ[Ljava/lang/String;)V

    iget-object v2, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v2, v2, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    invoke-static {v1, v2}, Lai/onnxruntime/OrtUtil;->reshape([Ljava/lang/String;[J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lai/onnxruntime/OnnxTensor;->buffer:Ljava/nio/Buffer;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lai/onnxruntime/OnnxTensor;->duplicate(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lai/onnxruntime/OnnxTensor;->castBuffer(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v1

    iget-object v2, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lai/onnxruntime/OrtUtil;->fillArrayFromBuffer(Lai/onnxruntime/TensorInfo;Ljava/nio/Buffer;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ownsBuffer()Z
    .locals 1

    iget-boolean v0, p0, Lai/onnxruntime/OnnxTensor;->ownsBuffer:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnnxTensor(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
