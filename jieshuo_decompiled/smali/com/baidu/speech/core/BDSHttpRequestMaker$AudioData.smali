.class Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/core/BDSHttpRequestMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioData"
.end annotation


# instance fields
.field public mData:[B

.field public mIsLast:Z

.field public mType:I

.field final synthetic this$0:Lcom/baidu/speech/core/BDSHttpRequestMaker;


# direct methods
.method public constructor <init>(Lcom/baidu/speech/core/BDSHttpRequestMaker;I[BZ)V
    .locals 6

    iput-object p1, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->this$0:Lcom/baidu/speech/core/BDSHttpRequestMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->mType:I

    iput-boolean p4, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->mIsLast:Z

    array-length p4, p3

    const/4 v0, 0x1

    add-int/2addr p4, v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    and-int/lit16 v3, p4, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    shr-int/lit8 v3, p4, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    shr-int/lit8 v3, p4, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    shr-int/lit8 v3, p4, 0x18

    int-to-byte v3, v3

    const/4 v5, 0x3

    aput-byte v3, v2, v5

    new-array v3, v0, [B

    int-to-byte p2, p2

    aput-byte p2, v3, v4

    add-int/2addr p4, v1

    new-array p2, p4, [B

    iput-object p2, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->mData:[B

    invoke-static {v2, v4, p2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->mData:[B

    invoke-static {v3, v4, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->mData:[B

    const/4 p4, 0x5

    array-length v0, p3

    invoke-static {p3, v4, p2, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p2, "BDSHttpRequestMaker"

    invoke-static {p2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {}, Lcom/baidu/speech/core/BDSHttpRequestMaker;->access$200()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AudioData : mType = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->mType:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " | mIsLast = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->mIsLast:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " | mData = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/baidu/speech/core/BDSHttpRequestMaker$AudioData;->mData:[B

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/baidu/speech/core/BDSHttpRequestMaker;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
