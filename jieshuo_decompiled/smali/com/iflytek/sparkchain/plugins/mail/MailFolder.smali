.class Lcom/iflytek/sparkchain/plugins/mail/MailFolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ANSWERED:Ljava/lang/String;

.field private final BCC:Ljava/lang/String;

.field private final CC:Ljava/lang/String;

.field private final DELETED:Ljava/lang/String;

.field private final FLAGGED:Ljava/lang/String;

.field private final FROM:Ljava/lang/String;

.field private final Mail_Subject:Ljava/lang/String;

.field private final Mail_body:Ljava/lang/String;

.field private final Mail_from:Ljava/lang/String;

.field private final Mail_to:Ljava/lang/String;

.field private final ON:Ljava/lang/String;

.field private final SEEN:Ljava/lang/String;

.field private final SUBJECT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TEXT:Ljava/lang/String;

.field private final TO:Ljava/lang/String;

.field private final UNSEEN:Ljava/lang/String;

.field private final config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

.field private final folderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SparkChain"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->TAG:Ljava/lang/String;

    const-string v0, "seen"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->SEEN:Ljava/lang/String;

    const-string v0, "unseen"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->UNSEEN:Ljava/lang/String;

    const-string v0, "flagged"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->FLAGGED:Ljava/lang/String;

    const-string v0, "answered"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->ANSWERED:Ljava/lang/String;

    const-string v0, "deleted"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->DELETED:Ljava/lang/String;

    const-string v0, "on_date"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->ON:Ljava/lang/String;

    const-string v0, "subject"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->SUBJECT:Ljava/lang/String;

    const-string v1, "text"

    iput-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->TEXT:Ljava/lang/String;

    const-string v1, "from"

    iput-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->FROM:Ljava/lang/String;

    const-string v2, "TO"

    iput-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->TO:Ljava/lang/String;

    const-string v2, "CC"

    iput-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->CC:Ljava/lang/String;

    const-string v2, "BCC"

    iput-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->BCC:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->Mail_Subject:Ljava/lang/String;

    const-string v0, "to"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->Mail_to:Ljava/lang/String;

    const-string v0, "body"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->Mail_body:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->Mail_from:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iput-object p2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    return-void
.end method

