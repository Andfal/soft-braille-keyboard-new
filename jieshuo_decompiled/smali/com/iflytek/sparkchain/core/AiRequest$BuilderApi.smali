.class interface abstract Lcom/iflytek/sparkchain/core/AiRequest$BuilderApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BuilderApi"
.end annotation


# virtual methods
.method public abstract audio(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract audio(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract audio(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract audioFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract audioFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract audioFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract begin()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract build()Lcom/iflytek/sparkchain/core/AiRequest;
.end method

.method public abstract clear()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract cont()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract customText(Ljava/lang/String;Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract customTextFile(Ljava/lang/String;[BI)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract dataStatus(Lcom/iflytek/sparkchain/core/DataStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract desc(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract end()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract header()Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;
.end method

.method public abstract image(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract image(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract image(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract imageFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract imageFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract imageFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract once()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract param(Ljava/lang/String;D)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract param(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract param(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract param(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract param(Ljava/lang/String;Z)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract param(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract paramFalse(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract paramFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract paramFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract paramTrue(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract payload(Lcom/iflytek/sparkchain/core/AiData;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract service(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$ServiceHolder;
.end method

.method public abstract status(Lcom/iflytek/sparkchain/core/AiStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract text(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract text(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract text(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract text(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract textFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract textFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract textFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract video(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract video(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract video(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract videoFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract videoFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method

.method public abstract videoFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.end method
