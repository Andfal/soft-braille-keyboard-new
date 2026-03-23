.class public abstract Lcom/iflytek/sparkchain/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/AiData;


# instance fields
.field protected holder:Lcom/iflytek/sparkchain/core/AiDataHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iflytek/sparkchain/core/AiDataHolder<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ref(Lcom/iflytek/sparkchain/core/AiDataHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/sparkchain/core/AiDataHolder<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/a;->holder:Lcom/iflytek/sparkchain/core/AiDataHolder;

    return-void
.end method

.method public syncCtrl(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/a;->holder:Lcom/iflytek/sparkchain/core/AiDataHolder;

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->syncCtrl(I)V

    return-void
.end method

.method public syncDesc(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/a;->holder:Lcom/iflytek/sparkchain/core/AiDataHolder;

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/AiDataHolder;->syncDesc(I)V

    return-void
.end method
