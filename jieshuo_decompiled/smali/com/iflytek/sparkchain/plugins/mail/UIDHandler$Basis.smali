.class Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Basis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/mail/UIDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Basis"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;J)I
    .locals 6

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-lez v5, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_0
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-gez v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static deleteUID([JJ)[J
    .locals 4

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    array-length p2, p0

    add-int/lit8 v0, p2, -0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v3

    invoke-static {p0, v0, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method static insertUID([JJ)[J
    .locals 3

    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-wide p1, v1, v0

    return-object v1
.end method

.method static searchIndex(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;J)I
    .locals 7

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :cond_0
    if-gt v1, v2, :cond_3

    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-lez v6, :cond_1

    add-int/lit8 v2, v3, -0x1

    if-ltz v2, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-gez v5, :cond_0

    return v2

    :cond_1
    aget-object v1, p1, v3

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v4

    cmp-long v1, v4, p2

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    if-ne v1, v0, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-gez v5, :cond_0

    return v1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    return v3

    :cond_3
    const/4 p0, -0x1

    return p0
.end method
