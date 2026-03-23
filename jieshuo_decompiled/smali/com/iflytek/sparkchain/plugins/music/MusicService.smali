.class public Lcom/iflytek/sparkchain/plugins/music/MusicService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method public static b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/iflytek/sparkchain/plugins/music/MusicService;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_SELECTION_START_INT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v2, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x20

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SparkChain"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netease.cloudmusic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.netease.cloudmusic:id/searchBar"

    const-string v0, ""

    invoke-static {p0, p1, v0, v0}, Lcom/iflytek/sparkchain/plugins/music/a;->a(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/iflytek/sparkchain/plugins/music/MusicService;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0

    :cond_2
    const-string p1, "searchBar not found"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "com.netease.cloudmusic:id/search_src_text"

    invoke-static {p0, p1, v0, v0}, Lcom/iflytek/sparkchain/plugins/music/a;->a(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/plugins/music/MusicService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v1, "com.netease.cloudmusic:id/toSearch"

    invoke-static {p0, v1, v0, v0}, Lcom/iflytek/sparkchain/plugins/music/a;->a(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/iflytek/sparkchain/plugins/music/MusicService;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v3, 0xbb8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "com.netease.cloudmusic:id/actionView"

    invoke-static {p0, v3, v0, v0}, Lcom/iflytek/sparkchain/plugins/music/a;->a(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/iflytek/sparkchain/plugins/music/MusicService;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_1

    :cond_3
    const-string v0, "playAll not found"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_2

    :cond_5
    const-string v0, "toSearch not found"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_3

    :cond_6
    const-string p1, "searchSrcText not found"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public onInterrupt()V
    .locals 2

    const-string v0, "SparkChain"

    const-string v1, "MusicService Interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    const-string v0, "SparkChain"

    const-string v1, "MusicService Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