.method private keyAdapter(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contact"

    const-string v1, "from"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tags"

    const-string v1, "flagged"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "title_contain"

    const-string v1, "subject"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "content_contain"

    const-string v1, "text"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SparkChain"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private parseTerm(Lorg/json/JSONObject;)[Ljavax/mail/search/SearchTerm;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "seen"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-direct {v1, v3}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    new-instance v3, Ljavax/mail/search/FlagTerm;

    invoke-direct {v3, v1, v2}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "unseen"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljavax/mail/Flags;

    sget-object v4, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-direct {v1, v4}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    new-instance v4, Ljavax/mail/search/FlagTerm;

    invoke-direct {v4, v1, v3}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "flagged"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljavax/mail/Flags;

    sget-object v4, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-direct {v1, v4}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    new-instance v4, Ljavax/mail/search/FlagTerm;

    invoke-direct {v4, v1, v3}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "answered"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljavax/mail/Flags;

    sget-object v4, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-direct {v1, v4}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    new-instance v4, Ljavax/mail/search/FlagTerm;

    invoke-direct {v4, v1, v2}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljavax/mail/Flags;

    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-direct {v1, v4}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    new-instance v4, Ljavax/mail/search/FlagTerm;

    invoke-direct {v4, v1, v2}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "on_date"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "SparkChain"

    const-string v6, "exception: "

    if-eqz v4, :cond_5

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x6

    invoke-virtual {v7, v4, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    new-instance v8, Ljavax/mail/search/SentDateTerm;

    invoke-direct {v8, v4, v1}, Ljavax/mail/search/SentDateTerm;-><init>(ILjava/util/Date;)V

    new-instance v1, Ljavax/mail/search/SentDateTerm;

    invoke-direct {v1, v2, v7}, Ljavax/mail/search/SentDateTerm;-><init>(ILjava/util/Date;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const-string v1, "subject"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "null"

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljavax/mail/search/SubjectTerm;

    invoke-direct {v2, v1}, Ljavax/mail/search/SubjectTerm;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/mail/search/BodyTerm;

    invoke-direct {v2, v1}, Ljavax/mail/search/BodyTerm;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    const-string v1, "from"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :try_start_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/mail/search/FromStringTerm;

    invoke-direct {v2, v1}, Ljavax/mail/search/FromStringTerm;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v7, Lorg/json/JSONArray;

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    new-instance v9, Ljavax/mail/search/FromStringTerm;

    invoke-direct {v9, v8}, Ljavax/mail/search/FromStringTerm;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljavax/mail/search/OrTerm;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljavax/mail/search/SearchTerm;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/mail/search/SearchTerm;

    invoke-direct {v1, v2}, Ljavax/mail/search/OrTerm;-><init>([Ljavax/mail/search/SearchTerm;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    const-string v1, "TO"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :try_start_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/mail/search/RecipientStringTerm;

    sget-object v7, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {v2, v7, v1}, Ljavax/mail/search/RecipientStringTerm;-><init>(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    const-string v1, "CC"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :try_start_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/mail/search/RecipientStringTerm;

    sget-object v7, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-direct {v2, v7, v1}, Ljavax/mail/search/RecipientStringTerm;-><init>(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    const-string v1, "BCC"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :try_start_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/mail/search/RecipientStringTerm;

    sget-object v7, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-direct {v2, v7, v1}, Ljavax/mail/search/RecipientStringTerm;-><init>(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_8
    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :try_start_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljavax/mail/search/BodyTerm;

    invoke-direct {v2, v1}, Ljavax/mail/search/BodyTerm;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    const-string v1, "to"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :try_start_8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_11

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    new-instance v8, Ljavax/mail/search/FromStringTerm;

    invoke-direct {v8, v7}, Ljavax/mail/search/FromStringTerm;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Ljavax/mail/search/OrTerm;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/mail/search/SearchTerm;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/mail/search/SearchTerm;

    invoke-direct {p1, v1}, Ljavax/mail/search/OrTerm;-><init>([Ljavax/mail/search/SearchTerm;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_b

    :catch_9
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trem size is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Trem"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/search/SearchTerm;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/mail/search/SearchTerm;

    return-object p1

    :cond_13
    new-array p1, v3, [Ljavax/mail/search/SearchTerm;

    return-object p1
.end method


# virtual methods
.method public delete([J)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object p1

    new-instance v2, Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-direct {v2, v3}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return v3

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SparkChain"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getDetail(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1, p1, p2}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMsgDetail(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Message;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getMsg(J)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1, p1, p2}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v2, :cond_1

    invoke-static {p1, p2, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toMsg(JLcom/sun/mail/imap/IMAPMessage;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object p1

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    :try_start_9
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMsg failure: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SparkChain"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public load(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v1, v2, v3}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler;->nextUIDArray(Lcom/sun/mail/imap/IMAPFolder;J)[J

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object p1

    new-instance p2, Ljavax/mail/FetchProfile;

    invoke-direct {p2}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object v3, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v3}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    sget-object v3, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v3}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    invoke-virtual {v2, p1, p2}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    array-length p2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    aget-object v4, p1, v3

    check-cast v4, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMsgHead(JLcom/sun/mail/imap/IMAPMessage;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    const-string p2, "SparkChain"

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    monitor-exit p0

    return-object v0

    :goto_4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p1
.end method

.method public move(Ljava/lang/String;[J)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, p1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1, p2}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Lcom/sun/mail/imap/IMAPFolder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V

    new-instance v2, Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-direct {v2, v3}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_0

    :try_start_4
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_1
    return v3

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_4

    :try_start_b
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_c
    .catch Ljavax/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "move failure: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SparkChain"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public readStatus([JZ)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object p1

    new-instance v2, Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-direct {v2, v3}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    invoke-virtual {v1, p1, v2, p2}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "star failure: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SparkChain"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public save(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v1, v2, v3}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v3, p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->toMimeMessage(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Ljavax/mail/internet/MimeMessage;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljavax/mail/internet/MimeMessage;

    aput-object p1, v4, v0

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/IMAPFolder;->appendMessages([Ljavax/mail/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return v3

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save draft failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SparkChain"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public search(Lorg/json/JSONObject;IIZ)Ljava/util/List;
    .locals 5
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v1, v2, v3}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->parseTerm(Lorg/json/JSONObject;)[Ljavax/mail/search/SearchTerm;

    move-result-object p1

    array-length v3, p1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessages()[Ljavax/mail/Message;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v3, Ljavax/mail/search/AndTerm;

    invoke-direct {v3, p1}, Ljavax/mail/search/AndTerm;-><init>([Ljavax/mail/search/SearchTerm;)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1

    :goto_0
    array-length v3, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object v0

    :cond_3
    :try_start_5
    new-instance v3, Lcom/iflytek/sparkchain/plugins/mail/MailFolder$1;

    invoke-direct {v3, p0, p4}, Lcom/iflytek/sparkchain/plugins/mail/MailFolder$1;-><init>(Lcom/iflytek/sparkchain/plugins/mail/MailFolder;Z)V

    invoke-static {p1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p4, 0x0

    if-ge p2, p3, :cond_4

    array-length v3, p1

    if-gt p3, v3, :cond_4

    :goto_1
    sub-int/2addr p3, p2

    goto :goto_2

    :cond_4
    array-length v3, p1

    if-le p3, v3, :cond_5

    array-length p3, p1

    if-ge p2, p3, :cond_5

    array-length p3, p1

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_2
    if-lez p3, :cond_7

    new-array v3, p3, [Ljavax/mail/Message;

    :goto_3
    if-ge p4, p3, :cond_6

    add-int v4, p2, p4

    aget-object v4, p1, v4

    aput-object v4, v3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_6
    move-object p1, v3

    :cond_7
    new-instance p2, Ljavax/mail/FetchProfile;

    invoke-direct {p2}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object p3, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, p3}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    invoke-virtual {v2, p1, p2}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    invoke-static {v2, p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMsgHeads(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;)Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_9

    :try_start_a
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    throw p1
    :try_end_b
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "search email failure: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SparkChain"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    iget-object p2, p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;->authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    invoke-interface {p2, p3, p1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;->onFailure(ILjava/lang/String;)V

    :cond_a
    :goto_6
    return-object v0
.end method

.method public searchByFrom(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljavax/mail/search/FromStringTerm;

    invoke-direct {v2, p1}, Ljavax/mail/search/FromStringTerm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1

    new-instance v2, Ljavax/mail/FetchProfile;

    invoke-direct {v2}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object v3, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    invoke-virtual {v1, p1, v2}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    invoke-static {v1, p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMsgHeads(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchByFrom email failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SparkChain"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public searchBySubject(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljavax/mail/search/SubjectTerm;

    invoke-direct {v2, p1}, Ljavax/mail/search/SubjectTerm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1

    new-instance v2, Ljavax/mail/FetchProfile;

    invoke-direct {v2}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object v3, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    invoke-virtual {v1, p1, v2}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    invoke-static {v1, p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMsgHeads(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "star failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SparkChain"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public searchByTo(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljavax/mail/search/RecipientStringTerm;

    sget-object v3, Ljavax/mail/internet/MimeMessage$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {v2, v3, p1}, Ljavax/mail/search/RecipientStringTerm;-><init>(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1

    new-instance v2, Ljavax/mail/FetchProfile;

    invoke-direct {v2}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object v3, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    invoke-virtual {v1, p1, v2}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    invoke-static {v1, p1}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMsgHeads(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchByTo email failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SparkChain"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public searchContacts(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;->getInbox()Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP$Inbox;->searchByFrom(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    iget-object p1, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    iget-object p1, p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;->address:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public star([JZ)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object p1

    new-instance v2, Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-direct {v2, v3}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    invoke-virtual {v1, p1, v2, p2}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "star failure: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SparkChain"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public sync([J)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v1, p1}, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler;->syncUIDArray(Lcom/sun/mail/imap/IMAPFolder;[J)Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;

    move-result-object p1

    iget-object v2, p1, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;->newArray:[J

    iget-object p1, p1, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;->delArray:[J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    const/4 v6, 0x0

    if-lez v5, :cond_1

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object v2

    new-instance v5, Ljavax/mail/FetchProfile;

    invoke-direct {v5}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object v7, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v5, v7}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    sget-object v7, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v5, v7}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    invoke-virtual {v1, v2, v5}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    array-length v5, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v2, v7

    check-cast v8, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1, v8}, Lcom/sun/mail/imap/IMAPFolder;->getUID(Ljavax/mail/Message;)J

    move-result-wide v9

    invoke-static {v9, v10, v8}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getMsgHead(JLcom/sun/mail/imap/IMAPMessage;)Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p1

    :goto_1
    if-ge v6, v2, :cond_2

    aget-wide v7, p1, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    const-string v0, "SparkChain"

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p1
.end method

.method public totalCount()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessageCount()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SparkChain"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public unreadCount()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getStore(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPStore;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/MailFolder;->config:Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;

    invoke-static {v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/mail/JMailTools;->getFolder(Lcom/sun/mail/imap/IMAPStore;Ljava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->getUnreadMessageCount()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreadCount failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SparkChain"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
