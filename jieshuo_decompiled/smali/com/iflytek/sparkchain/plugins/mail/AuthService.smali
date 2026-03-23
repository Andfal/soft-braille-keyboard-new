.class final Lcom/iflytek/sparkchain/plugins/mail/AuthService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SparkChain"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    return-void
.end method


# virtual methods
.method public auth()Z
    .locals 8

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPHost:Ljava/lang/String;

    const/16 v2, 0x2713

    const-string v3, " "

    const/16 v4, 0x2712

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPPort:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getTransport(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Ljavax/mail/Transport;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/mail/Transport;->close()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v1, v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onAuth(ILjava/lang/String;)V

    :cond_1
    return v6

    :cond_2
    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error msg: SMTPHost: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v7, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPHost:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " config.SMTPPort: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v7, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPPort:Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onAuth(ILjava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v7, v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPHost:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPPort:Ljava/lang/Integer;

    if-eqz v7, :cond_5

    :try_start_1
    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v1, v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v1, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onAuth(ILjava/lang/String;)V

    :cond_4
    return v6

    :cond_5
    iget-object v1, v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error msg: IMAPHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v3, v3, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " config.IMAPPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v3, v3, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPPort:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onAuth(ILjava/lang/String;)V

    :cond_6
    :goto_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v0, :cond_7

    const-string v1, "Mail Auth success!"

    invoke-interface {v0, v6, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onAuth(ILjava/lang/String;)V

    :cond_7
    return v5

    :cond_8
    return v6
.end method
