.class public Lcom/nirenr/screencapture/ScreenCaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    invoke-static {v0}, Le2/a;->m(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenCaptureActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u8bf7\u6c42\u5c4f\u5e55\u622a\u56fe\u6743\u9650\u51fa\u9519"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    invoke-static {v1}, Le2/a;->m(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Le2/a;->m(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Le2/a;->m(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/nirenr/screencapture/ScreenCaptureActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p2, "\u672a\u83b7\u5f97\u5c4f\u5e55\u622a\u56fe\u6743\u9650"

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenCaptureActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    const-string v0, "\u8bf7\u6388\u4e88\u6743\u9650"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenCaptureActivity;->a()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenCaptureActivity;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method
