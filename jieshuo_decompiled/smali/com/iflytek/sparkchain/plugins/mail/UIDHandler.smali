.class Lcom/iflytek/sparkchain/plugins/mail/UIDHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;,
        Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Basis;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nextUIDArray(Lcom/sun/mail/imap/IMAPFolder;J)[J
    .locals 7

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getMessages()[Ljavax/mail/Message;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [J

    array-length v2, v0

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x1

    cmp-long v6, p1, v2

    if-gez v6, :cond_2

    array-length p1, v0

    sub-int/2addr p1, v5

    :goto_0
    if-ltz p1, :cond_1

    if-gt v5, v4, :cond_1

    aget-object p2, v0, p1

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Basis;->insertUID([JJ)[J

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    invoke-static {p0, v0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Basis;->searchIndex(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;J)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_3

    if-gt v5, v4, :cond_3

    aget-object p2, v0, p1

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Basis;->insertUID([JJ)[J

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method static syncUIDArray(Lcom/sun/mail/imap/IMAPFolder;[J)Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;
    .locals 11

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getMessages()[Ljavax/mail/Message;

    move-result-object v0

    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    new-array v4, v3, [J

    new-array v5, v3, [J

    if-nez v1, :cond_0

    new-instance p0, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;

    invoke-direct {p0, v4, v5}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;-><init>([J[J)V

    return-object p0

    :cond_0
    if-nez v2, :cond_1

    new-instance p0, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;

    invoke-direct {p0, v4, p1}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;-><init>([J[J)V

    return-object p0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    if-ne v1, v2, :cond_2

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, p1, v6

    add-int/lit8 v8, v2, -0x1

    aget-object v8, v0, v8

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5

    :cond_2
    add-int/lit8 v1, v1, -0x1

    aget-wide v6, p1, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-lez v1, :cond_3

    invoke-static {v4, v8, v9}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Basis;->insertUID([JJ)[J

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_5

    aget-wide v6, p1, v3

    invoke-static {p0, v0, v6, v7}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Basis;->binarySearch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;J)I

    move-result v2

    if-gez v2, :cond_4

    invoke-static {v5, v6, v7}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Basis;->insertUID([JJ)[J

    move-result-object v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;

    invoke-direct {p0, v4, v5}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;-><init>([J[J)V

    return-object p0
.end method
