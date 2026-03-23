.class public final enum Lai/onnxruntime/TensorInfo$OnnxTensorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/TensorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnnxTensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/TensorInfo$OnnxTensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field private static final values:[Lai/onnxruntime/TensorInfo$OnnxTensorType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v1, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v3, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v3, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v5, "ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v5, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v7, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v7, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v9, "ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v9, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v11, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v11, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v13, "ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v13, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v15, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v15, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v14, "ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v14, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v12, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v12, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v10, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v10, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v8, "ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v8, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v6, "ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v4, "ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v2, "ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v6, "ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v4, "ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v2, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v6, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v4, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v2, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const/16 v2, 0x15

    new-array v6, v2, [Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v4, v6, v0

    sput-object v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;->$VALUES:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-array v0, v2, [Lai/onnxruntime/TensorInfo$OnnxTensorType;

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->values:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-static {}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->values()[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;->values:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v5, v3, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .locals 2

    if-lez p0, :cond_0

    sget-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->values:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0
.end method

.method public static mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .locals 1

    sget-object v0, Lai/onnxruntime/TensorInfo$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_0
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_1
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_2
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_3
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_4
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_5
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_6
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_7
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_8
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_9
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_a
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .locals 1

    const-class v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .locals 1

    sget-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->$VALUES:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-virtual {v0}, [Lai/onnxruntime/TensorInfo$OnnxTensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object v0
.end method
