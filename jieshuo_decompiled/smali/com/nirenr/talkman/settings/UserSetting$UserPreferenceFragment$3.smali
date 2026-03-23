.class Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$3;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$3;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "https://www.paypal.me/jieshuo666"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$3$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$3$1;-><init>(Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$3;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
