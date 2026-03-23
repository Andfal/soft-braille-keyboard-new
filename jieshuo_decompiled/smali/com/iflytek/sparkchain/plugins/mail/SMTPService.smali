.class Lcom/iflytek/sparkchain/plugins/mail/SMTPService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    return-void
.end method

.method private forward(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;Ljava/lang/String;JLjava/lang/Runnable;Ljava/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    new-instance p5, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;

    iget-object p6, p0, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {p5, p6}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {p5, p2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;->getFolder(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;->getMsg(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->text:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    iget-object p2, p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;->content:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->send(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private reply(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;Ljava/lang/String;JLjava/lang/Runnable;Ljava/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    new-instance p5, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;

    iget-object p6, p0, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {p5, p6}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {p5, p2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;->getFolder(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;->getMsg(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->text:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    iget-object p2, p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;->content:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->send(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public send(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getTransport(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Ljavax/mail/Transport;

    move-result-object v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v2, p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toMimeMessage(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Ljavax/mail/internet/MimeMessage;

    move-result-object v2

    sget-object v3, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    iget-object v3, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->cc:[Ljava/lang/String;

    if-eqz v3, :cond_0

    array-length v3, v3

    if-eqz v3, :cond_0

    sget-object v3, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    :cond_0
    iget-object p1, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->bcc:[Ljava/lang/String;

    if-eqz p1, :cond_1

    array-length p1, p1

    if-eqz p1, :cond_1

    sget-object p1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v2, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljavax/mail/Transport;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljavax/mail/Transport;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v1, v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onFailure(ILjava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
