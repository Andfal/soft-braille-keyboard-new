.class public Lcom/iflytek/sparkchain/core/AiRequest$Builder;
.super Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/AiRequest$BuilderApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder<",
        "Lcom/iflytek/sparkchain/core/AiRequest$Builder;",
        ">;",
        "Lcom/iflytek/sparkchain/core/AiRequest$BuilderApi;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public audio(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->audio(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public audio(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->c:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public audio(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->c:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public audioFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->audioFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public audioFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->c:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public audioFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->c:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public begin()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->BEGIN:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->status(Lcom/iflytek/sparkchain/core/AiStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/iflytek/sparkchain/core/AiRequest;
    .locals 3

    new-instance v0, Lcom/iflytek/sparkchain/core/AiRequest;

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iflytek/sparkchain/core/AiRequest;-><init>(ILcom/iflytek/sparkchain/core/AiRequest$1;)V

    return-object v0
.end method

.method public clear()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->clean()V

    return-object p0
.end method

.method public cont()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->CONTINUE:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->status(Lcom/iflytek/sparkchain/core/AiStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public customText(Ljava/lang/String;Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->customTextFile(Ljava/lang/String;[BI)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public customTextFile(Ljava/lang/String;[BI)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 7

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v4, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/c;->getValue()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/sparkchain/core/AiBuilder;->custom(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;II)V

    return-object p0
.end method

.method public dataStatus(Lcom/iflytek/sparkchain/core/DataStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/DataStatus;->next()Lcom/iflytek/sparkchain/core/AiStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    return-object p0
.end method

.method public desc(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    :cond_0
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

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/sparkchain/core/AiHelper;->newDesc(JLjava/lang/String;J)V

    return-object p0
.end method

.method public end()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->END:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->status(Lcom/iflytek/sparkchain/core/AiStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/iflytek/sparkchain/core/AiBuilder;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sparkchain/core/AiHelper;->delBuilder(J)V

    return-void
.end method

.method public header()Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;
    .locals 3

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sparkchain/core/AiHelper;->header(J)V

    new-instance v0, Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/AiRequest$HeaderHolder;-><init>(Lcom/iflytek/sparkchain/core/AiRequest$Builder;)V

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->image(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->d:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public image(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->d:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public imageFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->imageFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public imageFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->d:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public imageFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->d:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public once()Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->ONCE:Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->status(Lcom/iflytek/sparkchain/core/AiStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic param(Ljava/lang/String;D)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic param(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic param(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic param(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic param(Ljava/lang/String;Z)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic param(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic paramFalse(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->paramFalse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic paramFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->paramFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic paramFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->paramFile(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic paramTrue(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->paramTrue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-object p1
.end method

.method public payload(Lcom/iflytek/sparkchain/core/AiData;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    invoke-interface {p1, v0}, Lcom/iflytek/sparkchain/core/AiData;->syncDesc(I)V

    return-object p0
.end method

.method public service(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$ServiceHolder;
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->service(JLjava/lang/String;)V

    new-instance p1, Lcom/iflytek/sparkchain/core/AiRequest$ServiceHolder;

    invoke-direct {p1, p0}, Lcom/iflytek/sparkchain/core/AiRequest$ServiceHolder;-><init>(Lcom/iflytek/sparkchain/core/AiRequest$Builder;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public service(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Lcom/iflytek/sparkchain/core/AiRequest$ServiceHolder;
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v1, v1

    iget p2, p2, Lcom/iflytek/sparkchain/core/AiBuilder;->handle:I

    int-to-long v4, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper;->serviceParam(JLjava/lang/String;J)V

    new-instance p1, Lcom/iflytek/sparkchain/core/AiRequest$ServiceHolder;

    invoke-direct {p1, p0}, Lcom/iflytek/sparkchain/core/AiRequest$ServiceHolder;-><init>(Lcom/iflytek/sparkchain/core/AiRequest$Builder;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public status(Lcom/iflytek/sparkchain/core/AiStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->status:Lcom/iflytek/sparkchain/core/AiStatus;

    return-object p0
.end method

.method public text(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->text(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public text(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AEE"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->text(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public text(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public text(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public textFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->textFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public textFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public textFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public video(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->video(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public video(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->e:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public video(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->e:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public videoFile(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->videoFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public videoFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->e:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method

.method public videoFile(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiBuilder;->paramCount:I

    sget-object v0, Lcom/iflytek/sparkchain/core/b;->c:Lcom/iflytek/sparkchain/core/b;

    sget-object v1, Lcom/iflytek/sparkchain/core/c;->e:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiBuilder;->add(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/b;Lcom/iflytek/sparkchain/core/c;)V

    return-object p0
.end method
