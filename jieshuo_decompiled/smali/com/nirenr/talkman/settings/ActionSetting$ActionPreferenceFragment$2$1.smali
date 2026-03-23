.class Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2$1;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/nirenr/talkman/settings/ActionSetting;->setsReCreate()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2$1;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const p2, 0x7f0701ba

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2$1;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0702c9

    invoke-static {p2, v0, p1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2$1;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2$1;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RES_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
