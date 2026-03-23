.class public final enum Lai/onnxruntime/OrtProvider;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtProvider;

.field public static final enum ACL:Lai/onnxruntime/OrtProvider;

.field public static final enum ARM_NN:Lai/onnxruntime/OrtProvider;

.field public static final enum AZURE:Lai/onnxruntime/OrtProvider;

.field public static final enum CORE_ML:Lai/onnxruntime/OrtProvider;

.field public static final enum CPU:Lai/onnxruntime/OrtProvider;

.field public static final enum CUDA:Lai/onnxruntime/OrtProvider;

.field public static final enum DIRECT_ML:Lai/onnxruntime/OrtProvider;

.field public static final enum DNNL:Lai/onnxruntime/OrtProvider;

.field public static final enum MI_GRAPH_X:Lai/onnxruntime/OrtProvider;

.field public static final enum NNAPI:Lai/onnxruntime/OrtProvider;

.field public static final enum OPEN_VINO:Lai/onnxruntime/OrtProvider;

.field public static final enum QNN:Lai/onnxruntime/OrtProvider;

.field public static final enum RK_NPU:Lai/onnxruntime/OrtProvider;

.field public static final enum ROCM:Lai/onnxruntime/OrtProvider;

.field public static final enum TENSOR_RT:Lai/onnxruntime/OrtProvider;

.field public static final enum VITIS_AI:Lai/onnxruntime/OrtProvider;

.field public static final enum WEBGPU:Lai/onnxruntime/OrtProvider;

