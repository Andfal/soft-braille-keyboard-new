.class Lcom/iflytek/sparkchain/plugins/mail/IMAPService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    return-void
.end method


# virtual methods
.method public getDefaultFolders()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/mail/Folder;->list()[Ljavax/mail/Folder;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljavax/mail/Folder;->list()[Ljavax/mail/Folder;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFolders failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object v2, v2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onFailure(ILjava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getDraftBox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$DraftBox;
    .locals 3

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$DraftBox;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    const-string v2, "Drafts"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$DraftBox;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {v0, v1, p1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInbox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;
    .locals 3

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    const-string v2, "INBOX"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Ljava/lang/String;)V

    return-object v0
.end method
