.class Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/nirenr/talkman/settings/HotKeySetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->c(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v3, 0x7f0702f3

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v4, 0x7f0701ba

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RES_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
