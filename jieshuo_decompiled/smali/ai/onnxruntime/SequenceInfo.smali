.class public Lai/onnxruntime/SequenceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/onnxruntime/ValueInfo;


# instance fields
.field public final length:I

.field public final mapInfo:Lai/onnxruntime/MapInfo;

.field public final sequenceOfMaps:Z

.field public final sequenceType:Lai/onnxruntime/OnnxJavaType;


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    invoke-static {p2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object p1

    invoke-static {p1}, Lai/onnxruntime/OnnxJavaType;->mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;

    move-result-object p1

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    return-void
.end method

.method constructor <init>(ILai/onnxruntime/MapInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    iput-object p2, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    sget-object p1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    return-void
.end method

.method constructor <init>(ILai/onnxruntime/OnnxJavaType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    iput-object p2, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    return-void
.end method

.method constructor <init>(ILai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OnnxJavaType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    sget-object p1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    new-instance p1, Lai/onnxruntime/MapInfo;

    invoke-direct {p1, p2, p3}, Lai/onnxruntime/MapInfo;-><init>(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OnnxJavaType;)V

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    return-void
.end method


# virtual methods
.method public isSequenceOfMaps()Z
    .locals 1

    iget-boolean v0, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SequenceInfo(length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    const-string v2, ")"

    const-string v3, ",type="

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    invoke-virtual {v0}, Lai/onnxruntime/MapInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
