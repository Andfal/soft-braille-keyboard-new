.class public final enum Lai/onnxruntime/providers/CoreMLFlags;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lai/onnxruntime/providers/OrtFlags;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/providers/CoreMLFlags;",
        ">;",
        "Lai/onnxruntime/providers/OrtFlags;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum CPU_AND_GPU:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum CPU_ONLY:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum CREATE_MLPROGRAM:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum ENABLE_ON_SUBGRAPH:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum ONLY_ALLOW_STATIC_INPUT_SHAPES:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum ONLY_ENABLE_DEVICE_WITH_ANE:Lai/onnxruntime/providers/CoreMLFlags;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v1, "CPU_ONLY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/providers/CoreMLFlags;->CPU_ONLY:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v1, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v4, "ENABLE_ON_SUBGRAPH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/providers/CoreMLFlags;->ENABLE_ON_SUBGRAPH:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v4, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v6, "ONLY_ENABLE_DEVICE_WITH_ANE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/providers/CoreMLFlags;->ONLY_ENABLE_DEVICE_WITH_ANE:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v6, Lai/onnxruntime/providers/CoreMLFlags;

    const/16 v8, 0x8

    const-string v9, "ONLY_ALLOW_STATIC_INPUT_SHAPES"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v8}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lai/onnxruntime/providers/CoreMLFlags;->ONLY_ALLOW_STATIC_INPUT_SHAPES:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v8, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v9, "CREATE_MLPROGRAM"

    const/16 v11, 0x10

    invoke-direct {v8, v9, v7, v11}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lai/onnxruntime/providers/CoreMLFlags;->CREATE_MLPROGRAM:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v9, Lai/onnxruntime/providers/CoreMLFlags;

    const/16 v11, 0x20

    const-string v12, "CPU_AND_GPU"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lai/onnxruntime/providers/CoreMLFlags;->CPU_AND_GPU:Lai/onnxruntime/providers/CoreMLFlags;

    const/4 v11, 0x6

    new-array v11, v11, [Lai/onnxruntime/providers/CoreMLFlags;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v10

    aput-object v8, v11, v7

    aput-object v9, v11, v13

    sput-object v11, Lai/onnxruntime/providers/CoreMLFlags;->$VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

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

    iput p3, p0, Lai/onnxruntime/providers/CoreMLFlags;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/providers/CoreMLFlags;
    .locals 1

    const-class v0, Lai/onnxruntime/providers/CoreMLFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/providers/CoreMLFlags;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/providers/CoreMLFlags;
    .locals 1

    sget-object v0, Lai/onnxruntime/providers/CoreMLFlags;->$VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

    invoke-virtual {v0}, [Lai/onnxruntime/providers/CoreMLFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/providers/CoreMLFlags;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lai/onnxruntime/providers/CoreMLFlags;->value:I

    return v0
.end method
