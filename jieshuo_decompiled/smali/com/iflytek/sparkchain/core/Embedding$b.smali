.class public Lcom/iflytek/sparkchain/core/Embedding$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/EmbeddingOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/Embedding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/Embedding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/Embedding$b;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Embedding$b;->c:Ljava/lang/String;

    return-void
.end method

.method public getErrCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/Embedding$b;->b:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Embedding$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Embedding$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getResultArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Embedding$b;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Embedding$b;->d:Ljava/lang/String;

    return-object v0
.end method
