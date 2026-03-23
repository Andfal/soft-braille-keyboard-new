.class public Lcom/iflytek/sparkchain/plugins/mail/tools/MailPlugin;
.super Lcom/iflytek/sparkchain/plugins/base/BasePlugin;
.source "SourceFile"


# static fields
.field public static final SearchEmail:Ljava/lang/String; = "find_email"

.field public static final SendEmail:Ljava/lang/String; = "send_email"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;->tools:Lcom/iflytek/sparkchain/core/Tools;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/mail/tools/SearchMail;

    invoke-direct {v1}, Lcom/iflytek/sparkchain/plugins/mail/tools/SearchMail;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;->append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;

    move-result-object v0

    new-instance v1, Lcom/iflytek/sparkchain/plugins/mail/tools/SendMail;

    invoke-direct {v1}, Lcom/iflytek/sparkchain/plugins/mail/tools/SendMail;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;->append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;->tools:Lcom/iflytek/sparkchain/core/Tools;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/mail/tools/SearchMail;

    invoke-direct {v1, p1}, Lcom/iflytek/sparkchain/plugins/mail/tools/SearchMail;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;->append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;

    move-result-object v0

    new-instance v1, Lcom/iflytek/sparkchain/plugins/mail/tools/SendMail;

    invoke-direct {v1, p1}, Lcom/iflytek/sparkchain/plugins/mail/tools/SendMail;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;->append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;

    return-void
.end method
