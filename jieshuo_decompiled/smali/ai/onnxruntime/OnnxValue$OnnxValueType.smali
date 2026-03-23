.class public final enum Lai/onnxruntime/OnnxValue$OnnxValueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnnxValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxValue$OnnxValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_MAP:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_OPAQUE:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_OPTIONAL:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_SPARSETENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_UNKNOWN:Lai/onnxruntime/OnnxValue$OnnxValueType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v1, "ONNX_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_UNKNOWN:Lai/onnxruntime/OnnxValue$OnnxValueType;

    new-instance v1, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v3, "ONNX_TYPE_TENSOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    new-instance v3, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v5, "ONNX_TYPE_SEQUENCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    new-instance v5, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v7, "ONNX_TYPE_MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_MAP:Lai/onnxruntime/OnnxValue$OnnxValueType;

    new-instance v7, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v9, "ONNX_TYPE_OPAQUE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_OPAQUE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    new-instance v9, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v11, "ONNX_TYPE_SPARSETENSOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SPARSETENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    new-instance v11, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v13, "ONNX_TYPE_OPTIONAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_OPTIONAL:Lai/onnxruntime/OnnxValue$OnnxValueType;

    const/4 v13, 0x7

    new-array v13, v13, [Lai/onnxruntime/OnnxValue$OnnxValueType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lai/onnxruntime/OnnxValue$OnnxValueType;->$VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

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

    iput p3, p0, Lai/onnxruntime/OnnxValue$OnnxValueType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxValue$OnnxValueType;
    .locals 1

    const-class v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxValue$OnnxValueType;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->$VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

    invoke-virtual {v0}, [Lai/onnxruntime/OnnxValue$OnnxValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object v0
.end method
