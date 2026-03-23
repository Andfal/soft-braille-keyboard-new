.class public Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;
.super Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder<",
        "Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final builder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/AiRequest$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;-><init>()V

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;->builder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget p1, p1, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    return-void
.end method


# virtual methods
.method public end()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;->builder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object v0
.end method
