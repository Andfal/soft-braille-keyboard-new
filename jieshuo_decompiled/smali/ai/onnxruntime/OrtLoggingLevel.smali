.class public final enum Lai/onnxruntime/OrtLoggingLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtLoggingLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_ERROR:Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_FATAL:Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_INFO:Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_VERBOSE:Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final values:[Lai/onnxruntime/OrtLoggingLevel;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lai/onnxruntime/OrtLoggingLevel;

    const-string v1, "ORT_LOGGING_LEVEL_VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_VERBOSE:Lai/onnxruntime/OrtLoggingLevel;

    new-instance v1, Lai/onnxruntime/OrtLoggingLevel;

    const-string v3, "ORT_LOGGING_LEVEL_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_INFO:Lai/onnxruntime/OrtLoggingLevel;

    new-instance v3, Lai/onnxruntime/OrtLoggingLevel;

    const-string v5, "ORT_LOGGING_LEVEL_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    new-instance v5, Lai/onnxruntime/OrtLoggingLevel;

    const-string v7, "ORT_LOGGING_LEVEL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_ERROR:Lai/onnxruntime/OrtLoggingLevel;

    new-instance v7, Lai/onnxruntime/OrtLoggingLevel;

    const-string v9, "ORT_LOGGING_LEVEL_FATAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_FATAL:Lai/onnxruntime/OrtLoggingLevel;

    const/4 v9, 0x5

    new-array v11, v9, [Lai/onnxruntime/OrtLoggingLevel;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    sput-object v11, Lai/onnxruntime/OrtLoggingLevel;->$VALUES:[Lai/onnxruntime/OrtLoggingLevel;

    const-class v0, Lai/onnxruntime/OrtLoggingLevel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->logger:Ljava/util/logging/Logger;

    new-array v0, v9, [Lai/onnxruntime/OrtLoggingLevel;

    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->values:[Lai/onnxruntime/OrtLoggingLevel;

    invoke-static {}, Lai/onnxruntime/OrtLoggingLevel;->values()[Lai/onnxruntime/OrtLoggingLevel;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lai/onnxruntime/OrtLoggingLevel;->values:[Lai/onnxruntime/OrtLoggingLevel;

    iget v5, v3, Lai/onnxruntime/OrtLoggingLevel;->value:I

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

    iput p3, p0, Lai/onnxruntime/OrtLoggingLevel;->value:I

    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OrtLoggingLevel;
    .locals 3

    if-ltz p0, :cond_0

    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->values:[Lai/onnxruntime/OrtLoggingLevel;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown logging level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " setting to ORT_LOGGING_LEVEL_VERBOSE"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    sget-object p0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_VERBOSE:Lai/onnxruntime/OrtLoggingLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtLoggingLevel;
    .locals 1

    const-class v0, Lai/onnxruntime/OrtLoggingLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OrtLoggingLevel;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtLoggingLevel;
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->$VALUES:[Lai/onnxruntime/OrtLoggingLevel;

    invoke-virtual {v0}, [Lai/onnxruntime/OrtLoggingLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OrtLoggingLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lai/onnxruntime/OrtLoggingLevel;->value:I

    return v0
.end method
