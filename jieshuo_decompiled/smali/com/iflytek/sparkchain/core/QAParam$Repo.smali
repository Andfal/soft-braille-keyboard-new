.class public Lcom/iflytek/sparkchain/core/QAParam$Repo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/QAParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Repo"
.end annotation


# instance fields
.field private score:D
    .annotation runtime Lu1/c;
        value = "score"
    .end annotation
.end field

.field private top_k:I
    .annotation runtime Lu1/c;
        value = "top_k"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScore()D
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Repo;->score:D

    return-wide v0
.end method

.method public getTop_k()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Repo;->top_k:I

    return v0
.end method

.method public setScore(D)V
    .locals 0

    iput-wide p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Repo;->score:D

    return-void
.end method

.method public setTop_k(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Repo;->top_k:I

    return-void
.end method
