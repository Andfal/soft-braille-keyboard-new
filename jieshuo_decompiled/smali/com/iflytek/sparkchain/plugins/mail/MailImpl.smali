.class public Lcom/iflytek/sparkchain/plugins/mail/MailImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private authSuccess:Z

.field private config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->authSuccess:Z

    const-string v0, "SparkChain"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->initMail()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->authSuccess:Z

    return-void
.end method

.method private initMail()Z
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->verify()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail;->auth(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Z

    move-result v0

    return v0
.end method

.method private verify()Z
    .locals 5

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->nickname:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->password:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->nickname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPHost:Ljava/lang/String;

    const-string v3, "mail config info error"

    const/16 v4, 0x2712

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPHost:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPPort:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPPort:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, v4, v3}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onAuth(ILjava/lang/String;)V

    :cond_4
    return v2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, v4, v3}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onAuth(ILjava/lang/String;)V

    :cond_6
    return v2

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v0, :cond_8

    const/16 v1, 0x2711

    const-string v3, "mail user info error"

    invoke-interface {v0, v1, v3}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onAuth(ILjava/lang/String;)V

    :cond_8
    return v2
.end method


# virtual methods
.method public getDetail(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;->getInbox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;->getDetail(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object p1

    return-object p1
.end method

.method public isAuthSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->authSuccess:Z

    return v0
.end method

.method public parseSendMailContent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "text"

    const-string v1, "plugins"

    const-string v2, "payload"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse sent_email json  failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SparkChain"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public searchContact(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;->getInbox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;->searchContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchMail(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SparkChain"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;->getInbox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;->search(Lorg/json/JSONObject;IIZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchMail(Lorg/json/JSONObject;IIZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "IIZ)",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SparkChain"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;->getInbox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;->search(Lorg/json/JSONObject;IIZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public sendEmail(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z
    .locals 3

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$SMTP;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$SMTP;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SparkChain"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$SMTP;->send(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z

    move-result p1

    return p1
.end method
