.class public Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Folder;
.super Lcom/iflytek/sparkchain/plugins/mail/MailFolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Folder"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic delete([J)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->delete([J)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getDetail(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->getDetail(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMsg(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->getMsg(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(J)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->load(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic move(Ljava/lang/String;[J)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->move(Ljava/lang/String;[J)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic readStatus([JZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->readStatus([JZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic save(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->save(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic search(Lorg/json/JSONObject;IIZ)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->search(Lorg/json/JSONObject;IIZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic searchByFrom(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->searchByFrom(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic searchBySubject(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->searchBySubject(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic searchByTo(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->searchByTo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic searchContacts(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->searchContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic star([JZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->star([JZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic sync([J)V
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->sync([J)V

    return-void
.end method

.method public bridge synthetic totalCount()I
    .locals 1

    invoke-super {p0}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->totalCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unreadCount()I
    .locals 1

    invoke-super {p0}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->unreadCount()I

    move-result v0

    return v0
.end method
