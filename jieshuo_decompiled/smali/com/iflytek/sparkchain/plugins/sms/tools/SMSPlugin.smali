.class public Lcom/iflytek/sparkchain/plugins/sms/tools/SMSPlugin;
.super Lcom/iflytek/sparkchain/plugins/base/BasePlugin;
.source "SourceFile"


# static fields
.field public static final SMSTool:Ljava/lang/String; = "sms_tool"


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;-><init>()V

    new-instance v0, Lcom/iflytek/sparkchain/core/Tools;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/iflytek/sparkchain/plugins/base/BaseTool;

    new-instance v2, Lcom/iflytek/sparkchain/plugins/sms/tools/a;

    invoke-direct {v2}, Lcom/iflytek/sparkchain/plugins/sms/tools/a;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;-><init>([Lcom/iflytek/sparkchain/plugins/base/BaseTool;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;->tools:Lcom/iflytek/sparkchain/core/Tools;

    return-void
.end method
