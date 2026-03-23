.class public interface abstract Lai/onnxruntime/OnnxValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OnnxValue$OnnxValueType;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInfo()Lai/onnxruntime/ValueInfo;
.end method

.method public abstract getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract isClosed()Z
.end method
