.class public Lcom/nirenr/talkman/OCRActivity;
.super Landroid/app/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# instance fields
.field private a:Lcom/nirenr/talkman/ai/h;

.field private b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7f0703df

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/OCRActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance p1, Lcom/nirenr/talkman/ai/h;

    iget-object v0, p0, Lcom/nirenr/talkman/OCRActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, v0}, Lcom/nirenr/talkman/ai/h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iput-object p1, p0, Lcom/nirenr/talkman/OCRActivity;->a:Lcom/nirenr/talkman/ai/h;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    :goto_0
    move-object v4, p1

    :goto_1
    const p1, 0x7f07038d

    if-eqz v4, :cond_6

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/OCRActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/nirenr/talkman/ai/h;->w([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/OCRActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    invoke-static {v2, p0}, Lcom/nirenr/talkman/ai/h;->v(Ljava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/nirenr/talkman/OCRActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070554

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/OCRActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getStringList()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/OCRActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070554

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseListActivity;->onResume()V

    return-void
.end method
