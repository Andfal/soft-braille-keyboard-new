.class public final enum Lai/onnxruntime/OrtException$OrtErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrtErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtException$OrtErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_ENGINE_ERROR:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_INVALID_ARGUMENT:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_INVALID_GRAPH:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_INVALID_PROTOBUF:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_MODEL_LOADED:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_NOT_IMPLEMENTED:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_NO_MODEL:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_NO_SUCHFILE:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_OK:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_RUNTIME_EXCEPTION:Lai/onnxruntime/OrtException$OrtErrorCode;

.field private static final values:[Lai/onnxruntime/OrtException$OrtErrorCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lai/onnxruntime/OrtException$OrtErrorCode;

    const/4 v1, -0x1

    const-string v2, "ORT_JAVA_UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v1, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v2, "ORT_OK"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_OK:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v2, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v5, "ORT_FAIL"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v5, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v7, "ORT_INVALID_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_INVALID_ARGUMENT:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v7, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v9, "ORT_NO_SUCHFILE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_NO_SUCHFILE:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v9, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v11, "ORT_NO_MODEL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_NO_MODEL:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v11, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v13, "ORT_ENGINE_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_ENGINE_ERROR:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v13, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v15, "ORT_RUNTIME_EXCEPTION"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_RUNTIME_EXCEPTION:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v15, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v14, "ORT_INVALID_PROTOBUF"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_INVALID_PROTOBUF:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v14, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v12, "ORT_MODEL_LOADED"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_MODEL_LOADED:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v12, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v10, "ORT_NOT_IMPLEMENTED"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_NOT_IMPLEMENTED:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v10, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v8, "ORT_INVALID_GRAPH"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_INVALID_GRAPH:Lai/onnxruntime/OrtException$OrtErrorCode;

    new-instance v8, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v6, "ORT_EP_FAIL"

    const/16 v3, 0xc

    invoke-direct {v8, v6, v3, v4}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const/16 v6, 0xd

    new-array v6, v6, [Lai/onnxruntime/OrtException$OrtErrorCode;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

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

    aput-object v10, v6, v4

    aput-object v8, v6, v3

    sput-object v6, Lai/onnxruntime/OrtException$OrtErrorCode;->$VALUES:[Lai/onnxruntime/OrtException$OrtErrorCode;

    new-array v0, v3, [Lai/onnxruntime/OrtException$OrtErrorCode;

    sput-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->values:[Lai/onnxruntime/OrtException$OrtErrorCode;

    invoke-static {}, Lai/onnxruntime/OrtException$OrtErrorCode;->values()[Lai/onnxruntime/OrtException$OrtErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

    if-eq v2, v4, :cond_0

    sget-object v4, Lai/onnxruntime/OrtException$OrtErrorCode;->values:[Lai/onnxruntime/OrtException$OrtErrorCode;

    iget v5, v2, Lai/onnxruntime/OrtException$OrtErrorCode;->value:I

    aput-object v2, v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
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

    iput p3, p0, Lai/onnxruntime/OrtException$OrtErrorCode;->value:I

    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OrtException$OrtErrorCode;
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->values:[Lai/onnxruntime/OrtException$OrtErrorCode;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtException$OrtErrorCode;
    .locals 1

    const-class v0, Lai/onnxruntime/OrtException$OrtErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OrtException$OrtErrorCode;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtException$OrtErrorCode;
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->$VALUES:[Lai/onnxruntime/OrtException$OrtErrorCode;

    invoke-virtual {v0}, [Lai/onnxruntime/OrtException$OrtErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OrtException$OrtErrorCode;

    return-object v0
.end method
