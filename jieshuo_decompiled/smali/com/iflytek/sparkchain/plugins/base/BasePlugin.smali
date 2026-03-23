.class public Lcom/iflytek/sparkchain/plugins/base/BasePlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public tools:Lcom/iflytek/sparkchain/core/Tools;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/sparkchain/core/Tools;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/Tools;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;->tools:Lcom/iflytek/sparkchain/core/Tools;

    return-void
.end method
