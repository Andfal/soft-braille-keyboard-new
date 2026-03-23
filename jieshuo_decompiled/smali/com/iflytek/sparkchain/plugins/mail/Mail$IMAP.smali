.class public Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;
.super Lcom/iflytek/sparkchain/plugins/mail/IMAPService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/mail/Mail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMAP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$DraftBox;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultFolders()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->getDefaultFolders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDraftBox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$DraftBox;
    .locals 1

    invoke-super {p0}, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->getDraftBox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$DraftBox;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFolder(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->getFolder(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getInbox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;
    .locals 1

    invoke-super {p0}, Lcom/iflytek/sparkchain/plugins/mail/IMAPService;->getInbox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;

    move-result-object v0

    return-object v0
.end method
