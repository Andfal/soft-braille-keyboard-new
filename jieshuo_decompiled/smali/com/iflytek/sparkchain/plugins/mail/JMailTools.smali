.class final Lcom/iflytek/sparkchain/plugins/mail/JMailTools;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 1

    const-string v0, "FUTONG"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getCcList([Ljavax/mail/Address;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavax/mail/Address;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    new-instance v4, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;

    invoke-direct {v4}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;-><init>()V

    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;->nickname:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getFlags(Ljavax/mail/Flags;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;-><init>()V

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;->isSeen:Z

    sget-object v1, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;->isStar:Z

    return-object v0
.end method

.method static getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object p0

    check-cast p0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object p1, p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    const-string v0, "@163.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v0, p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    const-string v1, "@126.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object p2, p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    const-string v1, "@yeah.net"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    new-instance p1, Lcom/iflytek/sparkchain/plugins/mail/a;

    invoke-direct {p1}, Lcom/iflytek/sparkchain/plugins/mail/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->open(I)V

    return-object p0
.end method

.method static getFrom([Ljavax/mail/Address;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljavax/mail/internet/InternetAddress;

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;->address:Ljava/lang/String;

    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;->nickname:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getMainBody(Lcom/sun/mail/imap/IMAPMessage;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMainBodyMap(Ljavax/mail/Part;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V

    const-string p0, "text/plain"

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string p0, "text/html"

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getMainBodyMap(Ljavax/mail/Part;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/mail/Part;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text/plain"

    invoke-interface {p0, v2}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "text/html"

    invoke-interface {p0, v0}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "multipart/*"

    invoke-interface {p0, v0}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/mail/Multipart;

    invoke-virtual {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMainBodyMap(Ljavax/mail/Part;Ljava/util/HashMap;)Ljava/util/HashMap;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method static getMsgDetail(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Message;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
    .locals 9

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;-><init>()V

    :try_start_0
    check-cast p1, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getSentDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getSubject()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFlags(Ljavax/mail/Flags;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFrom([Ljavax/mail/Address;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    move-result-object v6

    sget-object v7, Ljavax/mail/internet/MimeMessage$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p1, v7}, Lcom/sun/mail/imap/IMAPMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getToList([Ljavax/mail/Address;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Ljavax/mail/internet/MimeMessage$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p1, v8}, Lcom/sun/mail/imap/IMAPMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v8

    invoke-static {v8}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getCcList([Ljavax/mail/Address;)Ljava/util/List;

    move-result-object v8

    invoke-static {p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMainBody(Lcom/sun/mail/imap/IMAPMessage;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    move-result-object p1

    iput-wide v1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    iput-wide v3, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    iput-object p0, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    iput-object v5, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    iput-object v6, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    iput-object v7, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toList:Ljava/util/List;

    iput-object v8, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->ccList:Ljava/util/List;

    iput-object p1, v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method static getMsgHead(JLcom/sun/mail/imap/IMAPMessage;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPMessage;->getSentDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPMessage;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFlags(Ljavax/mail/Flags;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFrom([Ljavax/mail/Address;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    move-result-object v4

    sget-object v5, Ljavax/mail/internet/MimeMessage$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p2, v5}, Lcom/sun/mail/imap/IMAPMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getToList([Ljavax/mail/Address;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Ljavax/mail/internet/MimeMessage$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p2, v6}, Lcom/sun/mail/imap/IMAPMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getCcList([Ljavax/mail/Address;)Ljava/util/List;

    move-result-object p2

    new-instance v6, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    invoke-direct {v6}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;-><init>()V

    iput-wide p0, v6, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    iput-wide v0, v6, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    iput-object v2, v6, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    iput-object v3, v6, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    iput-object v4, v6, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    iput-object v5, v6, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toList:Ljava/util/List;

    iput-object p2, v6, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->ccList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getMsgHeads(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/mail/imap/IMAPFolder;",
            "[",
            "Ljavax/mail/Message;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSentDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v9

    invoke-static {v9}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFlags(Ljavax/mail/Flags;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    move-result-object v9

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFrom([Ljavax/mail/Address;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    move-result-object v3

    new-instance v10, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    invoke-direct {v10}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;-><init>()V

    iput-wide v4, v10, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    iput-wide v6, v10, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    iput-object v8, v10, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    iput-object v9, v10, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    iput-object v3, v10, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;
    .locals 3

    invoke-static {p0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toSession(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "imap"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getStore(Ljava/lang/String;)Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPHost:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    iget-object p0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sun/mail/imap/IMAPStore;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static getToList([Ljavax/mail/Address;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavax/mail/Address;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    new-instance v4, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;

    invoke-direct {v4}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;-><init>()V

    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;->nickname:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getTransport(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Ljavax/mail/Transport;
    .locals 3

    invoke-static {p0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toSession(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "smtp"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPHost:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    iget-object p0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Ljavax/mail/Transport;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static toAddresses([Ljava/lang/String;)[Ljavax/mail/Address;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Ljavax/mail/internet/InternetAddress;

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    new-instance v3, Ljavax/mail/internet/InternetAddress;

    aget-object v4, p0, v0

    invoke-direct {v3, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-array p0, v0, [Ljavax/mail/internet/InternetAddress;

    return-object p0
.end method

.method static toMimeMessage(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Ljavax/mail/internet/MimeMessage;
    .locals 4

    invoke-static {p0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toSession(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Ljavax/mail/Session;

    move-result-object v0

    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    iget-object v2, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->to:[Ljava/lang/String;

    invoke-static {v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toAddresses([Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    iget-object v0, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->cc:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v2, Ljavax/mail/internet/MimeMessage$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toAddresses([Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_0
    iget-object v0, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->bcc:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Ljavax/mail/internet/MimeMessage$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toAddresses([Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_1
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    iget-object p0, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->subject:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {v1, p0, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p0}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    iget-object p0, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->html:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->html:Ljava/lang/String;

    const-string v2, "text/html; charset=UTF-8"

    invoke-virtual {v1, p0, v2}, Ljavax/mail/internet/MimeMessage;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->html:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    iget-object p0, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;->text:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {v1, p0, v0}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object p0, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    const/4 p1, 0x1

    invoke-virtual {v1, p0, p1}, Ljavax/mail/internet/MimeMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    return-object v1
.end method

.method static toMsg(JLcom/sun/mail/imap/IMAPMessage;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
    .locals 8

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPMessage;->getSentDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPMessage;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFlags(Ljavax/mail/Flags;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFrom([Ljavax/mail/Address;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    move-result-object v4

    sget-object v5, Ljavax/mail/internet/MimeMessage$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p2, v5}, Lcom/sun/mail/imap/IMAPMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getToList([Ljavax/mail/Address;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Ljavax/mail/internet/MimeMessage$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p2, v6}, Lcom/sun/mail/imap/IMAPMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getCcList([Ljavax/mail/Address;)Ljava/util/List;

    move-result-object v6

    invoke-static {p2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMainBody(Lcom/sun/mail/imap/IMAPMessage;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    move-result-object p2

    new-instance v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    invoke-direct {v7}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;-><init>()V

    iput-wide p0, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    iput-object v2, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    iput-wide v0, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    iput-object v3, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    iput-object v4, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    iput-object v5, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toList:Ljava/util/List;

    iput-object v6, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->ccList:Ljava/util/List;

    iput-object p2, v7, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    return-object v7
.end method

.method static toSession(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Ljavax/mail/Session;
    .locals 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPPort:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "mail.smtp.auth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPHost:Ljava/lang/String;

    const-string v3, "mail.smtp.host"

    invoke-virtual {v0, v3, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPPort:Ljava/lang/Integer;

    const-string v3, "mail.smtp.port"

    invoke-virtual {v0, v3, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    const-string v3, "@outlook.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->account:Ljava/lang/String;

    const-string v3, "@office365.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPSSLEnable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mail.smtp.ssl.enable"

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->SMTPSSLEnable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "mail.smtp.starttls.enable"

    invoke-virtual {v0, v3, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mail.smtp.starttls.required"

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPHost:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPPort:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "mail.imap.auth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPHost:Ljava/lang/String;

    const-string v2, "mail.imap.host"

    invoke-virtual {v0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPPort:Ljava/lang/Integer;

    const-string v2, "mail.imap.port"

    invoke-virtual {v0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->IMAPSSLEnable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "mail.imap.ssl.enable"

    invoke-virtual {v0, v1, p0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "mail.imap.partialfetch"

    const-string v1, "false"

    invoke-virtual {v0, p0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "mail.imaps.partialfetch"

    invoke-virtual {v0, p0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    invoke-static {v0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;)Ljavax/mail/Session;

    move-result-object p0

    return-object p0
.end method
