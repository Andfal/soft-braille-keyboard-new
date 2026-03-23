.class Lcom/iflytek/sparkchain/plugins/mail/MailFolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->search(Lorg/json/JSONObject;IIZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljavax/mail/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/plugins/mail/MailFolder;

.field final synthetic val$isDesc:Z


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/MailFolder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder$1;->this$0:Lcom/iflytek/sparkchain/plugins/mail/MailFolder;

    iput-boolean p2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder$1;->val$isDesc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljavax/mail/Message;

    check-cast p2, Ljavax/mail/Message;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder$1;->compare(Ljavax/mail/Message;Ljavax/mail/Message;)I

    move-result p1

    return p1
.end method

.method public compare(Ljavax/mail/Message;Ljavax/mail/Message;)I
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder$1;->val$isDesc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
