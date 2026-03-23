.class public Lcom/iflytek/sparkchain/core/Memory$TokenMemory;
.super Lcom/iflytek/sparkchain/core/Memory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenMemory"
.end annotation


# instance fields
.field maxTokens:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/Memory;-><init>()V

    iput p1, p0, Lcom/iflytek/sparkchain/core/Memory$TokenMemory;->maxTokens:I

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "TokenMemory"

    return-object v0
.end method
