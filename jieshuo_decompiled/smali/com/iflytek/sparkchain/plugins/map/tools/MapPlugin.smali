.class public Lcom/iflytek/sparkchain/plugins/map/tools/MapPlugin;
.super Lcom/iflytek/sparkchain/plugins/base/BasePlugin;
.source "SourceFile"


# static fields
.field public static final MapSearchTool:Ljava/lang/String; = "map"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;->tools:Lcom/iflytek/sparkchain/core/Tools;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/map/tools/a;

    invoke-direct {v1}, Lcom/iflytek/sparkchain/plugins/map/tools/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;->append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;

    return-void
.end method
