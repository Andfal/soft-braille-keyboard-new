.class Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/androlua/Download$OnDownloadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string p2, "onDownloadComplete"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    const-string v4, "application/vnd.android.package-archive"

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/androlua/LuaApplication;->getUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p1, 0x1a

    if-lt v1, p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/nirenr/talkman/settings/a;->a(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/nirenr/talkman/settings/MainTtsSetting;->a(Landroid/content/Intent;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f070394

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u8bf7\u7528\u6587\u4ef6\u7ba1\u7406\u5668\u6253\u5f00 download/\u8baf\u98de.apk \u5b89\u88c5"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method
