.class Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->c(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v1, 0x7f0702c9

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v2, 0x7f0708ae

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "RES_ID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0703af

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2$1;-><init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;)V

    const v2, 0x104000a

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1
.end method
