.class public abstract Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;
.super Lcom/iflytek/sparkchain/core/AiBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ParamBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/iflytek/sparkchain/core/AiBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiBuilder;-><init>()V

    return-void
.end method

.method private response()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clean()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/sparkchain/core/AiBuilder;->clean()V

    return-void
.end method

.method public param(Ljava/lang/String;D)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v2, v0

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/sparkchain/core/AiHelper;->newDouble(JLjava/lang/String;D)V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public param(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->newInteger(JLjava/lang/String;I)V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public param(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iflytek/sparkchain/core/AiRequest$Builder;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v2, v0

    iget p2, p2, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v5, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/sparkchain/core/AiHelper;->newBuilder(JLjava/lang/String;J)V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[B)V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public param(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->newBoolean(JLjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public param(Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[B)V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public paramFalse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public paramFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->paramFile(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public paramFile(Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->g:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->response()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public paramTrue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
