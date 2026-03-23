.class public Lcom/iflytek/sparkchain/core/AiResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private key:Ljava/lang/String;

.field private len:I

.field private status:I

.field private type:Lcom/iflytek/sparkchain/core/c;

.field private value:[B

.field private varType:Lcom/iflytek/sparkchain/core/VarType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cut([BII)[B
    .locals 2

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static gen(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiResponse;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    sget-object v1, Lcom/iflytek/sparkchain/core/VarType;->STRING:Lcom/iflytek/sparkchain/core/VarType;

    invoke-static {p0, p1, v0, v1}, Lcom/iflytek/sparkchain/core/AiResponse;->gen(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/c;Lcom/iflytek/sparkchain/core/VarType;)Lcom/iflytek/sparkchain/core/AiResponse;

    move-result-object p0

    return-object p0
.end method

.method public static gen(Ljava/lang/String;[BLcom/iflytek/sparkchain/core/c;Lcom/iflytek/sparkchain/core/VarType;)Lcom/iflytek/sparkchain/core/AiResponse;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiResponse;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/AiResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/iflytek/sparkchain/core/AiResponse;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/AiResponse;->setValue([B)V

    array-length p0, p1

    invoke-virtual {v0, p0}, Lcom/iflytek/sparkchain/core/AiResponse;->setLen(I)V

    invoke-virtual {v0, p2}, Lcom/iflytek/sparkchain/core/AiResponse;->setType(Lcom/iflytek/sparkchain/core/c;)V

    invoke-virtual {v0, p3}, Lcom/iflytek/sparkchain/core/AiResponse;->setVarType(Lcom/iflytek/sparkchain/core/VarType;)V

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLen()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiResponse;->len:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiResponse;->status:I

    return v0
.end method

.method public getType()Lcom/iflytek/sparkchain/core/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiResponse;->type:Lcom/iflytek/sparkchain/core/c;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiResponse;->value:[B

    return-object v0
.end method

.method public getVarType()Lcom/iflytek/sparkchain/core/VarType;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiResponse;->varType:Lcom/iflytek/sparkchain/core/VarType;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->key:Ljava/lang/String;

    return-void
.end method

.method public setKey([BII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiResponse;->cut([BII)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiResponse;->key:Ljava/lang/String;

    return-void
.end method

.method public setLen(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->len:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->status:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/sparkchain/core/c;->a(I)Lcom/iflytek/sparkchain/core/c;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->type:Lcom/iflytek/sparkchain/core/c;

    return-void
.end method

.method public setType(Lcom/iflytek/sparkchain/core/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->type:Lcom/iflytek/sparkchain/core/c;

    return-void
.end method

.method public setValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->value:[B

    return-void
.end method

.method public setValue([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiResponse;->cut([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->value:[B

    return-void
.end method

.method public setVarType(Lcom/iflytek/sparkchain/core/VarType;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->varType:Lcom/iflytek/sparkchain/core/VarType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AiOutput{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->type:Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", varType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiResponse;->varType:Lcom/iflytek/sparkchain/core/VarType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
