.class final Lai/onnxruntime/OnnxRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ONNXRUNTIME_JNI_LIBRARY_NAME:Ljava/lang/String; = "onnxruntime4j_jni"

.field static final ONNXRUNTIME_LIBRARY_CUDA_NAME:Ljava/lang/String; = "onnxruntime_providers_cuda"

.field static final ONNXRUNTIME_LIBRARY_DNNL_NAME:Ljava/lang/String; = "onnxruntime_providers_dnnl"

.field static final ONNXRUNTIME_LIBRARY_NAME:Ljava/lang/String; = "onnxruntime"

.field static final ONNXRUNTIME_LIBRARY_OPENVINO_NAME:Ljava/lang/String; = "onnxruntime_providers_openvino"

.field static final ONNXRUNTIME_LIBRARY_ROCM_NAME:Ljava/lang/String; = "onnxruntime_providers_rocm"

.field static final ONNXRUNTIME_LIBRARY_SHARED_NAME:Ljava/lang/String; = "onnxruntime_providers_shared"

.field static final ONNXRUNTIME_LIBRARY_TENSORRT_NAME:Ljava/lang/String; = "onnxruntime_providers_tensorrt"

.field static final ONNXRUNTIME_NATIVE_PATH:Ljava/lang/String; = "onnxruntime.native.path"

.field private static final ORT_API_VERSION_1:I = 0x1

.field private static final ORT_API_VERSION_11:I = 0xb

.field private static final ORT_API_VERSION_13:I = 0xd

.field private static final ORT_API_VERSION_14:I = 0xe

.field private static final ORT_API_VERSION_2:I = 0x2

.field private static final ORT_API_VERSION_3:I = 0x3

.field private static final ORT_API_VERSION_7:I = 0x7

.field private static final ORT_API_VERSION_8:I = 0x8

.field private static final ORT_TRAINING_API_VERSION_1:I = 0x1

.field private static final OS_ARCH_STR:Ljava/lang/String;

.field private static final extractedSharedProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static libraryDirPathProperty:Ljava/lang/String;

.field private static loaded:Z

.field private static final logger:Ljava/util/logging/Logger;

.field static ortApiHandle:J

.field static ortTrainingApiHandle:J

.field static providers:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static tempDirectory:Ljava/nio/file/Path;

.field static trainingEnabled:Z