.field public static final enum XNNPACK:Lai/onnxruntime/OrtProvider;

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lai/onnxruntime/OrtProvider;

    const-string v1, "CPUExecutionProvider"

    const-string v2, "CPU"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/onnxruntime/OrtProvider;->CPU:Lai/onnxruntime/OrtProvider;

    new-instance v1, Lai/onnxruntime/OrtProvider;

    const-string v2, "CUDAExecutionProvider"

    const-string v4, "CUDA"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lai/onnxruntime/OrtProvider;->CUDA:Lai/onnxruntime/OrtProvider;

    new-instance v2, Lai/onnxruntime/OrtProvider;

    const-string v4, "DnnlExecutionProvider"

    const-string v6, "DNNL"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lai/onnxruntime/OrtProvider;->DNNL:Lai/onnxruntime/OrtProvider;

    new-instance v4, Lai/onnxruntime/OrtProvider;

    const-string v6, "OpenVINOExecutionProvider"

    const-string v8, "OPEN_VINO"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lai/onnxruntime/OrtProvider;->OPEN_VINO:Lai/onnxruntime/OrtProvider;

    new-instance v6, Lai/onnxruntime/OrtProvider;

    const-string v8, "VitisAIExecutionProvider"

    const-string v10, "VITIS_AI"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lai/onnxruntime/OrtProvider;->VITIS_AI:Lai/onnxruntime/OrtProvider;

    new-instance v8, Lai/onnxruntime/OrtProvider;

    const-string v10, "TensorrtExecutionProvider"

    const-string v12, "TENSOR_RT"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lai/onnxruntime/OrtProvider;->TENSOR_RT:Lai/onnxruntime/OrtProvider;

    new-instance v10, Lai/onnxruntime/OrtProvider;

    const-string v12, "NnapiExecutionProvider"

    const-string v14, "NNAPI"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lai/onnxruntime/OrtProvider;->NNAPI:Lai/onnxruntime/OrtProvider;

    new-instance v12, Lai/onnxruntime/OrtProvider;

    const-string v14, "RknpuExecutionProvider"

    const-string v15, "RK_NPU"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lai/onnxruntime/OrtProvider;->RK_NPU:Lai/onnxruntime/OrtProvider;

    new-instance v14, Lai/onnxruntime/OrtProvider;

    const-string v15, "DmlExecutionProvider"

    const-string v13, "DIRECT_ML"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lai/onnxruntime/OrtProvider;->DIRECT_ML:Lai/onnxruntime/OrtProvider;

    new-instance v13, Lai/onnxruntime/OrtProvider;

    const-string v15, "MIGraphXExecutionProvider"

    const-string v11, "MI_GRAPH_X"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lai/onnxruntime/OrtProvider;->MI_GRAPH_X:Lai/onnxruntime/OrtProvider;

    new-instance v11, Lai/onnxruntime/OrtProvider;

    const-string v15, "ACLExecutionProvider"

    const-string v9, "ACL"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lai/onnxruntime/OrtProvider;->ACL:Lai/onnxruntime/OrtProvider;

    new-instance v9, Lai/onnxruntime/OrtProvider;

    const-string v15, "ArmNNExecutionProvider"

    const-string v7, "ARM_NN"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lai/onnxruntime/OrtProvider;->ARM_NN:Lai/onnxruntime/OrtProvider;

    new-instance v7, Lai/onnxruntime/OrtProvider;

    const-string v15, "ROCMExecutionProvider"

    const-string v5, "ROCM"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lai/onnxruntime/OrtProvider;->ROCM:Lai/onnxruntime/OrtProvider;

    new-instance v5, Lai/onnxruntime/OrtProvider;

    const-string v15, "CoreMLExecutionProvider"

    const-string v3, "CORE_ML"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lai/onnxruntime/OrtProvider;->CORE_ML:Lai/onnxruntime/OrtProvider;

    new-instance v3, Lai/onnxruntime/OrtProvider;

    const-string v15, "XnnpackExecutionProvider"

    const-string v7, "XNNPACK"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lai/onnxruntime/OrtProvider;->XNNPACK:Lai/onnxruntime/OrtProvider;

    new-instance v7, Lai/onnxruntime/OrtProvider;

    const-string v15, "AzureExecutionProvider"

    const-string v5, "AZURE"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lai/onnxruntime/OrtProvider;->AZURE:Lai/onnxruntime/OrtProvider;

    new-instance v5, Lai/onnxruntime/OrtProvider;

    const-string v15, "QNNExecutionProvider"

    const-string v3, "QNN"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lai/onnxruntime/OrtProvider;->QNN:Lai/onnxruntime/OrtProvider;

    new-instance v3, Lai/onnxruntime/OrtProvider;

    const-string v15, "WebGpuExecutionProvider"

    const-string v7, "WEBGPU"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lai/onnxruntime/OrtProvider;->WEBGPU:Lai/onnxruntime/OrtProvider;

    const/16 v7, 0x12

    new-array v7, v7, [Lai/onnxruntime/OrtProvider;

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    const/16 v0, 0xb

    aput-object v9, v7, v0

    const/16 v0, 0xc

    aput-object v16, v7, v0

    const/16 v0, 0xd

    aput-object v17, v7, v0

    const/16 v0, 0xe

    aput-object v18, v7, v0

    const/16 v0, 0xf

    aput-object v19, v7, v0

    const/16 v0, 0x10

    aput-object v20, v7, v0

    aput-object v3, v7, v5

    sput-object v7, Lai/onnxruntime/OrtProvider;->$VALUES:[Lai/onnxruntime/OrtProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lai/onnxruntime/OrtProvider;->values()[Lai/onnxruntime/OrtProvider;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    invoke-static {}, Lai/onnxruntime/OrtProvider;->values()[Lai/onnxruntime/OrtProvider;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    iget-object v5, v2, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    return-void
.end method

.method public static mapFromName(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;
    .locals 3

    sget-object v0, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/onnxruntime/OrtProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown execution provider - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;
    .locals 1

    const-class v0, Lai/onnxruntime/OrtProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OrtProvider;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtProvider;
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtProvider;->$VALUES:[Lai/onnxruntime/OrtProvider;

    invoke-virtual {v0}, [Lai/onnxruntime/OrtProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OrtProvider;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    return-object v0
.end method
