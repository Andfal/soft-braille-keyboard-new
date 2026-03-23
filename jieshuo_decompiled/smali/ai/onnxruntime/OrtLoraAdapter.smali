.class public final Lai/onnxruntime/OrtLoraAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private closed:Z

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/onnxruntime/OrtLoraAdapter;->closed:Z

    iput-wide p1, p0, Lai/onnxruntime/OrtLoraAdapter;->nativeHandle:J

    return-void
.end method

.method private static native close(JJ)V
.end method

.method public static create(Ljava/lang/String;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lai/onnxruntime/OrtLoraAdapter;->create(Ljava/lang/String;Lai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;

    move-result-object p0

    return-object p0
.end method

.method static create(Ljava/lang/String;Lai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    :goto_0
    new-instance p1, Lai/onnxruntime/OrtLoraAdapter;

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v2, v3, p0, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;->createLoraAdapter(JLjava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;-><init>(J)V

    return-object p1
.end method

.method public static create(Ljava/nio/ByteBuffer;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lai/onnxruntime/OrtLoraAdapter;->create(Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;

    move-result-object p0

    return-object p0
.end method

.method static create(Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 9

    const-string v0, "LoRA buffer must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    :goto_0
    move-wide v7, v0

    new-instance p1, Lai/onnxruntime/OrtLoraAdapter;

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    move-object v4, p0

    invoke-static/range {v2 .. v8}, Lai/onnxruntime/OrtLoraAdapter;->createLoraAdapterFromBuffer(JLjava/nio/ByteBuffer;IIJ)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;-><init>(J)V

    return-object p1

    :cond_1
    new-instance p0, Lai/onnxruntime/OrtException;

    const-string p1, "ByteBuffer is not direct."

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lai/onnxruntime/OrtException;

    const-string p1, "Invalid LoRA buffer, no elements remaining."

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create([B)Lai/onnxruntime/OrtLoraAdapter;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lai/onnxruntime/OrtLoraAdapter;->create([BLai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;

    move-result-object p0

    return-object p0
.end method

.method static create([BLai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 4

    const-string v0, "LoRA array must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    :goto_0
    new-instance p1, Lai/onnxruntime/OrtLoraAdapter;

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v2, v3, p0, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;->createLoraAdapterFromArray(J[BJ)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;-><init>(J)V

    return-object p1
.end method

.method private static native createLoraAdapter(JLjava/lang/String;J)J
.end method

.method private static native createLoraAdapterFromArray(J[BJ)J
.end method

.method private static native createLoraAdapterFromBuffer(JLjava/nio/ByteBuffer;IIJ)J
.end method


# virtual methods
.method checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OrtLoraAdapter;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed OrtLoraAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, Lai/onnxruntime/OrtLoraAdapter;->closed:Z

    if-nez v0, :cond_0

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtLoraAdapter;->nativeHandle:J

    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/OrtLoraAdapter;->close(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtLoraAdapter;->closed:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to close an already closed OrtLoraAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lai/onnxruntime/OrtLoraAdapter;->nativeHandle:J

    return-wide v0
.end method
