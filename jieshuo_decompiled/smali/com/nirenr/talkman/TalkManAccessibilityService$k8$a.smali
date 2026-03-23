.class Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$k8;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$k8;J)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;

    iput-wide p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-wide v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->a:J

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "date"

    const-string v10, "duration"

    const-string v11, "type"

    filled-new-array {v10, v11, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneState"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-wide/32 v0, 0xea60

    const-string v4, "GTM+0"

    cmp-long v5, v2, v0

    if-gez v5, :cond_5

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$k8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0701d7

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_3

    :cond_5
    const-wide/32 v0, 0x36ee80

    cmp-long v5, v2, v0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$k8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-gez v5, :cond_6

    const v5, 0x7f0701d6

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const v5, 0x7f0701d5

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$k8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k8$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$k8;

    iget-object v5, v5, Lcom/nirenr/talkman/TalkManAccessibilityService$k8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f07007b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void
.end method
