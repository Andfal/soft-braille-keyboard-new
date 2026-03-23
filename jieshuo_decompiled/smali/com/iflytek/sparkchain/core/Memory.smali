.class public Lcom/iflytek/sparkchain/core/Memory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/Memory$TokenMemory;,
        Lcom/iflytek/sparkchain/core/Memory$WindowMemory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tokenMemory(I)Lcom/iflytek/sparkchain/core/Memory;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/Memory$TokenMemory;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Memory$TokenMemory;-><init>(I)V

    return-object v0
.end method

.method public static windowMemory(I)Lcom/iflytek/sparkchain/core/Memory;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/Memory$WindowMemory;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/Memory$WindowMemory;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "Memory"

    return-object v0
.end method