.field private static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->initOsArch()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->OS_ARCH_STR:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lai/onnxruntime/OnnxRuntime;->loaded:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->extractedSharedProviders:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanUp(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    return-void
.end method

.method static extractCUDA()Z
    .locals 1

    const-string v0, "onnxruntime_providers_cuda"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static extractDNNL()Z
    .locals 1

    const-string v0, "onnxruntime_providers_dnnl"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static extractFromResources(Ljava/lang/String;)Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/ai/onnxruntime/native/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lai/onnxruntime/OnnxRuntime;->OS_ARCH_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    invoke-static {v2, v0}, Lai/onnxruntime/l;->a(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/i;->a(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    const-class v2, Lai/onnxruntime/OnnxRuntime;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v2, :cond_1

    :try_start_1
    invoke-static {}, Lai/onnxruntime/m;->a()Ljava/util/Optional;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object v1

    :cond_1
    :try_start_3
    sget-object v3, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to load native library \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' from resource path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " copying to "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    sget-object v1, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extracted native library \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' from resource path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-static {v0}, Lai/onnxruntime/n;->a(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_b
    sget-object v2, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract library \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' from the resources"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lai/onnxruntime/m;->a()Ljava/util/Optional;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object p0

    :goto_3
    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    throw p0
.end method

.method static extractOpenVINO()Z
    .locals 1

    const-string v0, "onnxruntime_providers_openvino"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized extractProviderLibrary(Ljava/lang/String;)Z
    .locals 7

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    sget-object v1, Lai/onnxruntime/OnnxRuntime;->extractedSharedProviders:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    monitor-exit v0

    return v4

    :cond_1
    :try_start_2
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->extractFromResources(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v3}, Lai/onnxruntime/g;->a(Ljava/util/Optional;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v4

    :cond_2
    :try_start_3
    sget-object v3, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/String;

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Lai/onnxruntime/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lai/onnxruntime/i;->a(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return v4

    :cond_3
    monitor-exit v0

    return v2

    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static extractROCM()Z
    .locals 1

    const-string v0, "onnxruntime_providers_rocm"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static extractTensorRT()Z
    .locals 1

    const-string v0, "onnxruntime_providers_tensorrt"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native getAvailableProviders(J)[Ljava/lang/String;
.end method

.method static declared-synchronized init()V
    .locals 8

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lai/onnxruntime/OnnxRuntime;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "onnxruntime-java"

    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3}, Lai/onnxruntime/k;->a(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v1

    :goto_0
    sput-object v1, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "onnxruntime.native.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    const-string v1, "onnxruntime_providers_shared"

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    const-string v1, "onnxruntime"

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->load(Ljava/lang/String;)V

    const-string v1, "onnxruntime4j_jni"

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->load(Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->initialiseAPIBase(I)J

    move-result-wide v3

    sput-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    invoke-static {v3, v4, v1}, Lai/onnxruntime/OnnxRuntime;->initialiseTrainingAPIBase(JI)J

    move-result-wide v3

    sput-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    const/4 v1, 0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    :cond_2
    sput-boolean v2, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v2, v3}, Lai/onnxruntime/OnnxRuntime;->initialiseProviders(J)Ljava/util/EnumSet;

    move-result-object v2

    sput-object v2, Lai/onnxruntime/OnnxRuntime;->providers:Ljava/util/EnumSet;

    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->initialiseVersion()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lai/onnxruntime/OnnxRuntime;->version:Ljava/lang/String;

    sput-boolean v1, Lai/onnxruntime/OnnxRuntime;->loaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lai/onnxruntime/i;->a(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There is a mismatch between the ORT class files and the ORT native library, and the native library could not be loaded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_5
    sget-object v2, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lai/onnxruntime/i;->a(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static initOsArch()Ljava/lang/String;
    .locals 5

    const-string v0, "os.name"

    const-string v1, "generic"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "darwin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "win"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "nux"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "linux"

    goto :goto_1

    :cond_2
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "android"

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported os:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    const-string v3, "osx"

    :goto_1
    const-string v0, "os.arch"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    move-object v0, v1

    goto :goto_4

    :cond_6
    const-string v1, "aarch64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "ppc64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported arch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_3
    const-string v0, "x64"

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native initialiseAPIBase(I)J
.end method

.method private static initialiseProviders(J)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lai/onnxruntime/OnnxRuntime;->getAvailableProviders(J)[Ljava/lang/String;

    move-result-object p0

    const-class p1, Lai/onnxruntime/OrtProvider;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lai/onnxruntime/OrtProvider;->mapFromName(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static native initialiseTrainingAPIBase(JI)J
.end method

.method private static native initialiseVersion()Ljava/lang/String;
.end method

.method static isAndroid()Z
    .locals 2

    const-string v0, "java.vendor"

    const-string v1, "generic"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Android Project"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static load(Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onnxruntime4j_jni"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onnxruntime.native."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".skip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping load of native library \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    const-string v3, "\' not found at "

    const-string v4, "Native library \'"

    const-string v5, "\' from specified path"

    const-string v6, "\' from specified path: "

    const-string v7, "Attempting to load native library \'"

    const-string v8, "Loaded native library \'"

    if-eqz v2, :cond_3

    sget-object v1, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v6, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Lai/onnxruntime/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/i;->a(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->extractFromResources(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/g;->a(Ljava/util/Optional;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lai/onnxruntime/j;->a(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' from resource path"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from library path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method private static mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jnilib"

    const-string v1, "dylib"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static version()Ljava/lang/String;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->version:Ljava/lang/String;

    return-object v0
.end method
