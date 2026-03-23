.class public Lcom/iflytek/sparkchain/core/AiRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/AiRequest$VarType;,
        Lcom/iflytek/sparkchain/core/AiRequest$Builder;,
        Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;,
        Lcom/iflytek/sparkchain/core/AiRequest$ServiceHolder;,
        Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;,
        Lcom/iflytek/sparkchain/core/AiRequest$BuilderApi;
    }
.end annotation


# instance fields
.field private handle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiRequest;->handle:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/iflytek/sparkchain/core/AiRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/AiRequest;-><init>(I)V

    return-void
.end method

.method public static builder()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiRequest;->handle:I

    return v0
.end method
