.class final Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OrtEnvCloser"
.end annotation


# instance fields
.field private final apiHandle:J

.field private final nativeHandle:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;->apiHandle:J

    iput-wide p3, p0, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;->nativeHandle:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;->apiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;->nativeHandle:J

    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/OrtEnvironment;->access$100(JJ)V
    :try_end_0
    .catch Lai/onnxruntime/OrtException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing OrtEnvironment, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
