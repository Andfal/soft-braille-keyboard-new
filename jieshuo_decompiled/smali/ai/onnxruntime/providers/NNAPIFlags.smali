.class public final enum Lai/onnxruntime/providers/NNAPIFlags;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lai/onnxruntime/providers/OrtFlags;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/providers/NNAPIFlags;",
        ">;",
        "Lai/onnxruntime/providers/OrtFlags;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum CPU_DISABLED:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum CPU_ONLY:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum USE_FP16:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum USE_NCHW:Lai/onnxruntime/providers/NNAPIFlags;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lai/onnxruntime/providers/NNAPIFlags;

    const-string v1, "USE_FP16"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/providers/NNAPIFlags;->USE_FP16:Lai/onnxruntime/providers/NNAPIFlags;

    new-instance v1, Lai/onnxruntime/providers/NNAPIFlags;

    const-string v4, "USE_NCHW"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/providers/NNAPIFlags;->USE_NCHW:Lai/onnxruntime/providers/NNAPIFlags;

    new-instance v4, Lai/onnxruntime/providers/NNAPIFlags;

    const-string v6, "CPU_DISABLED"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/providers/NNAPIFlags;->CPU_DISABLED:Lai/onnxruntime/providers/NNAPIFlags;

    new-instance v6, Lai/onnxruntime/providers/NNAPIFlags;

    const/16 v8, 0x8

    const-string v9, "CPU_ONLY"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v8}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lai/onnxruntime/providers/NNAPIFlags;->CPU_ONLY:Lai/onnxruntime/providers/NNAPIFlags;

    new-array v7, v7, [Lai/onnxruntime/providers/NNAPIFlags;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v10

    sput-object v7, Lai/onnxruntime/providers/NNAPIFlags;->$VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

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

    iput p3, p0, Lai/onnxruntime/providers/NNAPIFlags;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/providers/NNAPIFlags;
    .locals 1

    const-class v0, Lai/onnxruntime/providers/NNAPIFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/providers/NNAPIFlags;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/providers/NNAPIFlags;
    .locals 1

    sget-object v0, Lai/onnxruntime/providers/NNAPIFlags;->$VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

    invoke-virtual {v0}, [Lai/onnxruntime/providers/NNAPIFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/providers/NNAPIFlags;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lai/onnxruntime/providers/NNAPIFlags;->value:I

    return v0
.end method
