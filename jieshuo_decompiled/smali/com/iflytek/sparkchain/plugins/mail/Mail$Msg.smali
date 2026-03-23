.class public Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/mail/Mail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Msg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;",
            ">;"
        }
    .end annotation
.end field

.field public flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

.field public from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

.field public mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

.field public sentDate:J

.field public subject:Ljava/lang/String;

.field public toList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;",
            ">;"
        }
    .end annotation
.end field

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$1;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$1;-><init>()V

    sput-object v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;Ljava/util/List;Ljava/util/List;Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;",
            ">;",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    iput-wide p3, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    iput-object p5, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    iput-object p7, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    iput-object p8, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toList:Ljava/util/List;

    iput-object p9, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->ccList:Ljava/util/List;

    iput-object p10, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    const-class v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    const-class v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toList:Ljava/util/List;

    const-class v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->ccList:Ljava/util/List;

    const-class v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    const-class v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    const-class v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    const-class v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toList:Ljava/util/List;

    const-class v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->ccList:Ljava/util/List;

    const-class v1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    const-class v0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "uid"

    :try_start_0
    iget-wide v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "sentDate"

    :try_start_1
    iget-wide v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "subject"

    :try_start_2
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "flags"

    :try_start_3
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    invoke-virtual {v2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "from"

    :try_start_4
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    invoke-virtual {v2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "mainBody"

    :try_start_5
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    invoke-virtual {v2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$To;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "toList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->ccList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;

    invoke-virtual {v3}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Cc;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v2, "ccList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->sentDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->flags:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$Flags;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->from:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$From;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->ccList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->mainBody:Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg$MainBody;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
