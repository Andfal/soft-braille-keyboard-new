.class public Lai/onnxruntime/TensorInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/onnxruntime/ValueInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/TensorInfo$OnnxTensorType;
    }
.end annotation


# static fields
.field public static final MAX_DIMENSIONS:I = 0x8


# instance fields
.field final dimensionNames:[Ljava/lang/String;

.field private final hasNames:Z

.field final numElements:J

.field public final onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field final shape:[J

.field public final type:Lai/onnxruntime/OnnxJavaType;


# direct methods
.method constructor <init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    iput-object p3, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-static {p1}, Lai/onnxruntime/TensorInfo;->elementCount([J)J

    move-result-wide p1

    iput-wide p1, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    return-void
.end method

.method constructor <init>([J[Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    invoke-static {p3}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object p2

    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-static {p2}, Lai/onnxruntime/OnnxJavaType;->mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;

    move-result-object p2

    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p1}, Lai/onnxruntime/TensorInfo;->elementCount([J)J

    move-result-wide p1

    iput-wide p1, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lai/onnxruntime/TensorInfo;->lambda$toString$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructFromBuffer(Ljava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo;
    .locals 6

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-eq p2, v0, :cond_2

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    if-eq p2, v0, :cond_2

    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    iget p0, p2, Lai/onnxruntime/OnnxJavaType;->size:I

    int-to-long v4, p0

    div-long v4, v2, v4

    cmp-long p0, v0, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shape "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requires "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " elements but the buffer has "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " elements."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Lai/onnxruntime/TensorInfo;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    invoke-static {p2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    return-object p0

    :cond_2
    new-instance p0, Lai/onnxruntime/OrtException;

    const-string p1, "Cannot create a tensor from a string or unknown buffer."

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static constructFromJavaArray(Ljava/lang/Object;)Lai/onnxruntime/TensorInfo;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lai/onnxruntime/OnnxJavaType;->mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;

    move-result-object p0

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    if-eq p0, v1, :cond_0

    new-instance v0, Lai/onnxruntime/TensorInfo;

    new-array v1, v2, [J

    invoke-static {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    return-object v0

    :cond_0
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to a OnnxTensor."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create an OnnxTensor from a base type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/16 v3, 0x8

    if-gt v1, v3, :cond_5

    invoke-static {v0}, Lai/onnxruntime/OnnxJavaType;->mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;

    move-result-object v0

    new-array v1, v1, [J

    invoke-static {v1, v2, p0}, Lai/onnxruntime/TensorInfo;->extractShape([JILjava/lang/Object;)V

    new-instance p0, Lai/onnxruntime/TensorInfo;

    invoke-static {v0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    return-object p0

    :cond_5
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create an OnnxTensor with more than 8 dimensions. Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dimensions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static constructFromSparseTensor(Lai/onnxruntime/OnnxSparseTensor$SparseTensor;)Lai/onnxruntime/TensorInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(",
            "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
            "TT;>;)",
            "Lai/onnxruntime/TensorInfo;"
        }
    .end annotation

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getDenseShape()[J

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide v1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getValues()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    new-instance v1, Lai/onnxruntime/TensorInfo;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getType()Lai/onnxruntime/OnnxJavaType;

    move-result-object v2

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getType()Lai/onnxruntime/OnnxJavaType;

    move-result-object p0

    invoke-static {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    return-object v1

    :cond_0
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shape "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", has at most "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " elements but the buffer has "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " elements."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static elementCount([J)J
    .locals 5

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-wide v3, p0, v2

    mul-long v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private static extractShape([JILjava/lang/Object;)V
    .locals 6

    array-length v0, p0

    if-eq v0, p1, :cond_3

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    aget-wide v1, p0, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    int-to-long v1, v0

    aput-wide v1, p0, p1

    goto :goto_0

    :cond_0
    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    add-int/lit8 v2, p1, 0x1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lai/onnxruntime/TensorInfo;->extractShape([JILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied array is ragged, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p0, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", found "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Supplied array has a zero dimension at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", all dimensions must be positive"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method private static synthetic lambda$toString$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\"\""

    :cond_0
    return-object p0
.end method

.method private validateShape()Z
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->validateShape([J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDimensionNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNumElements()J
    .locals 2

    iget-wide v0, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    return-wide v0
.end method

.method public getShape()[J
    .locals 2

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public isScalar()Z
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeCarrier()Ljava/lang/Object;
    .locals 5

    invoke-direct {p0}, Lai/onnxruntime/TensorInfo;->validateShape()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This tensor is not representable in Java, it\'s too big - shape = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lai/onnxruntime/TensorInfo$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lai/onnxruntime/OrtException;

    const-string v1, "Can\'t construct a carrier for an invalid type."

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newBooleanArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newLongArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newIntArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newShortArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newByteArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newDoubleArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newFloatArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TensorInfo(javaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",onnxType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",dimNames=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    invoke-static {v0}, Lai/onnxruntime/q;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lai/onnxruntime/v;

    invoke-direct {v2}, Lai/onnxruntime/v;-><init>()V

    invoke-static {v0, v2}, Lai/onnxruntime/s;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v2, ","

    invoke-static {v2}, Lai/onnxruntime/t;->a(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v0, v2}, Lai/onnxruntime/u;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
