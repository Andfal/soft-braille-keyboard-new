.class public interface abstract Lcom/vivo/speechsdk/module/api/security/ISignTool;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract generateSignature(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract hash(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract nonce(I)Ljava/lang/String;
.end method

.method public abstract sign([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sign([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method
