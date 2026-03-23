.class public Lcom/iflytek/sparkchain/plugins/search/tools/SearchPlugin;
.super Lcom/iflytek/sparkchain/plugins/base/BasePlugin;
.source "SourceFile"


# static fields
.field public static final SearchTool:Ljava/lang/String; = "search"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;->tools:Lcom/iflytek/sparkchain/core/Tools;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;

    invoke-direct {v1}, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;->append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;

    return-void
.end method
