.class public Lcom/nirenr/talkman/settings/MainTtsSetting;
.super Landroid/app/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;
    }
.end annotation


# static fields
.field private static a:Lcom/nirenr/talkman/settings/MainTtsSetting;

.field private static b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Landroid/content/Intent;)V
    .locals 0

    sput-object p0, Lcom/nirenr/talkman/settings/MainTtsSetting;->b:Landroid/content/Intent;

    return-void
.end method

.method public static recreat()V
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/settings/MainTtsSetting;->a:Lcom/nirenr/talkman/settings/MainTtsSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/nirenr/talkman/settings/MainTtsSetting;->b:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sput-object p2, Lcom/nirenr/talkman/settings/MainTtsSetting;->b:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "onDownloadComplete"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f070394

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p3, "\u8bf7\u7528\u6587\u4ef6\u7ba1\u7406\u5668\u6253\u5f00 download/\u8baf\u98de.apk \u5b89\u88c5"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0706a2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    sput-object p0, Lcom/nirenr/talkman/settings/MainTtsSetting;->a:Lcom/nirenr/talkman/settings/MainTtsSetting;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-direct {v0}, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;-><init>()V

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/talkman/settings/MainTtsSetting;->a:Lcom/nirenr/talkman/settings/MainTtsSetting;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
