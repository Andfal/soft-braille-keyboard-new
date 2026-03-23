.class public final Lai/onnxruntime/providers/OrtCUDAProviderOptions;
.super Lai/onnxruntime/providers/StringConfigProviderOptions;
.source "SourceFile"


# static fields
.field private static final PROVIDER:Lai/onnxruntime/OrtProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtProvider;->CUDA:Lai/onnxruntime/OrtProvider;

    sput-object v0, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lai/onnxruntime/providers/OrtCUDAProviderOptions;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sget-object v0, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    new-instance v1, Lai/onnxruntime/providers/a;

    invoke-direct {v1}, Lai/onnxruntime/providers/a;-><init>()V

    invoke-static {v0, v1}, Lai/onnxruntime/OrtProviderOptions;->loadLibraryAndCreate(Lai/onnxruntime/OrtProvider;Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lai/onnxruntime/providers/StringConfigProviderOptions;-><init>(J)V

    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lai/onnxruntime/providers/StringConfigProviderOptions;->options:Ljava/util/Map;

    const-string v1, "device_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lai/onnxruntime/OrtProviderOptions;->close()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device id must be non-negative, received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic c()J
    .locals 2

    invoke-static {}, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native create(J)J
.end method

.method private static synthetic lambda$new$0()J
    .locals 2

    invoke-static {}, Lai/onnxruntime/OrtProviderOptions;->getApiHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->create(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lai/onnxruntime/providers/StringConfigProviderOptions;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected native applyToNative(JJ[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method protected native close(JJ)V
.end method

.method public bridge synthetic getOptionsString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lai/onnxruntime/providers/StringConfigProviderOptions;->getOptionsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Lai/onnxruntime/OrtProvider;
    .locals 1

    sget-object v0, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    return-object v0
.end method

.method public bridge synthetic parseOptionsString(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lai/onnxruntime/providers/StringConfigProviderOptions;->parseOptionsString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lai/onnxruntime/providers/StringConfigProviderOptions;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
