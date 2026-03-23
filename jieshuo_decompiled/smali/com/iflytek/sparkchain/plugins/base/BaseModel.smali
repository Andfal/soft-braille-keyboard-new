.class public abstract Lcom/iflytek/sparkchain/plugins/base/BaseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected toJsonString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lt1/e;

    invoke-direct {v0}, Lt1/e;-><init>()V

    invoke-virtual {v0, p0}, Lt1/e;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseModel;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
